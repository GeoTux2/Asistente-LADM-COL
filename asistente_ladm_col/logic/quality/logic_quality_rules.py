# -*- coding: utf-8 -*-
"""
/***************************************************************************
                              Asistente LADM_COL
                             --------------------
        begin                : 2020-03-06
        git sha              : :%H$
        copyright            : (C) 2020 by Leo Cardona (BSF Swissphoto)
                               (C) 2020 by Germán Carrillo (BSF Swissphoto)
        email                : leo.cardona.p@gmail.com
                               gcarrillo@linuxmail.org
 ***************************************************************************/
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License v3.0 as          *
 *   published by the Free Software Foundation.                            *
 *                                                                         *
 ***************************************************************************/
 """
from qgis.core import (Qgis,
                       QgsGeometry,
                       QgsVectorLayer,
                       QgsVectorLayerUtils)
from qgis.PyQt.QtCore import QCoreApplication

from asistente_ladm_col.config.config_db_supported import ConfigDBsSupported
from asistente_ladm_col.config.quality_rules_config import (QUALITY_RULE_ERROR_CODE_E400101,
                                                            QUALITY_RULE_ERROR_CODE_E400102,
                                                            QUALITY_RULE_ERROR_CODE_E400301,
                                                            QUALITY_RULE_ERROR_CODE_E400401,
                                                            QUALITY_RULE_ERROR_CODE_E400501,
                                                            QUALITY_RULE_ERROR_CODE_E400601,
                                                            QUALITY_RULE_ERROR_CODE_E400701,
                                                            QUALITY_RULE_ERROR_CODE_E400801,
                                                            QUALITY_RULE_ERROR_CODE_E400802,
                                                            QUALITY_RULE_ERROR_CODE_E400803,
                                                            QUALITY_RULE_ERROR_CODE_E400804,
                                                            QUALITY_RULE_ERROR_CODE_E400901,
                                                            QUALITY_RULE_ERROR_CODE_E400902,
                                                            QUALITY_RULE_ERROR_CODE_E400903,
                                                            QUALITY_RULE_ERROR_CODE_E400904,
                                                            QUALITY_RULE_ERROR_CODE_E401001,
                                                            QUALITY_RULE_ERROR_CODE_E401002,
                                                            QUALITY_RULE_ERROR_CODE_E401003,
                                                            QUALITY_RULE_ERROR_CODE_E401004,
                                                            QUALITY_RULE_ERROR_CODE_E401005,
                                                            QUALITY_RULE_ERROR_CODE_E401006,
                                                            QUALITY_RULE_ERROR_CODE_E401007,
                                                            QUALITY_RULE_ERROR_CODE_E401008,
                                                            QUALITY_RULE_ERROR_CODE_E401101,
                                                            QUALITY_RULE_ERROR_CODE_E401102,
                                                            QUALITY_RULE_ERROR_CODE_E401103,
                                                            QUALITY_RULE_ERROR_CODE_E401104,
                                                            QUALITY_RULE_ERROR_CODE_E401105,
                                                            QUALITY_RULE_ERROR_CODE_E401106,
                                                            QUALITY_RULE_ERROR_CODE_E401107,
                                                            QUALITY_RULE_ERROR_CODE_E401108,
                                                            QUALITY_RULE_ERROR_CODE_E401109,
                                                            QUALITY_RULE_ERROR_CODE_E401110,
                                                            QUALITY_RULE_ERROR_CODE_E401111)
from asistente_ladm_col.config.enums import EnumQualityRule
from asistente_ladm_col.config.ladm_names import LADMNames
from asistente_ladm_col.lib.logger import Logger
from asistente_ladm_col.lib.quality_rule.quality_rule_manager import QualityRuleManager
from asistente_ladm_col.utils.utils import get_uuid_dict


class LogicQualityRules:
    def __init__(self, qgis_utils):
        self.quality_rules_manager = QualityRuleManager()
        self.qgis_utils = qgis_utils
        self.logger = Logger()
        self._ladm_queries = dict()

    def get_ladm_queries(self, engine):
        if engine not in self._ladm_queries:
            self._ladm_queries[engine] = ConfigDBsSupported().get_db_factory(engine).get_ladm_queries(self.qgis_utils)

        return self._ladm_queries[engine]

    def check_parcel_right_relationship(self, db):
        rule = self.quality_rules_manager.get_quality_rule(EnumQualityRule.Logic.PARCEL_RIGHT_RELATIONSHIP)
        error_layer = None
        error_layer_exist = False
        group = self.qgis_utils.get_error_layers_group()
        layers = group.findLayers()
        for layer in layers:
            if layer.name() == rule.error_table_name:
                error_layer = layer.layer()
                error_layer_exist = True
                break

        if error_layer is None:
            error_layer = QgsVectorLayer("NoGeometry", rule.error_table_name, "memory")
            pr = error_layer.dataProvider()
            pr.addAttributes(rule.error_table_fields)
            error_layer.updateFields()

        new_features = list()
        res, records = self.get_ladm_queries(db.engine).get_parcels_with_no_right(db)
        if res:
            for record in records:
                new_feature = QgsVectorLayerUtils().createFeature(error_layer,
                                                                  QgsGeometry(),
                                                                  {0: record[db.names.T_ILI_TID_F],
                                                                   1: self.quality_rules_manager.get_error_message(QUALITY_RULE_ERROR_CODE_E400102),
                                                                   2: QUALITY_RULE_ERROR_CODE_E400102})
                new_features.append(new_feature)

        res, records = self.get_ladm_queries(db.engine).get_parcels_with_repeated_domain_right(db)
        if res:
            for record in records:
                new_feature = QgsVectorLayerUtils().createFeature(error_layer,
                                                                  QgsGeometry(),
                                                                  {0: record[db.names.T_ILI_TID_F],
                                                                   1: self.quality_rules_manager.get_error_message(QUALITY_RULE_ERROR_CODE_E400101),
                                                                   2: QUALITY_RULE_ERROR_CODE_E400101})
                new_features.append(new_feature)

        error_layer.dataProvider().addFeatures(new_features)
        return self.return_message(db, new_features, rule.error_table_name, error_layer, error_layer_exist)

    def check_duplicate_records_in_a_table(self, db, table, fields, rule_code):
        rule = self.quality_rules_manager.get_quality_rule(rule_code)
        error_layer = QgsVectorLayer("NoGeometry", rule.error_table_name, "memory")
        pr = error_layer.dataProvider()
        pr.addAttributes(rule.error_table_fields)
        error_layer.updateFields()
        res, records = self.get_ladm_queries(db.engine).get_duplicate_records_in_table(db, table, fields)

        error_code = rule.error_codes[0]  # Each non-duplicate-records rule has a single and different error code
        if res:
            new_features = list()
            for record in records:
                new_feature = QgsVectorLayerUtils().createFeature(error_layer,
                                                                  QgsGeometry(),
                                                                  {0: record['duplicate_uuids'],
                                                                   1: record['duplicate_total'],
                                                                   2: self.quality_rules_manager.get_error_message(error_code),
                                                                   3: error_code})
                new_features.append(new_feature)
            error_layer.dataProvider().addFeatures(new_features)
        else:
            self.logger.error_msg(__name__, "Error executing query for rule check duplicate records in a table: {}".format(records))

        return self.return_message(db, new_features, rule.error_table_name, error_layer, False)

    def check_group_party_fractions_that_do_not_add_one(self, db):
        rule = self.quality_rules_manager.get_quality_rule(EnumQualityRule.Logic.FRACTION_SUM_FOR_PARTY_GROUPS)
        layers = {
            db.names.MEMBERS_T: None,
            db.names.OP_GROUP_PARTY_T: None
        }

        self.qgis_utils.get_layers(db, layers, load=False)
        if not layers:
            return QCoreApplication.translate("LogicQualityRules", "At least one required layer (members, group party) was not found!"), Qgis.Critical

        dict_uuid_members = get_uuid_dict(layers[db.names.MEMBERS_T], db.names, db.names.T_ID_F)
        dict_uuid_group_party = get_uuid_dict(layers[db.names.OP_GROUP_PARTY_T], db.names, db.names.T_ID_F)

        error_layer = QgsVectorLayer("NoGeometry", rule.error_table_name, "memory")
        pr = error_layer.dataProvider()
        pr.addAttributes(rule.error_table_fields)
        error_layer.updateFields()

        res, records = self.get_ladm_queries(db.engine).get_group_party_fractions_that_do_not_make_one(db)

        if res:
            new_features = list()
            for record in records:
                new_feature = QgsVectorLayerUtils().createFeature(error_layer,
                                                                  QgsGeometry(),
                                                                  {0: dict_uuid_group_party.get(record['agrupacion']),  # Fields alias was defined in the sql query
                                                                   1: ",".join([str(dict_uuid_members.get(int(t_id))) for t_id in record['miembros'].split(',')]),
                                                                   2: record['suma_fracciones'],
                                                                   3: self.quality_rules_manager.get_error_message(QUALITY_RULE_ERROR_CODE_E400301),
                                                                   4: QUALITY_RULE_ERROR_CODE_E400301})
                new_features.append(new_feature)
            error_layer.dataProvider().addFeatures(new_features)
        else:
            self.logger.error_msg(__name__, "Error executing query for rule {}: {}".format(rule.rule_name, records))

        return self.return_message(db, new_features, rule.error_table_name, error_layer, False)

    def check_parcels_with_invalid_department_code(self, db):
        rule = self.quality_rules_manager.get_quality_rule(EnumQualityRule.Logic.DEPARTMENT_CODE_HAS_TWO_NUMERICAL_CHARACTERS)
        res, records = self.get_ladm_queries(db.engine).get_parcels_with_invalid_department_code(db)
        if res:
            return self.basic_logic_validations(db, records, rule, QUALITY_RULE_ERROR_CODE_E400401)

    def check_parcels_with_invalid_municipality_code(self, db):
        rule = self.quality_rules_manager.get_quality_rule(EnumQualityRule.Logic.MUNICIPALITY_CODE_HAS_THREE_NUMERICAL_CHARACTERS)
        res, records = self.get_ladm_queries(db.engine).get_parcels_with_invalid_municipality_code(db)
        if res:
            return self.basic_logic_validations(db, records, rule, QUALITY_RULE_ERROR_CODE_E400501)

    def check_parcels_with_invalid_parcel_number(self, db):
        rule = self.quality_rules_manager.get_quality_rule(EnumQualityRule.Logic.PARCEL_NUMBER_HAS_30_NUMERICAL_CHARACTERS)
        res, records = self.get_ladm_queries(db.engine).get_parcels_with_invalid_parcel_number(db)
        if res:
            return self.basic_logic_validations(db, records, rule, QUALITY_RULE_ERROR_CODE_E400601)

    def check_parcels_with_invalid_previous_parcel_number(self, db):
        rule = self.quality_rules_manager.get_quality_rule(EnumQualityRule.Logic.PARCEL_NUMBER_BEFORE_HAS_20_NUMERICAL_CHARACTERS)
        res, records = self.get_ladm_queries(db.engine).get_parcels_with_invalid_previous_parcel_number(db)
        if res:
            return self.basic_logic_validations(db, records, rule, QUALITY_RULE_ERROR_CODE_E400701)

    def check_invalid_col_party_type_natural(self, db):
        rule = self.quality_rules_manager.get_quality_rule(EnumQualityRule.Logic.COL_PARTY_NATURAL_TYPE)
        error_layer = None
        error_layer_exist = False

        group = self.qgis_utils.get_error_layers_group()  # Check if error layer exist
        layers = group.findLayers()  # Check if layer is loaded
        for layer in layers:
            if layer.name() == rule.error_table_name:
                error_layer = layer.layer()
                error_layer_exist = True
                break

        if error_layer is None:
            error_layer = QgsVectorLayer("NoGeometry", rule.error_table_name, "memory")
            pr = error_layer.dataProvider()
            pr.addAttributes(rule.error_table_fields)
            error_layer.updateFields()

        res, records = self.get_ladm_queries(db.engine).get_invalid_col_party_type_natural(db)

        if res:
            new_features = list()
            for record in records:
                if record[db.names.OP_PARTY_T_BUSINESS_NAME_F] > 0:
                    new_feature = QgsVectorLayerUtils().createFeature(error_layer, QgsGeometry(),
                              {0: record[db.names.T_ILI_TID_F],
                               1: self.quality_rules_manager.get_error_message(QUALITY_RULE_ERROR_CODE_E400801),
                               2: QUALITY_RULE_ERROR_CODE_E400801})
                    new_features.append(new_feature)
                if record[db.names.OP_PARTY_T_SURNAME_1_F] > 0:
                    new_feature = QgsVectorLayerUtils().createFeature(error_layer, QgsGeometry(),
                              {0: record[db.names.T_ILI_TID_F],
                               1: self.quality_rules_manager.get_error_message(QUALITY_RULE_ERROR_CODE_E400802),
                               2: QUALITY_RULE_ERROR_CODE_E400802})
                    new_features.append(new_feature)
                if record[db.names.OP_PARTY_T_FIRST_NAME_1_F] > 0:
                    new_feature = QgsVectorLayerUtils().createFeature(error_layer, QgsGeometry(),
                              {0: record[db.names.T_ILI_TID_F],
                               1: self.quality_rules_manager.get_error_message(QUALITY_RULE_ERROR_CODE_E400803),
                               2: QUALITY_RULE_ERROR_CODE_E400803})
                    new_features.append(new_feature)
                if record[db.names.OP_PARTY_T_DOCUMENT_TYPE_F] > 0:
                    new_feature = QgsVectorLayerUtils().createFeature(error_layer, QgsGeometry(),
                              {0: record[db.names.T_ILI_TID_F],
                               1: self.quality_rules_manager.get_error_message(QUALITY_RULE_ERROR_CODE_E400804),
                               2: QUALITY_RULE_ERROR_CODE_E400804})
                    new_features.append(new_feature)
            error_layer.dataProvider().addFeatures(new_features)
        else:
            self.logger.error_msg(__name__, "Error executing query for rule {}: {}".format(rule.rule_name, records))

        return self.return_message(db, new_features, rule.rule_name, error_layer, error_layer_exist)

    def check_invalid_col_party_type_no_natural(self, db):
        rule = self.quality_rules_manager.get_quality_rule(EnumQualityRule.Logic.COL_PARTY_NOT_NATURAL_TYPE)
        error_layer = None
        error_layer_exist = False

        group = self.qgis_utils.get_error_layers_group()  # Check if error layer exist
        layers = group.findLayers()  # Check if layer is loaded
        for layer in layers:
            if layer.name() == rule.error_table_name:
                error_layer = layer.layer()
                error_layer_exist = True
                break

        if error_layer is None:
            error_layer = QgsVectorLayer("NoGeometry", rule.error_table_name, "memory")
            pr = error_layer.dataProvider()
            pr.addAttributes(rule.error_table_fields)
            error_layer.updateFields()

        res, records = self.get_ladm_queries(db.engine).get_invalid_col_party_type_no_natural(db)

        new_features = list()
        if res:
            for record in records:
                if record[db.names.OP_PARTY_T_BUSINESS_NAME_F] > 0:
                    new_feature = QgsVectorLayerUtils().createFeature(error_layer, QgsGeometry(),
                                      {0: record[db.names.T_ILI_TID_F],
                                       1: self.quality_rules_manager.get_error_message(QUALITY_RULE_ERROR_CODE_E400901),
                                       2: QUALITY_RULE_ERROR_CODE_E400901})
                    new_features.append(new_feature)
                if record[db.names.OP_PARTY_T_SURNAME_1_F] > 0:
                    new_feature = QgsVectorLayerUtils().createFeature(error_layer, QgsGeometry(),
                                      {0: record[db.names.T_ILI_TID_F],
                                       1: self.quality_rules_manager.get_error_message(QUALITY_RULE_ERROR_CODE_E400902),
                                       2: QUALITY_RULE_ERROR_CODE_E400902})
                    new_features.append(new_feature)
                if record[db.names.OP_PARTY_T_FIRST_NAME_1_F] > 0:
                    new_feature = QgsVectorLayerUtils().createFeature(error_layer, QgsGeometry(),
                                      {0: record[db.names.T_ILI_TID_F],
                                       1: self.quality_rules_manager.get_error_message(QUALITY_RULE_ERROR_CODE_E400903),
                                       2: QUALITY_RULE_ERROR_CODE_E400903})
                    new_features.append(new_feature)
                if record[db.names.OP_PARTY_T_DOCUMENT_TYPE_F] > 0:
                    new_feature = QgsVectorLayerUtils().createFeature(error_layer, QgsGeometry(),
                                      {0: record[db.names.T_ILI_TID_F],
                                       1: self.quality_rules_manager.get_error_message(QUALITY_RULE_ERROR_CODE_E400904),
                                       2: QUALITY_RULE_ERROR_CODE_E400904})
                    new_features.append(new_feature)
            error_layer.dataProvider().addFeatures(new_features)
        else:
            self.logger.error_msg(__name__, "Error executing query for rule {}: {}".format(rule.rule_name, records))

        return self.return_message(db, new_features, rule.rule_name, error_layer, error_layer_exist)

    def check_parcels_with_invalid_parcel_type_and_22_position_number(self, db):
        rule = self.quality_rules_manager.get_quality_rule(EnumQualityRule.Logic.PARCEL_TYPE_AND_22_POSITION_OF_PARCEL_NUMBER)
        error_layer = None
        error_layer_exist = False

        group = self.qgis_utils.get_error_layers_group()
        layers = group.findLayers()
        for layer in layers:
            if layer.name() == rule.error_table_name:
                error_layer = layer.layer()
                error_layer_exist = True
                break

        if error_layer is None:
            error_layer = QgsVectorLayer("NoGeometry", rule.error_table_name, "memory")
            pr = error_layer.dataProvider()
            pr.addAttributes(rule.error_table_fields)
            error_layer.updateFields()

        res, records = self.get_ladm_queries(db.engine).get_parcels_with_invalid_parcel_type_and_22_position_number(db)

        new_features = list()
        if res:
            for record in records:
                error_code = None
                if record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_NO_HORIZONTAL_PROPERTY:
                    error_code = QUALITY_RULE_ERROR_CODE_E401005
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] in (LADMNames.PARCEL_TYPE_HORIZONTAL_PROPERTY_PARENT, LADMNames.PARCEL_TYPE_HORIZONTAL_PROPERTY_PARCEL_UNIT):
                    error_code = QUALITY_RULE_ERROR_CODE_E401007
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] in (LADMNames.PARCEL_TYPE_CONDOMINIUM_PARENT, LADMNames.PARCEL_TYPE_CONDOMINIUM_PARCEL_UNIT):
                    error_code = QUALITY_RULE_ERROR_CODE_E401002
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] in (LADMNames.PARCEL_TYPE_CEMETERY_PARENT, LADMNames.PARCEL_TYPE_CEMETERY_PARCEL_UNIT):
                    error_code = QUALITY_RULE_ERROR_CODE_E401006
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_HORIZONTAL_PROPERTY_MEJORA:
                    error_code = QUALITY_RULE_ERROR_CODE_E401004
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_NO_HORIZONTAL_PROPERTY_MEJORA:
                    error_code = QUALITY_RULE_ERROR_CODE_E401003
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_ROAD:
                    error_code = QUALITY_RULE_ERROR_CODE_E401008
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_PUBLIC_USE:
                    error_code = QUALITY_RULE_ERROR_CODE_E401001

                new_feature = QgsVectorLayerUtils().createFeature(error_layer,
                                  QgsGeometry(),
                                  {0: record[db.names.T_ILI_TID_F],
                                   1: self.quality_rules_manager.get_error_message(error_code),
                                   2: error_code})
                new_features.append(new_feature)

            error_layer.dataProvider().addFeatures(new_features)
        else:
            self.logger.error_msg(__name__, "Error executing query for rule {}: {}".format(rule.rule_name, records))

        return self.return_message(db, new_features, rule.rule_name, error_layer, error_layer_exist)

    def check_uebaunit_parcel(self, db):
        rule = self.quality_rules_manager.get_quality_rule(EnumQualityRule.Logic.UEBAUNIT_PARCEL)
        error_layer = None
        error_layer_exist = False

        group = self.qgis_utils.get_error_layers_group()
        layers = group.findLayers()
        for layer in layers:
            if layer.name() == rule.error_table_name:
                error_layer = layer.layer()
                error_layer_exist = True
                break

        if error_layer is None:
            error_layer = QgsVectorLayer("NoGeometry", rule.error_table_name, "memory")
            pr = error_layer.dataProvider()
            pr.addAttributes(rule.error_table_fields)
            error_layer.updateFields()

        res, records = self.get_ladm_queries(db.engine).get_uebaunit_parcel(db)

        new_features = list()
        if res:
            for record in records:
                plot_count = record['sum_t']  # count of plots associated to the parcel
                building_count = record['sum_c']  # count of buildings associated to the parcel
                building_unit_count = record['sum_uc']  # count of building units associated to the parcel

                if record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_NO_HORIZONTAL_PROPERTY:
                    error_code = QUALITY_RULE_ERROR_CODE_E401111
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_HORIZONTAL_PROPERTY_PARENT:
                    error_code = QUALITY_RULE_ERROR_CODE_E401108
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_CONDOMINIUM_PARENT:
                    error_code = QUALITY_RULE_ERROR_CODE_E401102
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_CEMETERY_PARENT:
                    error_code = QUALITY_RULE_ERROR_CODE_E401106
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_PUBLIC_USE:
                    error_code = QUALITY_RULE_ERROR_CODE_E401101
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_CONDOMINIUM_PARCEL_UNIT:
                    error_code = QUALITY_RULE_ERROR_CODE_E401103
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_ROAD:
                    error_code = QUALITY_RULE_ERROR_CODE_E401110
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_CEMETERY_PARCEL_UNIT:
                    error_code = QUALITY_RULE_ERROR_CODE_E401107
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_HORIZONTAL_PROPERTY_PARCEL_UNIT:
                    error_code = QUALITY_RULE_ERROR_CODE_E401109
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_HORIZONTAL_PROPERTY_MEJORA:
                    error_code = QUALITY_RULE_ERROR_CODE_E401105
                elif record[db.names.OP_PARCEL_T_PARCEL_TYPE_F] == LADMNames.PARCEL_TYPE_NO_HORIZONTAL_PROPERTY_MEJORA:
                    error_code = QUALITY_RULE_ERROR_CODE_E401104

                new_feature = QgsVectorLayerUtils().createFeature(error_layer,
                                  QgsGeometry(),
                                  {0: record[db.names.T_ILI_TID_F],
                                   1: plot_count,
                                   2: building_count,
                                   3: building_unit_count,
                                   4: self.quality_rules_manager.get_error_message(error_code),
                                   5: error_code})
                new_features.append(new_feature)

            error_layer.dataProvider().addFeatures(new_features)
        else:
            self.logger.error_msg(__name__, "Error executing query for rule {}: {}".format(rule.rule_name, records))

        return self.return_message(db, new_features, rule.rule_name, error_layer, error_layer_exist)

    # UTILS METHODS
    def basic_logic_validations(self, db, records, rule, error_code):
        """
        Create an error table with the errors found

        :param db: db connection
        :param records: Result of execute the query
        :param rule: Quality rule config
                     (Contains info like table_name: Error table name and
                      rule_name: Rule error description (Name of rule to show in log quality rules)).
                      Note: rule_name is used by _log_quality_rules decorator
        """
        error_layer = None
        error_layer_exist = False

        # Check if error layer exist
        group = self.qgis_utils.get_error_layers_group()

        # Check if layer is loaded
        layers = group.findLayers()
        for layer in layers:
            if layer.name() == rule.error_table_name:
                error_layer = layer.layer()
                error_layer_exist = True
                break

        if error_layer_exist is False:
            error_layer = QgsVectorLayer("NoGeometry", rule.error_table_name, "memory")
            pr = error_layer.dataProvider()
            pr.addAttributes(rule.error_table_fields)
            error_layer.updateFields()

        new_features = []
        for record in records:
            new_feature = QgsVectorLayerUtils().createFeature(error_layer,
                                                              QgsGeometry(),
                                                              {0: record[db.names.T_ILI_TID_F],
                                                               1: self.quality_rules_manager.get_error_message(error_code),
                                                               2: error_code})
            new_features.append(new_feature)
        error_layer.dataProvider().addFeatures(new_features)

        return self.return_message(db, new_features, rule.rule_name, error_layer, error_layer_exist)

    def return_message(self, db, new_features, rule_name, error_layer, error_layer_exist):
        if len(new_features) > 0:
            if not error_layer_exist:
                self.qgis_utils.add_error_layer(db, error_layer)
            return (QCoreApplication.translate("LogicQualityRules",
                                               "A memory layer with {error_count} errors has been added to the map after checking the '{rule_name}' logic consistency rule.").format(error_count=len(new_features), rule_name=rule_name),
                    Qgis.Critical)
        else:
            return (QCoreApplication.translate("LogicQualityRules",
                                               "No errors were found checking the '{rule_name}' logic consistency rule!").format(rule_name=rule_name),
                    Qgis.Success)