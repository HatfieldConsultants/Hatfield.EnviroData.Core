
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/02/2016 11:20:43
-- Generated from EDMX file: E:\GitHub\Hatfield.EnviroData.Core\Source\Hatfield.EnviroData.Core\ODM2Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ODM2];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[ODM2].[fk_ActionAnnotations_Actions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ActionAnnotations] DROP CONSTRAINT [fk_ActionAnnotations_Actions];
GO
IF OBJECT_ID(N'[ODM2].[fk_ActionAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ActionAnnotations] DROP CONSTRAINT [fk_ActionAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_ActionDirectives_Actions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ActionDirectives] DROP CONSTRAINT [fk_ActionDirectives_Actions];
GO
IF OBJECT_ID(N'[ODM2].[fk_ActionDirectives_Directives]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ActionDirectives] DROP CONSTRAINT [fk_ActionDirectives_Directives];
GO
IF OBJECT_ID(N'[ODM2].[fk_ActionExtensionPropertyValues_Actions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ActionExtensionPropertyValues] DROP CONSTRAINT [fk_ActionExtensionPropertyValues_Actions];
GO
IF OBJECT_ID(N'[ODM2].[fk_ActionExtensionPropertyValues_ExtensionProperties]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ActionExtensionPropertyValues] DROP CONSTRAINT [fk_ActionExtensionPropertyValues_ExtensionProperties];
GO
IF OBJECT_ID(N'[ODM2].[fk_ActionPeople_Actions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ActionBy] DROP CONSTRAINT [fk_ActionPeople_Actions];
GO
IF OBJECT_ID(N'[ODM2].[fk_ActionPeople_Affiliations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ActionBy] DROP CONSTRAINT [fk_ActionPeople_Affiliations];
GO
IF OBJECT_ID(N'[ODM2].[fk_Actions_CV_ActionType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Actions] DROP CONSTRAINT [fk_Actions_CV_ActionType];
GO
IF OBJECT_ID(N'[ODM2].[fk_Actions_Methods]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Actions] DROP CONSTRAINT [fk_Actions_Methods];
GO
IF OBJECT_ID(N'[ODM2].[fk_Affiliations_Organizations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Affiliations] DROP CONSTRAINT [fk_Affiliations_Organizations];
GO
IF OBJECT_ID(N'[ODM2].[fk_Affiliations_People]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Affiliations] DROP CONSTRAINT [fk_Affiliations_People];
GO
IF OBJECT_ID(N'[ODM2].[fk_Annotations_Citations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Annotations] DROP CONSTRAINT [fk_Annotations_Citations];
GO
IF OBJECT_ID(N'[ODM2].[fk_Annotations_CV_AnnotationType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Annotations] DROP CONSTRAINT [fk_Annotations_CV_AnnotationType];
GO
IF OBJECT_ID(N'[ODM2].[fk_Annotations_People]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Annotations] DROP CONSTRAINT [fk_Annotations_People];
GO
IF OBJECT_ID(N'[ODM2].[fk_AuthorLists_Citations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[AuthorLists] DROP CONSTRAINT [fk_AuthorLists_Citations];
GO
IF OBJECT_ID(N'[ODM2].[fk_AuthorLists_People]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[AuthorLists] DROP CONSTRAINT [fk_AuthorLists_People];
GO
IF OBJECT_ID(N'[ODM2].[fk_CalibrationActions_Actions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CalibrationActions] DROP CONSTRAINT [fk_CalibrationActions_Actions];
GO
IF OBJECT_ID(N'[ODM2].[fk_CalibrationActions_InstrumentOutputVariables]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CalibrationActions] DROP CONSTRAINT [fk_CalibrationActions_InstrumentOutputVariables];
GO
IF OBJECT_ID(N'[ODM2].[fk_CalibrationReferenceEquipment_CalibrationActions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CalibrationReferenceEquipment] DROP CONSTRAINT [fk_CalibrationReferenceEquipment_CalibrationActions];
GO
IF OBJECT_ID(N'[ODM2].[fk_CalibrationReferenceEquipment_Equipment]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CalibrationReferenceEquipment] DROP CONSTRAINT [fk_CalibrationReferenceEquipment_Equipment];
GO
IF OBJECT_ID(N'[ODM2].[fk_CalibrationStandards_CalibrationActions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CalibrationStandards] DROP CONSTRAINT [fk_CalibrationStandards_CalibrationActions];
GO
IF OBJECT_ID(N'[ODM2].[fk_CategoricalResults_CV_QualityCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CategoricalResults] DROP CONSTRAINT [fk_CategoricalResults_CV_QualityCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_CategoricalResults_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CategoricalResults] DROP CONSTRAINT [fk_CategoricalResults_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_CategoricalResults_SpatialReferences]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CategoricalResults] DROP CONSTRAINT [fk_CategoricalResults_SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[fk_CategoricalResultValueAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CategoricalResultValueAnnotations] DROP CONSTRAINT [fk_CategoricalResultValueAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_CategoricalResultValueAnnotations_CategoricalResultValues]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CategoricalResultValueAnnotations] DROP CONSTRAINT [fk_CategoricalResultValueAnnotations_CategoricalResultValues];
GO
IF OBJECT_ID(N'[ODM2].[fk_CategoricalResultValues_CategoricalResults]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CategoricalResultValues] DROP CONSTRAINT [fk_CategoricalResultValues_CategoricalResults];
GO
IF OBJECT_ID(N'[ODM2].[fk_CitationExtensionPropertyValues_Citations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CitationExtensionPropertyValues] DROP CONSTRAINT [fk_CitationExtensionPropertyValues_Citations];
GO
IF OBJECT_ID(N'[ODM2].[fk_CitationExtensionPropertyValues_ExtensionProperties]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CitationExtensionPropertyValues] DROP CONSTRAINT [fk_CitationExtensionPropertyValues_ExtensionProperties];
GO
IF OBJECT_ID(N'[ODM2].[fk_CitationExternalIdentifiers_Citations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CitationExternalIdentifiers] DROP CONSTRAINT [fk_CitationExternalIdentifiers_Citations];
GO
IF OBJECT_ID(N'[ODM2].[fk_CitationExternalIdentifiers_ExternalIdentifierSystems]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CitationExternalIdentifiers] DROP CONSTRAINT [fk_CitationExternalIdentifiers_ExternalIdentifierSystems];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataloggerFileColumns_CV_AggregationStatistic]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DataloggerFileColumns] DROP CONSTRAINT [fk_DataloggerFileColumns_CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataloggerFileColumns_DataLoggerFiles]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DataloggerFileColumns] DROP CONSTRAINT [fk_DataloggerFileColumns_DataLoggerFiles];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataloggerFileColumns_InstrumentOutputVariables]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DataloggerFileColumns] DROP CONSTRAINT [fk_DataloggerFileColumns_InstrumentOutputVariables];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataloggerFileColumns_RecordingUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DataloggerFileColumns] DROP CONSTRAINT [fk_DataloggerFileColumns_RecordingUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataloggerFileColumns_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DataloggerFileColumns] DROP CONSTRAINT [fk_DataloggerFileColumns_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataloggerFileColumns_ScanUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DataloggerFileColumns] DROP CONSTRAINT [fk_DataloggerFileColumns_ScanUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataLoggerFiles_DataloggerProgramFiles]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DataLoggerFiles] DROP CONSTRAINT [fk_DataLoggerFiles_DataloggerProgramFiles];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataloggerProgramFiles_Affiliations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DataloggerProgramFiles] DROP CONSTRAINT [fk_DataloggerProgramFiles_Affiliations];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataQuality_CV_DataQualityType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DataQuality] DROP CONSTRAINT [fk_DataQuality_CV_DataQualityType];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataQuality_Units]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DataQuality] DROP CONSTRAINT [fk_DataQuality_Units];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataSetCitations_Citations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DatasetCitations] DROP CONSTRAINT [fk_DataSetCitations_Citations];
GO
IF OBJECT_ID(N'[ODM2].[fk_DatasetCitations_CV_RelationshipType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DatasetCitations] DROP CONSTRAINT [fk_DatasetCitations_CV_RelationshipType];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataSetCitations_DataSets]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DatasetCitations] DROP CONSTRAINT [fk_DataSetCitations_DataSets];
GO
IF OBJECT_ID(N'[ODM2].[fk_Datasets_CV_DatasetTypeCV]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Datasets] DROP CONSTRAINT [fk_Datasets_CV_DatasetTypeCV];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataSetsResults_DataSets]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DatasetsResults] DROP CONSTRAINT [fk_DataSetsResults_DataSets];
GO
IF OBJECT_ID(N'[ODM2].[fk_DataSetsResults_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[DatasetsResults] DROP CONSTRAINT [fk_DataSetsResults_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_Directives_CV_DirectiveType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Directives] DROP CONSTRAINT [fk_Directives_CV_DirectiveType];
GO
IF OBJECT_ID(N'[ODM2].[fk_Equipment_CV_EquipmentType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Equipment] DROP CONSTRAINT [fk_Equipment_CV_EquipmentType];
GO
IF OBJECT_ID(N'[ODM2].[fk_Equipment_EquipmentModels]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Equipment] DROP CONSTRAINT [fk_Equipment_EquipmentModels];
GO
IF OBJECT_ID(N'[ODM2].[fk_Equipment_Organizations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Equipment] DROP CONSTRAINT [fk_Equipment_Organizations];
GO
IF OBJECT_ID(N'[ODM2].[fk_Equipment_People]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Equipment] DROP CONSTRAINT [fk_Equipment_People];
GO
IF OBJECT_ID(N'[ODM2].[fk_EquipmentActions_Actions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[EquipmentUsed] DROP CONSTRAINT [fk_EquipmentActions_Actions];
GO
IF OBJECT_ID(N'[ODM2].[fk_EquipmentActions_Equipment]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[EquipmentUsed] DROP CONSTRAINT [fk_EquipmentActions_Equipment];
GO
IF OBJECT_ID(N'[ODM2].[fk_EquipmentAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[EquipmentAnnotations] DROP CONSTRAINT [fk_EquipmentAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_EquipmentAnnotations_Equipment]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[EquipmentAnnotations] DROP CONSTRAINT [fk_EquipmentAnnotations_Equipment];
GO
IF OBJECT_ID(N'[ODM2].[fk_EquipmentModels_Organizations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[EquipmentModels] DROP CONSTRAINT [fk_EquipmentModels_Organizations];
GO
IF OBJECT_ID(N'[ODM2].[fk_ExtensionProperties_CV_PropertyDataType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ExtensionProperties] DROP CONSTRAINT [fk_ExtensionProperties_CV_PropertyDataType];
GO
IF OBJECT_ID(N'[ODM2].[fk_ExtensionProperties_Units]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ExtensionProperties] DROP CONSTRAINT [fk_ExtensionProperties_Units];
GO
IF OBJECT_ID(N'[ODM2].[fk_ExternalIdentifierSystems_Organizations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ExternalIdentifierSystems] DROP CONSTRAINT [fk_ExternalIdentifierSystems_Organizations];
GO
IF OBJECT_ID(N'[ODM2].[fk_FeatureActions_Actions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[FeatureActions] DROP CONSTRAINT [fk_FeatureActions_Actions];
GO
IF OBJECT_ID(N'[ODM2].[fk_FeatureActions_SamplingFeatures]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[FeatureActions] DROP CONSTRAINT [fk_FeatureActions_SamplingFeatures];
GO
IF OBJECT_ID(N'[ODM2].[fk_FeatureParents_FeaturesParent]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedFeatures] DROP CONSTRAINT [fk_FeatureParents_FeaturesParent];
GO
IF OBJECT_ID(N'[ODM2].[fk_FeatureParents_SamplingFeatures]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedFeatures] DROP CONSTRAINT [fk_FeatureParents_SamplingFeatures];
GO
IF OBJECT_ID(N'[ODM2].[fk_FeatureParents_SpatialOffsets]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedFeatures] DROP CONSTRAINT [fk_FeatureParents_SpatialOffsets];
GO
IF OBJECT_ID(N'[ODM2].[fk_FieldCalibrationStandards_ReferenceMaterials]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[CalibrationStandards] DROP CONSTRAINT [fk_FieldCalibrationStandards_ReferenceMaterials];
GO
IF OBJECT_ID(N'[ODM2].[fk_InstrumentOutputVariables_EquipmentModels]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[InstrumentOutputVariables] DROP CONSTRAINT [fk_InstrumentOutputVariables_EquipmentModels];
GO
IF OBJECT_ID(N'[ODM2].[fk_InstrumentOutputVariables_Methods]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[InstrumentOutputVariables] DROP CONSTRAINT [fk_InstrumentOutputVariables_Methods];
GO
IF OBJECT_ID(N'[ODM2].[fk_InstrumentOutputVariables_Units]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[InstrumentOutputVariables] DROP CONSTRAINT [fk_InstrumentOutputVariables_Units];
GO
IF OBJECT_ID(N'[ODM2].[fk_InstrumentOutputVariables_Variables]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[InstrumentOutputVariables] DROP CONSTRAINT [fk_InstrumentOutputVariables_Variables];
GO
IF OBJECT_ID(N'[ODM2].[fk_MaintenanceActions_Actions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MaintenanceActions] DROP CONSTRAINT [fk_MaintenanceActions_Actions];
GO
IF OBJECT_ID(N'[ODM2].[fk_MeasurementResults_AIUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResults] DROP CONSTRAINT [fk_MeasurementResults_AIUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_MeasurementResults_CV_AggregationStatistic]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResults] DROP CONSTRAINT [fk_MeasurementResults_CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[fk_MeasurementResults_CV_CensorCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResults] DROP CONSTRAINT [fk_MeasurementResults_CV_CensorCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_MeasurementResults_CV_QualityCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResults] DROP CONSTRAINT [fk_MeasurementResults_CV_QualityCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_MeasurementResults_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResults] DROP CONSTRAINT [fk_MeasurementResults_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_MeasurementResults_SpatialReferences]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResults] DROP CONSTRAINT [fk_MeasurementResults_SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[fk_MeasurementResults_XUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResults] DROP CONSTRAINT [fk_MeasurementResults_XUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_MeasurementResults_YUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResults] DROP CONSTRAINT [fk_MeasurementResults_YUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_MeasurementResults_ZUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResults] DROP CONSTRAINT [fk_MeasurementResults_ZUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_MeasurementResultValueAnnotations_MeasurementResultValues]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResultValueAnnotations] DROP CONSTRAINT [fk_MeasurementResultValueAnnotations_MeasurementResultValues];
GO
IF OBJECT_ID(N'[ODM2].[fk_MeasurementResultValues_MeasurementResults]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResultValues] DROP CONSTRAINT [fk_MeasurementResultValues_MeasurementResults];
GO
IF OBJECT_ID(N'[ODM2].[fk_MethodAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MethodAnnotations] DROP CONSTRAINT [fk_MethodAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_MethodAnnotations_Methods]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MethodAnnotations] DROP CONSTRAINT [fk_MethodAnnotations_Methods];
GO
IF OBJECT_ID(N'[ODM2].[fk_MethodCitations_Citations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MethodCitations] DROP CONSTRAINT [fk_MethodCitations_Citations];
GO
IF OBJECT_ID(N'[ODM2].[fk_MethodCitations_CV_RelationshipType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MethodCitations] DROP CONSTRAINT [fk_MethodCitations_CV_RelationshipType];
GO
IF OBJECT_ID(N'[ODM2].[fk_MethodCitations_Methods]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MethodCitations] DROP CONSTRAINT [fk_MethodCitations_Methods];
GO
IF OBJECT_ID(N'[ODM2].[fk_MethodExtensionPropertyValues_ExtensionProperties]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MethodExtensionPropertyValues] DROP CONSTRAINT [fk_MethodExtensionPropertyValues_ExtensionProperties];
GO
IF OBJECT_ID(N'[ODM2].[fk_MethodExtensionPropertyValues_Methods]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MethodExtensionPropertyValues] DROP CONSTRAINT [fk_MethodExtensionPropertyValues_Methods];
GO
IF OBJECT_ID(N'[ODM2].[fk_MethodExternalIdentifiers_ExternalIdentifierSystems]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MethodExternalIdentifiers] DROP CONSTRAINT [fk_MethodExternalIdentifiers_ExternalIdentifierSystems];
GO
IF OBJECT_ID(N'[ODM2].[fk_MethodExternalIdentifiers_Methods]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MethodExternalIdentifiers] DROP CONSTRAINT [fk_MethodExternalIdentifiers_Methods];
GO
IF OBJECT_ID(N'[ODM2].[fk_Methods_CV_MethodType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Methods] DROP CONSTRAINT [fk_Methods_CV_MethodType];
GO
IF OBJECT_ID(N'[ODM2].[fk_Methods_Organizations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Methods] DROP CONSTRAINT [fk_Methods_Organizations];
GO
IF OBJECT_ID(N'[ODM2].[fk_ModelAffiliations_Affiliations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ModelAffiliations] DROP CONSTRAINT [fk_ModelAffiliations_Affiliations];
GO
IF OBJECT_ID(N'[ODM2].[fk_ModelAffiliations_Models]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ModelAffiliations] DROP CONSTRAINT [fk_ModelAffiliations_Models];
GO
IF OBJECT_ID(N'[ODM2].[fk_Organizations_CV_OrganizationType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Organizations] DROP CONSTRAINT [fk_Organizations_CV_OrganizationType];
GO
IF OBJECT_ID(N'[ODM2].[fk_Organizations_Organizations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Organizations] DROP CONSTRAINT [fk_Organizations_Organizations];
GO
IF OBJECT_ID(N'[ODM2].[fk_ParentTaxon_Taxon]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TaxonomicClassifiers] DROP CONSTRAINT [fk_ParentTaxon_Taxon];
GO
IF OBJECT_ID(N'[ODM2].[fk_PersonExternalIdentifiers_ExternalIdentifierSystems]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PersonExternalIdentifiers] DROP CONSTRAINT [fk_PersonExternalIdentifiers_ExternalIdentifierSystems];
GO
IF OBJECT_ID(N'[ODM2].[fk_PersonExternalIdentifiers_People]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PersonExternalIdentifiers] DROP CONSTRAINT [fk_PersonExternalIdentifiers_People];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResults_CV_AggregationStatistic]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResults] DROP CONSTRAINT [fk_PointCoverageResults_CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResults_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResults] DROP CONSTRAINT [fk_PointCoverageResults_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResults_SpatialReferences]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResults] DROP CONSTRAINT [fk_PointCoverageResults_SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResults_XUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResults] DROP CONSTRAINT [fk_PointCoverageResults_XUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResults_YUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResults] DROP CONSTRAINT [fk_PointCoverageResults_YUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResults_ZUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResults] DROP CONSTRAINT [fk_PointCoverageResults_ZUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResultValueAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResultValueAnnotations] DROP CONSTRAINT [fk_PointCoverageResultValueAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResultValueAnnotations_PointCoverageResultValues]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResultValueAnnotations] DROP CONSTRAINT [fk_PointCoverageResultValueAnnotations_PointCoverageResultValues];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResultValues_CV_CensorCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResultValues] DROP CONSTRAINT [fk_PointCoverageResultValues_CV_CensorCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResultValues_CV_QualityCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResultValues] DROP CONSTRAINT [fk_PointCoverageResultValues_CV_QualityCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResultValues_PointCoverageResults]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResultValues] DROP CONSTRAINT [fk_PointCoverageResultValues_PointCoverageResults];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResultValues_XUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResultValues] DROP CONSTRAINT [fk_PointCoverageResultValues_XUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_PointCoverageResultValues_YUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[PointCoverageResultValues] DROP CONSTRAINT [fk_PointCoverageResultValues_YUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResults_CV_AggregationStatistic]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResults] DROP CONSTRAINT [fk_ProfileResults_CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResults_DUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResults] DROP CONSTRAINT [fk_ProfileResults_DUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResults_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResults] DROP CONSTRAINT [fk_ProfileResults_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResults_SpatialReferences]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResults] DROP CONSTRAINT [fk_ProfileResults_SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResults_TUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResults] DROP CONSTRAINT [fk_ProfileResults_TUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResults_XUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResults] DROP CONSTRAINT [fk_ProfileResults_XUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResults_YUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResults] DROP CONSTRAINT [fk_ProfileResults_YUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResultValueAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResultValueAnnotations] DROP CONSTRAINT [fk_ProfileResultValueAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResultValueAnnotations_ProfileResultValues]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResultValueAnnotations] DROP CONSTRAINT [fk_ProfileResultValueAnnotations_ProfileResultValues];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResultValues_AIUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResultValues] DROP CONSTRAINT [fk_ProfileResultValues_AIUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResultValues_CV_CensorCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResultValues] DROP CONSTRAINT [fk_ProfileResultValues_CV_CensorCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResultValues_CV_QualityCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResultValues] DROP CONSTRAINT [fk_ProfileResultValues_CV_QualityCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResultValues_DUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResultValues] DROP CONSTRAINT [fk_ProfileResultValues_DUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_ProfileResultValues_ProfileResults]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ProfileResultValues] DROP CONSTRAINT [fk_ProfileResultValues_ProfileResults];
GO
IF OBJECT_ID(N'[ODM2].[fk_ReferenceMaterials_CV_ReferenceMaterialMedium]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ReferenceMaterials] DROP CONSTRAINT [fk_ReferenceMaterials_CV_ReferenceMaterialMedium];
GO
IF OBJECT_ID(N'[ODM2].[fk_ReferenceMaterials_Organizations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ReferenceMaterials] DROP CONSTRAINT [fk_ReferenceMaterials_Organizations];
GO
IF OBJECT_ID(N'[ODM2].[fk_ReferenceMaterials_SamplingFeatures]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ReferenceMaterials] DROP CONSTRAINT [fk_ReferenceMaterials_SamplingFeatures];
GO
IF OBJECT_ID(N'[ODM2].[fk_ReferenceMaterialValues_Citations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ReferenceMaterialValues] DROP CONSTRAINT [fk_ReferenceMaterialValues_Citations];
GO
IF OBJECT_ID(N'[ODM2].[fk_ReferenceMaterialValues_ReferenceMaterials]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ReferenceMaterialValues] DROP CONSTRAINT [fk_ReferenceMaterialValues_ReferenceMaterials];
GO
IF OBJECT_ID(N'[ODM2].[fk_ReferenceMaterialValues_Units]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ReferenceMaterialValues] DROP CONSTRAINT [fk_ReferenceMaterialValues_Units];
GO
IF OBJECT_ID(N'[ODM2].[fk_ReferenceMaterialValues_Variables]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ReferenceMaterialValues] DROP CONSTRAINT [fk_ReferenceMaterialValues_Variables];
GO
IF OBJECT_ID(N'[ODM2].[fk_RefMaterialExtIdentifiers_ExtIdentifierSystems]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ReferenceMaterialExternalIdentifiers] DROP CONSTRAINT [fk_RefMaterialExtIdentifiers_ExtIdentifierSystems];
GO
IF OBJECT_ID(N'[ODM2].[fk_RefMaterialExtIdentifiers_RefMaterials]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ReferenceMaterialExternalIdentifiers] DROP CONSTRAINT [fk_RefMaterialExtIdentifiers_RefMaterials];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedActions_Actions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedActions] DROP CONSTRAINT [fk_RelatedActions_Actions];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedActions_Actions_AreRelated]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedActions] DROP CONSTRAINT [fk_RelatedActions_Actions_AreRelated];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedActions_CV_RelationshipType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedActions] DROP CONSTRAINT [fk_RelatedActions_CV_RelationshipType];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedAnnotations] DROP CONSTRAINT [fk_RelatedAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedAnnotations_Annotations_AreRelated]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedAnnotations] DROP CONSTRAINT [fk_RelatedAnnotations_Annotations_AreRelated];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedAnnotations_CV_RelationshipType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedAnnotations] DROP CONSTRAINT [fk_RelatedAnnotations_CV_RelationshipType];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedCitations_Citations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedCitations] DROP CONSTRAINT [fk_RelatedCitations_Citations];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedCitations_Citations_AreRelated]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedCitations] DROP CONSTRAINT [fk_RelatedCitations_Citations_AreRelated];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedCitations_CV_RelationshipType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedCitations] DROP CONSTRAINT [fk_RelatedCitations_CV_RelationshipType];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedDatasets_CV_RelationshipType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedDatasets] DROP CONSTRAINT [fk_RelatedDatasets_CV_RelationshipType];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedDatasets_DataSets]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedDatasets] DROP CONSTRAINT [fk_RelatedDatasets_DataSets];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedDatasets_DataSets_AreRelated]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedDatasets] DROP CONSTRAINT [fk_RelatedDatasets_DataSets_AreRelated];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedEquipment_CV_RelationshipType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedEquipment] DROP CONSTRAINT [fk_RelatedEquipment_CV_RelationshipType];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedEquipment_Equipment]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedEquipment] DROP CONSTRAINT [fk_RelatedEquipment_Equipment];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedEquipment_Equipment_AreRelated]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedEquipment] DROP CONSTRAINT [fk_RelatedEquipment_Equipment_AreRelated];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedFeatures_CV_RelationshipType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedFeatures] DROP CONSTRAINT [fk_RelatedFeatures_CV_RelationshipType];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedModels_CV_RelationshipType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedModels] DROP CONSTRAINT [fk_RelatedModels_CV_RelationshipType];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedModels_Models]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedModels] DROP CONSTRAINT [fk_RelatedModels_Models];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedResults_CV_RelationshipType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedResults] DROP CONSTRAINT [fk_RelatedResults_CV_RelationshipType];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedResults_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedResults] DROP CONSTRAINT [fk_RelatedResults_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_RelatedResults_Results_AreRelated]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[RelatedResults] DROP CONSTRAINT [fk_RelatedResults_Results_AreRelated];
GO
IF OBJECT_ID(N'[ODM2].[fk_ResultAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ResultAnnotations] DROP CONSTRAINT [fk_ResultAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_ResultAnnotations_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ResultAnnotations] DROP CONSTRAINT [fk_ResultAnnotations_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_ResultDerivationEquations_DerivationEquations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ResultDerivationEquations] DROP CONSTRAINT [fk_ResultDerivationEquations_DerivationEquations];
GO
IF OBJECT_ID(N'[ODM2].[fk_ResultDerivationEquations_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ResultDerivationEquations] DROP CONSTRAINT [fk_ResultDerivationEquations_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_ResultExtensionPropertyValues_ExtensionProperties]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ResultExtensionPropertyValues] DROP CONSTRAINT [fk_ResultExtensionPropertyValues_ExtensionProperties];
GO
IF OBJECT_ID(N'[ODM2].[fk_ResultExtensionPropertyValues_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ResultExtensionPropertyValues] DROP CONSTRAINT [fk_ResultExtensionPropertyValues_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_ResultNormalizationValues_ReferenceMaterialValues]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ResultNormalizationValues] DROP CONSTRAINT [fk_ResultNormalizationValues_ReferenceMaterialValues];
GO
IF OBJECT_ID(N'[ODM2].[fk_ResultNormalizationValues_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ResultNormalizationValues] DROP CONSTRAINT [fk_ResultNormalizationValues_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_Results_CV_ResultType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Results] DROP CONSTRAINT [fk_Results_CV_ResultType];
GO
IF OBJECT_ID(N'[ODM2].[fk_Results_CV_SampledMedium]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Results] DROP CONSTRAINT [fk_Results_CV_SampledMedium];
GO
IF OBJECT_ID(N'[ODM2].[fk_Results_CV_Status]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Results] DROP CONSTRAINT [fk_Results_CV_Status];
GO
IF OBJECT_ID(N'[ODM2].[fk_Results_FeatureActions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Results] DROP CONSTRAINT [fk_Results_FeatureActions];
GO
IF OBJECT_ID(N'[ODM2].[fk_Results_ProcessingLevels]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Results] DROP CONSTRAINT [fk_Results_ProcessingLevels];
GO
IF OBJECT_ID(N'[ODM2].[fk_Results_TaxonomicClassifiers]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Results] DROP CONSTRAINT [fk_Results_TaxonomicClassifiers];
GO
IF OBJECT_ID(N'[ODM2].[fk_Results_Units]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Results] DROP CONSTRAINT [fk_Results_Units];
GO
IF OBJECT_ID(N'[ODM2].[fk_Results_Variables]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Results] DROP CONSTRAINT [fk_Results_Variables];
GO
IF OBJECT_ID(N'[ODM2].[fk_ResultsDataQuality_DataQuality]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ResultsDataQuality] DROP CONSTRAINT [fk_ResultsDataQuality_DataQuality];
GO
IF OBJECT_ID(N'[ODM2].[fk_ResultsDataQuality_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[ResultsDataQuality] DROP CONSTRAINT [fk_ResultsDataQuality_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_ResultValueAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[MeasurementResultValueAnnotations] DROP CONSTRAINT [fk_ResultValueAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_SamplingFeatureAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SamplingFeatureAnnotations] DROP CONSTRAINT [fk_SamplingFeatureAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_SamplingFeatureAnnotations_SamplingFeatures]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SamplingFeatureAnnotations] DROP CONSTRAINT [fk_SamplingFeatureAnnotations_SamplingFeatures];
GO
IF OBJECT_ID(N'[ODM2].[fk_SamplingFeatureExtensionPropertyValues_ExtensionProperties]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SamplingFeatureExtensionPropertyValues] DROP CONSTRAINT [fk_SamplingFeatureExtensionPropertyValues_ExtensionProperties];
GO
IF OBJECT_ID(N'[ODM2].[fk_SamplingFeatureExtensionPropertyValues_SamplingFeatures]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SamplingFeatureExtensionPropertyValues] DROP CONSTRAINT [fk_SamplingFeatureExtensionPropertyValues_SamplingFeatures];
GO
IF OBJECT_ID(N'[ODM2].[fk_SamplingFeatureExternalIdentifiers_ExternalIdentifierSystems]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SamplingFeatureExternalIdentifiers] DROP CONSTRAINT [fk_SamplingFeatureExternalIdentifiers_ExternalIdentifierSystems];
GO
IF OBJECT_ID(N'[ODM2].[fk_SamplingFeatureExternalIdentifiers_SamplingFeatures]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SamplingFeatureExternalIdentifiers] DROP CONSTRAINT [fk_SamplingFeatureExternalIdentifiers_SamplingFeatures];
GO
IF OBJECT_ID(N'[ODM2].[fk_SamplingFeatures_CV_ElevationDatum]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SamplingFeatures] DROP CONSTRAINT [fk_SamplingFeatures_CV_ElevationDatum];
GO
IF OBJECT_ID(N'[ODM2].[fk_SamplingFeatures_CV_SamplingFeatureGeoType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SamplingFeatures] DROP CONSTRAINT [fk_SamplingFeatures_CV_SamplingFeatureGeoType];
GO
IF OBJECT_ID(N'[ODM2].[fk_SamplingFeatures_CV_SamplingFeatureType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SamplingFeatures] DROP CONSTRAINT [fk_SamplingFeatures_CV_SamplingFeatureType];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResults_CV_AggregationStatistic]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResults] DROP CONSTRAINT [fk_SectionResults_CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResults_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResults] DROP CONSTRAINT [fk_SectionResults_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResults_SpatialReferences]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResults] DROP CONSTRAINT [fk_SectionResults_SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResults_TMUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResults] DROP CONSTRAINT [fk_SectionResults_TMUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResults_Units]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResults] DROP CONSTRAINT [fk_SectionResults_Units];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResults_XUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResults] DROP CONSTRAINT [fk_SectionResults_XUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResults_ZUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResults] DROP CONSTRAINT [fk_SectionResults_ZUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResultValueAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResultValueAnnotations] DROP CONSTRAINT [fk_SectionResultValueAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResultValueAnnotations_SectionResultValues]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResultValueAnnotations] DROP CONSTRAINT [fk_SectionResultValueAnnotations_SectionResultValues];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResultValues_AIUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResultValues] DROP CONSTRAINT [fk_SectionResultValues_AIUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResultValues_CV_AggregationStatistic]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResultValues] DROP CONSTRAINT [fk_SectionResultValues_CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResultValues_CV_CensorCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResultValues] DROP CONSTRAINT [fk_SectionResultValues_CV_CensorCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResultValues_CV_QualityCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResultValues] DROP CONSTRAINT [fk_SectionResultValues_CV_QualityCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResultValues_SectionResults]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResultValues] DROP CONSTRAINT [fk_SectionResultValues_SectionResults];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResultValues_XUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResultValues] DROP CONSTRAINT [fk_SectionResultValues_XUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_SectionResultValues_ZUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SectionResultValues] DROP CONSTRAINT [fk_SectionResultValues_ZUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_Simulations_Actions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Simulations] DROP CONSTRAINT [fk_Simulations_Actions];
GO
IF OBJECT_ID(N'[ODM2].[fk_Simulations_Models]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Simulations] DROP CONSTRAINT [fk_Simulations_Models];
GO
IF OBJECT_ID(N'[ODM2].[fk_Sites_CV_SiteType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Sites] DROP CONSTRAINT [fk_Sites_CV_SiteType];
GO
IF OBJECT_ID(N'[ODM2].[fk_Sites_SamplingFeatures]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Sites] DROP CONSTRAINT [fk_Sites_SamplingFeatures];
GO
IF OBJECT_ID(N'[ODM2].[fk_Sites_SpatialReferences]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Sites] DROP CONSTRAINT [fk_Sites_SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpatialOffsets_CV_SpatialOffsetType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpatialOffsets] DROP CONSTRAINT [fk_SpatialOffsets_CV_SpatialOffsetType];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpatialOffsets_Offset1Units]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpatialOffsets] DROP CONSTRAINT [fk_SpatialOffsets_Offset1Units];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpatialOffsets_Offset2Units]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpatialOffsets] DROP CONSTRAINT [fk_SpatialOffsets_Offset2Units];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpatialOffsets_Offset3Units]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpatialOffsets] DROP CONSTRAINT [fk_SpatialOffsets_Offset3Units];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpatialReferenceExternalIdentifiers_ExternalIdentifierSystems]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpatialReferenceExternalIdentifiers] DROP CONSTRAINT [fk_SpatialReferenceExternalIdentifiers_ExternalIdentifierSystems];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpatialReferenceExternalIdentifiers_SpatialReferences]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpatialReferenceExternalIdentifiers] DROP CONSTRAINT [fk_SpatialReferenceExternalIdentifiers_SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpecimenBatchPostions_FeatureActions]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpecimenBatchPostions] DROP CONSTRAINT [fk_SpecimenBatchPostions_FeatureActions];
GO
IF OBJECT_ID(N'[ODM2].[fk_Specimens_CV_SpecimenMedium]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Specimens] DROP CONSTRAINT [fk_Specimens_CV_SpecimenMedium];
GO
IF OBJECT_ID(N'[ODM2].[fk_Specimens_CV_SpecimenType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Specimens] DROP CONSTRAINT [fk_Specimens_CV_SpecimenType];
GO
IF OBJECT_ID(N'[ODM2].[fk_Specimens_SamplingFeatures]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Specimens] DROP CONSTRAINT [fk_Specimens_SamplingFeatures];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpecimenTaxonomicClassifiers_Citations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpecimenTaxonomicClassifiers] DROP CONSTRAINT [fk_SpecimenTaxonomicClassifiers_Citations];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpecimenTaxonomicClassifiers_Specimens]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpecimenTaxonomicClassifiers] DROP CONSTRAINT [fk_SpecimenTaxonomicClassifiers_Specimens];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpecimenTaxonomicClassifiers_TaxonomicClassifiers]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpecimenTaxonomicClassifiers] DROP CONSTRAINT [fk_SpecimenTaxonomicClassifiers_TaxonomicClassifiers];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResults_CV_AggregationStatistic]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResults] DROP CONSTRAINT [fk_SpectraResults_CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResults_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResults] DROP CONSTRAINT [fk_SpectraResults_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResults_SpatialReferences]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResults] DROP CONSTRAINT [fk_SpectraResults_SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResults_Units]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResults] DROP CONSTRAINT [fk_SpectraResults_Units];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResults_XUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResults] DROP CONSTRAINT [fk_SpectraResults_XUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResults_YUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResults] DROP CONSTRAINT [fk_SpectraResults_YUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResults_ZUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResults] DROP CONSTRAINT [fk_SpectraResults_ZUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResultValueAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResultValueAnnotations] DROP CONSTRAINT [fk_SpectraResultValueAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResultValueAnnotations_SpectraResultValues]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResultValueAnnotations] DROP CONSTRAINT [fk_SpectraResultValueAnnotations_SpectraResultValues];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResultValues_AIUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResultValues] DROP CONSTRAINT [fk_SpectraResultValues_AIUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResultValues_CV_CensorCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResultValues] DROP CONSTRAINT [fk_SpectraResultValues_CV_CensorCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResultValues_CV_QualityCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResultValues] DROP CONSTRAINT [fk_SpectraResultValues_CV_QualityCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResultValues_SpectraResults]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResultValues] DROP CONSTRAINT [fk_SpectraResultValues_SpectraResults];
GO
IF OBJECT_ID(N'[ODM2].[fk_SpectraResultValues_WUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[SpectraResultValues] DROP CONSTRAINT [fk_SpectraResultValues_WUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TaxonomicClassifierExtIDs_ExtIDSystems]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TaxonomicClassifierExternalIdentifiers] DROP CONSTRAINT [fk_TaxonomicClassifierExtIDs_ExtIDSystems];
GO
IF OBJECT_ID(N'[ODM2].[fk_TaxonomicClassifierExtIDs_TaxonomicClassifiers]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TaxonomicClassifierExternalIdentifiers] DROP CONSTRAINT [fk_TaxonomicClassifierExtIDs_TaxonomicClassifiers];
GO
IF OBJECT_ID(N'[ODM2].[fk_TaxonomicClassifiers_CV_TaxonomicClassifierType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TaxonomicClassifiers] DROP CONSTRAINT [fk_TaxonomicClassifiers_CV_TaxonomicClassifierType];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResults_CV_AggregationStatistic]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResults] DROP CONSTRAINT [fk_TimeSeriesResults_CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResults_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResults] DROP CONSTRAINT [fk_TimeSeriesResults_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResults_SpatialReferences]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResults] DROP CONSTRAINT [fk_TimeSeriesResults_SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResults_TUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResults] DROP CONSTRAINT [fk_TimeSeriesResults_TUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResults_XUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResults] DROP CONSTRAINT [fk_TimeSeriesResults_XUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResults_YUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResults] DROP CONSTRAINT [fk_TimeSeriesResults_YUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResults_ZUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResults] DROP CONSTRAINT [fk_TimeSeriesResults_ZUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResultValueAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResultValueAnnotations] DROP CONSTRAINT [fk_TimeSeriesResultValueAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResultValueAnnotations_TimeSeriesResultValues]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResultValueAnnotations] DROP CONSTRAINT [fk_TimeSeriesResultValueAnnotations_TimeSeriesResultValues];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResultValues_AIUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResultValues] DROP CONSTRAINT [fk_TimeSeriesResultValues_AIUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResultValues_CV_CensorCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResultValues] DROP CONSTRAINT [fk_TimeSeriesResultValues_CV_CensorCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResultValues_CV_QualityCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResultValues] DROP CONSTRAINT [fk_TimeSeriesResultValues_CV_QualityCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_TimeSeriesResultValues_TimeSeriesResults]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TimeSeriesResultValues] DROP CONSTRAINT [fk_TimeSeriesResultValues_TimeSeriesResults];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResults_CV_AggregationStatistic]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResults] DROP CONSTRAINT [fk_TrajectoryResults_CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResults_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResults] DROP CONSTRAINT [fk_TrajectoryResults_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResults_SpatialReferences]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResults] DROP CONSTRAINT [fk_TrajectoryResults_SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResults_TSUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResults] DROP CONSTRAINT [fk_TrajectoryResults_TSUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResults_TUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResults] DROP CONSTRAINT [fk_TrajectoryResults_TUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResultValueAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResultValueAnnotations] DROP CONSTRAINT [fk_TrajectoryResultValueAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResultValueAnnotations_TrajectoryResultValues]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResultValueAnnotations] DROP CONSTRAINT [fk_TrajectoryResultValueAnnotations_TrajectoryResultValues];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResultValues_AIUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResultValues] DROP CONSTRAINT [fk_TrajectoryResultValues_AIUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResultValues_CV_CensorCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResultValues] DROP CONSTRAINT [fk_TrajectoryResultValues_CV_CensorCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResultValues_CV_QualityCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResultValues] DROP CONSTRAINT [fk_TrajectoryResultValues_CV_QualityCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResultValues_DistanceUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResultValues] DROP CONSTRAINT [fk_TrajectoryResultValues_DistanceUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResultValues_TrajectoryResults]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResultValues] DROP CONSTRAINT [fk_TrajectoryResultValues_TrajectoryResults];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResultValues_XUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResultValues] DROP CONSTRAINT [fk_TrajectoryResultValues_XUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResultValues_YUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResultValues] DROP CONSTRAINT [fk_TrajectoryResultValues_YUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TrajectoryResultValues_ZUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TrajectoryResultValues] DROP CONSTRAINT [fk_TrajectoryResultValues_ZUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResults_CV_AggregationStatistic]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResults] DROP CONSTRAINT [fk_TransectResults_CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResults_Results]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResults] DROP CONSTRAINT [fk_TransectResults_Results];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResults_SpatialReferences]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResults] DROP CONSTRAINT [fk_TransectResults_SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResults_TMUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResults] DROP CONSTRAINT [fk_TransectResults_TMUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResults_TSUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResults] DROP CONSTRAINT [fk_TransectResults_TSUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResults_Units]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResults] DROP CONSTRAINT [fk_TransectResults_Units];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResultValueAnnotations_Annotations]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResultValueAnnotations] DROP CONSTRAINT [fk_TransectResultValueAnnotations_Annotations];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResultValueAnnotations_TransectResultValues]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResultValueAnnotations] DROP CONSTRAINT [fk_TransectResultValueAnnotations_TransectResultValues];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResultValues_AIUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResultValues] DROP CONSTRAINT [fk_TransectResultValues_AIUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResultValues_CV_AggregationStatistic]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResultValues] DROP CONSTRAINT [fk_TransectResultValues_CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResultValues_CV_CensorCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResultValues] DROP CONSTRAINT [fk_TransectResultValues_CV_CensorCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResultValues_CV_QualityCode]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResultValues] DROP CONSTRAINT [fk_TransectResultValues_CV_QualityCode];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResultValues_DistanceUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResultValues] DROP CONSTRAINT [fk_TransectResultValues_DistanceUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResultValues_TransectResults]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResultValues] DROP CONSTRAINT [fk_TransectResultValues_TransectResults];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResultValues_XUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResultValues] DROP CONSTRAINT [fk_TransectResultValues_XUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_TransectResultValues_YUnits]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[TransectResultValues] DROP CONSTRAINT [fk_TransectResultValues_YUnits];
GO
IF OBJECT_ID(N'[ODM2].[fk_Units_CV_UnitsType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Units] DROP CONSTRAINT [fk_Units_CV_UnitsType];
GO
IF OBJECT_ID(N'[ODM2].[fk_VariableExtensionPropertyValues_ExtensionProperties]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[VariableExtensionPropertyValues] DROP CONSTRAINT [fk_VariableExtensionPropertyValues_ExtensionProperties];
GO
IF OBJECT_ID(N'[ODM2].[fk_VariableExtensionPropertyValues_Variables]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[VariableExtensionPropertyValues] DROP CONSTRAINT [fk_VariableExtensionPropertyValues_Variables];
GO
IF OBJECT_ID(N'[ODM2].[fk_VariableExternalIdentifiers_ExternalIdentifierSystems]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[VariableExternalIdentifiers] DROP CONSTRAINT [fk_VariableExternalIdentifiers_ExternalIdentifierSystems];
GO
IF OBJECT_ID(N'[ODM2].[fk_VariableExternalIdentifiers_Variables]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[VariableExternalIdentifiers] DROP CONSTRAINT [fk_VariableExternalIdentifiers_Variables];
GO
IF OBJECT_ID(N'[ODM2].[fk_Variables_CV_Speciation]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Variables] DROP CONSTRAINT [fk_Variables_CV_Speciation];
GO
IF OBJECT_ID(N'[ODM2].[fk_Variables_CV_VariableName]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Variables] DROP CONSTRAINT [fk_Variables_CV_VariableName];
GO
IF OBJECT_ID(N'[ODM2].[fk_Variables_CV_VariableType]', 'F') IS NOT NULL
    ALTER TABLE [ODM2].[Variables] DROP CONSTRAINT [fk_Variables_CV_VariableType];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[ODM2].[ActionAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ActionAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[ActionBy]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ActionBy];
GO
IF OBJECT_ID(N'[ODM2].[ActionDirectives]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ActionDirectives];
GO
IF OBJECT_ID(N'[ODM2].[ActionExtensionPropertyValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ActionExtensionPropertyValues];
GO
IF OBJECT_ID(N'[ODM2].[Actions]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Actions];
GO
IF OBJECT_ID(N'[ODM2].[Affiliations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Affiliations];
GO
IF OBJECT_ID(N'[ODM2].[Annotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Annotations];
GO
IF OBJECT_ID(N'[ODM2].[AuthorLists]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[AuthorLists];
GO
IF OBJECT_ID(N'[ODM2].[CalibrationActions]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CalibrationActions];
GO
IF OBJECT_ID(N'[ODM2].[CalibrationReferenceEquipment]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CalibrationReferenceEquipment];
GO
IF OBJECT_ID(N'[ODM2].[CalibrationStandards]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CalibrationStandards];
GO
IF OBJECT_ID(N'[ODM2].[CategoricalResults]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CategoricalResults];
GO
IF OBJECT_ID(N'[ODM2].[CategoricalResultValueAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CategoricalResultValueAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[CategoricalResultValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CategoricalResultValues];
GO
IF OBJECT_ID(N'[ODM2].[CitationExtensionPropertyValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CitationExtensionPropertyValues];
GO
IF OBJECT_ID(N'[ODM2].[CitationExternalIdentifiers]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CitationExternalIdentifiers];
GO
IF OBJECT_ID(N'[ODM2].[Citations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Citations];
GO
IF OBJECT_ID(N'[ODM2].[CV_ActionType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_ActionType];
GO
IF OBJECT_ID(N'[ODM2].[CV_AggregationStatistic]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_AggregationStatistic];
GO
IF OBJECT_ID(N'[ODM2].[CV_AnnotationType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_AnnotationType];
GO
IF OBJECT_ID(N'[ODM2].[CV_CensorCode]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_CensorCode];
GO
IF OBJECT_ID(N'[ODM2].[CV_DataQualityType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_DataQualityType];
GO
IF OBJECT_ID(N'[ODM2].[CV_DatasetTypeCV]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_DatasetTypeCV];
GO
IF OBJECT_ID(N'[ODM2].[CV_DirectiveType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_DirectiveType];
GO
IF OBJECT_ID(N'[ODM2].[CV_ElevationDatum]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_ElevationDatum];
GO
IF OBJECT_ID(N'[ODM2].[CV_EquipmentType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_EquipmentType];
GO
IF OBJECT_ID(N'[ODM2].[CV_MethodType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_MethodType];
GO
IF OBJECT_ID(N'[ODM2].[CV_OrganizationType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_OrganizationType];
GO
IF OBJECT_ID(N'[ODM2].[CV_PropertyDataType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_PropertyDataType];
GO
IF OBJECT_ID(N'[ODM2].[CV_QualityCode]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_QualityCode];
GO
IF OBJECT_ID(N'[ODM2].[CV_ReferenceMaterialMedium]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_ReferenceMaterialMedium];
GO
IF OBJECT_ID(N'[ODM2].[CV_RelationshipType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_RelationshipType];
GO
IF OBJECT_ID(N'[ODM2].[CV_ResultType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_ResultType];
GO
IF OBJECT_ID(N'[ODM2].[CV_SampledMedium]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_SampledMedium];
GO
IF OBJECT_ID(N'[ODM2].[CV_SamplingFeatureGeoType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_SamplingFeatureGeoType];
GO
IF OBJECT_ID(N'[ODM2].[CV_SamplingFeatureType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_SamplingFeatureType];
GO
IF OBJECT_ID(N'[ODM2].[CV_SiteType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_SiteType];
GO
IF OBJECT_ID(N'[ODM2].[CV_SpatialOffsetType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_SpatialOffsetType];
GO
IF OBJECT_ID(N'[ODM2].[CV_Speciation]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_Speciation];
GO
IF OBJECT_ID(N'[ODM2].[CV_SpecimenMedium]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_SpecimenMedium];
GO
IF OBJECT_ID(N'[ODM2].[CV_SpecimenType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_SpecimenType];
GO
IF OBJECT_ID(N'[ODM2].[CV_Status]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_Status];
GO
IF OBJECT_ID(N'[ODM2].[CV_TaxonomicClassifierType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_TaxonomicClassifierType];
GO
IF OBJECT_ID(N'[ODM2].[CV_UnitsType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_UnitsType];
GO
IF OBJECT_ID(N'[ODM2].[CV_VariableName]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_VariableName];
GO
IF OBJECT_ID(N'[ODM2].[CV_VariableType]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[CV_VariableType];
GO
IF OBJECT_ID(N'[ODM2].[DataloggerFileColumns]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[DataloggerFileColumns];
GO
IF OBJECT_ID(N'[ODM2].[DataLoggerFiles]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[DataLoggerFiles];
GO
IF OBJECT_ID(N'[ODM2].[DataloggerProgramFiles]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[DataloggerProgramFiles];
GO
IF OBJECT_ID(N'[ODM2].[DataQuality]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[DataQuality];
GO
IF OBJECT_ID(N'[ODM2].[DatasetCitations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[DatasetCitations];
GO
IF OBJECT_ID(N'[ODM2].[Datasets]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Datasets];
GO
IF OBJECT_ID(N'[ODM2].[DatasetsResults]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[DatasetsResults];
GO
IF OBJECT_ID(N'[ODM2].[DerivationEquations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[DerivationEquations];
GO
IF OBJECT_ID(N'[ODM2].[Directives]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Directives];
GO
IF OBJECT_ID(N'[ODM2].[Equipment]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Equipment];
GO
IF OBJECT_ID(N'[ODM2].[EquipmentAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[EquipmentAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[EquipmentModels]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[EquipmentModels];
GO
IF OBJECT_ID(N'[ODM2].[EquipmentUsed]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[EquipmentUsed];
GO
IF OBJECT_ID(N'[ODM2].[ExtensionProperties]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ExtensionProperties];
GO
IF OBJECT_ID(N'[ODM2].[ExternalIdentifierSystems]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ExternalIdentifierSystems];
GO
IF OBJECT_ID(N'[ODM2].[FeatureActions]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[FeatureActions];
GO
IF OBJECT_ID(N'[ODM2].[InstrumentOutputVariables]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[InstrumentOutputVariables];
GO
IF OBJECT_ID(N'[ODM2].[MaintenanceActions]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[MaintenanceActions];
GO
IF OBJECT_ID(N'[ODM2].[MeasurementResults]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[MeasurementResults];
GO
IF OBJECT_ID(N'[ODM2].[MeasurementResultValueAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[MeasurementResultValueAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[MeasurementResultValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[MeasurementResultValues];
GO
IF OBJECT_ID(N'[ODM2].[MethodAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[MethodAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[MethodCitations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[MethodCitations];
GO
IF OBJECT_ID(N'[ODM2].[MethodExtensionPropertyValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[MethodExtensionPropertyValues];
GO
IF OBJECT_ID(N'[ODM2].[MethodExternalIdentifiers]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[MethodExternalIdentifiers];
GO
IF OBJECT_ID(N'[ODM2].[Methods]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Methods];
GO
IF OBJECT_ID(N'[ODM2].[ModelAffiliations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ModelAffiliations];
GO
IF OBJECT_ID(N'[ODM2].[Models]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Models];
GO
IF OBJECT_ID(N'[ODM2].[Organizations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Organizations];
GO
IF OBJECT_ID(N'[ODM2].[People]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[People];
GO
IF OBJECT_ID(N'[ODM2].[PersonExternalIdentifiers]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[PersonExternalIdentifiers];
GO
IF OBJECT_ID(N'[ODM2].[PointCoverageResults]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[PointCoverageResults];
GO
IF OBJECT_ID(N'[ODM2].[PointCoverageResultValueAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[PointCoverageResultValueAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[PointCoverageResultValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[PointCoverageResultValues];
GO
IF OBJECT_ID(N'[ODM2].[ProcessingLevels]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ProcessingLevels];
GO
IF OBJECT_ID(N'[ODM2].[ProfileResults]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ProfileResults];
GO
IF OBJECT_ID(N'[ODM2].[ProfileResultValueAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ProfileResultValueAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[ProfileResultValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ProfileResultValues];
GO
IF OBJECT_ID(N'[ODM2].[ReferenceMaterialExternalIdentifiers]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ReferenceMaterialExternalIdentifiers];
GO
IF OBJECT_ID(N'[ODM2].[ReferenceMaterials]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ReferenceMaterials];
GO
IF OBJECT_ID(N'[ODM2].[ReferenceMaterialValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ReferenceMaterialValues];
GO
IF OBJECT_ID(N'[ODM2].[RelatedActions]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[RelatedActions];
GO
IF OBJECT_ID(N'[ODM2].[RelatedAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[RelatedAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[RelatedCitations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[RelatedCitations];
GO
IF OBJECT_ID(N'[ODM2].[RelatedDatasets]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[RelatedDatasets];
GO
IF OBJECT_ID(N'[ODM2].[RelatedEquipment]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[RelatedEquipment];
GO
IF OBJECT_ID(N'[ODM2].[RelatedFeatures]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[RelatedFeatures];
GO
IF OBJECT_ID(N'[ODM2].[RelatedModels]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[RelatedModels];
GO
IF OBJECT_ID(N'[ODM2].[RelatedResults]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[RelatedResults];
GO
IF OBJECT_ID(N'[ODM2].[ResultAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ResultAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[ResultDerivationEquations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ResultDerivationEquations];
GO
IF OBJECT_ID(N'[ODM2].[ResultExtensionPropertyValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ResultExtensionPropertyValues];
GO
IF OBJECT_ID(N'[ODM2].[ResultNormalizationValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ResultNormalizationValues];
GO
IF OBJECT_ID(N'[ODM2].[Results]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Results];
GO
IF OBJECT_ID(N'[ODM2].[ResultsDataQuality]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[ResultsDataQuality];
GO
IF OBJECT_ID(N'[ODM2].[SamplingFeatureAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SamplingFeatureAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[SamplingFeatureExtensionPropertyValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SamplingFeatureExtensionPropertyValues];
GO
IF OBJECT_ID(N'[ODM2].[SamplingFeatureExternalIdentifiers]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SamplingFeatureExternalIdentifiers];
GO
IF OBJECT_ID(N'[ODM2].[SamplingFeatures]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SamplingFeatures];
GO
IF OBJECT_ID(N'[ODM2].[SectionResults]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SectionResults];
GO
IF OBJECT_ID(N'[ODM2].[SectionResultValueAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SectionResultValueAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[SectionResultValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SectionResultValues];
GO
IF OBJECT_ID(N'[ODM2].[Simulations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Simulations];
GO
IF OBJECT_ID(N'[ODM2].[Sites]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Sites];
GO
IF OBJECT_ID(N'[ODM2].[SpatialOffsets]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SpatialOffsets];
GO
IF OBJECT_ID(N'[ODM2].[SpatialReferenceExternalIdentifiers]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SpatialReferenceExternalIdentifiers];
GO
IF OBJECT_ID(N'[ODM2].[SpatialReferences]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SpatialReferences];
GO
IF OBJECT_ID(N'[ODM2].[SpecimenBatchPostions]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SpecimenBatchPostions];
GO
IF OBJECT_ID(N'[ODM2].[Specimens]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Specimens];
GO
IF OBJECT_ID(N'[ODM2].[SpecimenTaxonomicClassifiers]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SpecimenTaxonomicClassifiers];
GO
IF OBJECT_ID(N'[ODM2].[SpectraResults]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SpectraResults];
GO
IF OBJECT_ID(N'[ODM2].[SpectraResultValueAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SpectraResultValueAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[SpectraResultValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[SpectraResultValues];
GO
IF OBJECT_ID(N'[ODM2].[TaxonomicClassifierExternalIdentifiers]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[TaxonomicClassifierExternalIdentifiers];
GO
IF OBJECT_ID(N'[ODM2].[TaxonomicClassifiers]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[TaxonomicClassifiers];
GO
IF OBJECT_ID(N'[ODM2].[TimeSeriesResults]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[TimeSeriesResults];
GO
IF OBJECT_ID(N'[ODM2].[TimeSeriesResultValueAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[TimeSeriesResultValueAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[TimeSeriesResultValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[TimeSeriesResultValues];
GO
IF OBJECT_ID(N'[ODM2].[TrajectoryResults]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[TrajectoryResults];
GO
IF OBJECT_ID(N'[ODM2].[TrajectoryResultValueAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[TrajectoryResultValueAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[TrajectoryResultValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[TrajectoryResultValues];
GO
IF OBJECT_ID(N'[ODM2].[TransectResults]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[TransectResults];
GO
IF OBJECT_ID(N'[ODM2].[TransectResultValueAnnotations]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[TransectResultValueAnnotations];
GO
IF OBJECT_ID(N'[ODM2].[TransectResultValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[TransectResultValues];
GO
IF OBJECT_ID(N'[ODM2].[Units]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Units];
GO
IF OBJECT_ID(N'[ODM2].[VariableExtensionPropertyValues]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[VariableExtensionPropertyValues];
GO
IF OBJECT_ID(N'[ODM2].[VariableExternalIdentifiers]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[VariableExternalIdentifiers];
GO
IF OBJECT_ID(N'[ODM2].[Variables]', 'U') IS NOT NULL
    DROP TABLE [ODM2].[Variables];
GO
IF OBJECT_ID(N'[ODM2ModelStoreContainer].[FieldWorkPlan]', 'U') IS NOT NULL
    DROP TABLE [ODM2ModelStoreContainer].[FieldWorkPlan];
GO
IF OBJECT_ID(N'[ODM2ModelStoreContainer].[Project]', 'U') IS NOT NULL
    DROP TABLE [ODM2ModelStoreContainer].[Project];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ActionAnnotations'
CREATE TABLE [dbo].[ActionAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ActionID] int  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'ActionBies'
CREATE TABLE [dbo].[ActionBies] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ActionID] int  NOT NULL,
    [AffiliationID] int  NOT NULL,
    [IsActionLead] bit  NOT NULL,
    [RoleDescription] varchar(500)  NULL
);
GO

-- Creating table 'ActionDirectives'
CREATE TABLE [dbo].[ActionDirectives] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ActionID] int  NOT NULL,
    [DirectiveID] int  NOT NULL
);
GO

-- Creating table 'ActionExtensionPropertyValues'
CREATE TABLE [dbo].[ActionExtensionPropertyValues] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ActionID] int  NOT NULL,
    [PropertyID] int  NOT NULL,
    [PropertyValue] varchar(255)  NOT NULL
);
GO

-- Creating table 'Actions'
CREATE TABLE [dbo].[Actions] (
    [ActionID] int IDENTITY(1,1) NOT NULL,
    [ActionTypeCV] varchar(255)  NOT NULL,
    [MethodID] int  NOT NULL,
    [BeginDateTime] datetime  NOT NULL,
    [BeginDateTimeUTCOffset] int  NOT NULL,
    [EndDateTime] datetime  NULL,
    [EndDateTimeUTCOffset] int  NULL,
    [ActionDescription] varchar(500)  NULL,
    [ActionFileLink] varchar(255)  NULL
);
GO

-- Creating table 'Affiliations'
CREATE TABLE [dbo].[Affiliations] (
    [AffiliationID] int IDENTITY(1,1) NOT NULL,
    [PersonID] int  NOT NULL,
    [OrganizationID] int  NULL,
    [IsPrimaryOrganizationContact] bit  NULL,
    [AffiliationStartDate] datetime  NOT NULL,
    [AffiliationEndDate] datetime  NULL,
    [PrimaryPhone] varchar(50)  NULL,
    [PrimaryEmail] varchar(255)  NOT NULL,
    [PrimaryAddress] varchar(255)  NULL,
    [PersonLink] varchar(255)  NULL
);
GO

-- Creating table 'Annotations'
CREATE TABLE [dbo].[Annotations] (
    [AnnotationID] int IDENTITY(1,1) NOT NULL,
    [AnnotationTypeCV] varchar(255)  NOT NULL,
    [AnnotationCode] varchar(50)  NULL,
    [AnnotationText] varchar(500)  NOT NULL,
    [AnnotationDateTime] datetime  NULL,
    [AnnotationUTCOffset] int  NULL,
    [AnnotationLink] varchar(255)  NULL,
    [AnnotatorID] int  NULL,
    [CitationID] int  NULL
);
GO

-- Creating table 'AuthorLists'
CREATE TABLE [dbo].[AuthorLists] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [CitationID] int  NOT NULL,
    [PersonID] int  NOT NULL,
    [AuthorOrder] int  NOT NULL
);
GO

-- Creating table 'CalibrationActions'
CREATE TABLE [dbo].[CalibrationActions] (
    [ActionID] int  NOT NULL,
    [CalibrationCheckValue] float  NULL,
    [InstrumentOutputVariableID] int  NOT NULL,
    [CalibrationEquation] varchar(255)  NULL
);
GO

-- Creating table 'CalibrationReferenceEquipments'
CREATE TABLE [dbo].[CalibrationReferenceEquipments] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ActionID] int  NOT NULL,
    [EquipmentID] int  NOT NULL
);
GO

-- Creating table 'CalibrationStandards'
CREATE TABLE [dbo].[CalibrationStandards] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ActionID] int  NOT NULL,
    [ReferenceMaterialID] int  NOT NULL
);
GO

-- Creating table 'CategoricalResults'
CREATE TABLE [dbo].[CategoricalResults] (
    [ResultID] bigint  NOT NULL,
    [XLocation] float  NULL,
    [XLocationUnitsID] int  NULL,
    [YLocation] float  NULL,
    [YLocationUnitsID] int  NULL,
    [ZLocation] float  NULL,
    [ZLocationUnitsID] int  NULL,
    [SpatialReferenceID] int  NULL,
    [QualityCodeCV] varchar(255)  NOT NULL
);
GO

-- Creating table 'CategoricalResultValueAnnotations'
CREATE TABLE [dbo].[CategoricalResultValueAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ValueID] bigint  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'CategoricalResultValues'
CREATE TABLE [dbo].[CategoricalResultValues] (
    [ValueID] bigint IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [DataValue] varchar(255)  NOT NULL,
    [ValueDateTime] datetime  NOT NULL,
    [ValueDateTimeUTCOffset] int  NOT NULL
);
GO

-- Creating table 'CitationExtensionPropertyValues'
CREATE TABLE [dbo].[CitationExtensionPropertyValues] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [CitationID] int  NOT NULL,
    [PropertyID] int  NOT NULL,
    [PropertyValue] varchar(255)  NOT NULL
);
GO

-- Creating table 'CitationExternalIdentifiers'
CREATE TABLE [dbo].[CitationExternalIdentifiers] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [CitationID] int  NOT NULL,
    [ExternalIdentifierSystemID] int  NOT NULL,
    [CitationExternalIdentifier1] varchar(255)  NOT NULL,
    [CitationExternalIdentifierURI] varchar(255)  NULL
);
GO

-- Creating table 'Citations'
CREATE TABLE [dbo].[Citations] (
    [CitationID] int IDENTITY(1,1) NOT NULL,
    [Title] varchar(255)  NOT NULL,
    [Publisher] varchar(255)  NOT NULL,
    [PublicationYear] int  NOT NULL,
    [CitationLink] varchar(255)  NULL
);
GO

-- Creating table 'CV_ActionType'
CREATE TABLE [dbo].[CV_ActionType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_AggregationStatistic'
CREATE TABLE [dbo].[CV_AggregationStatistic] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_AnnotationType'
CREATE TABLE [dbo].[CV_AnnotationType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_CensorCode'
CREATE TABLE [dbo].[CV_CensorCode] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_DataQualityType'
CREATE TABLE [dbo].[CV_DataQualityType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_DatasetTypeCV'
CREATE TABLE [dbo].[CV_DatasetTypeCV] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_DirectiveType'
CREATE TABLE [dbo].[CV_DirectiveType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_ElevationDatum'
CREATE TABLE [dbo].[CV_ElevationDatum] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_EquipmentType'
CREATE TABLE [dbo].[CV_EquipmentType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_MethodType'
CREATE TABLE [dbo].[CV_MethodType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_OrganizationType'
CREATE TABLE [dbo].[CV_OrganizationType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_PropertyDataType'
CREATE TABLE [dbo].[CV_PropertyDataType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_QualityCode'
CREATE TABLE [dbo].[CV_QualityCode] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_ReferenceMaterialMedium'
CREATE TABLE [dbo].[CV_ReferenceMaterialMedium] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_RelationshipType'
CREATE TABLE [dbo].[CV_RelationshipType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_ResultType'
CREATE TABLE [dbo].[CV_ResultType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_SampledMedium'
CREATE TABLE [dbo].[CV_SampledMedium] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_SamplingFeatureGeoType'
CREATE TABLE [dbo].[CV_SamplingFeatureGeoType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_SamplingFeatureType'
CREATE TABLE [dbo].[CV_SamplingFeatureType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_SiteType'
CREATE TABLE [dbo].[CV_SiteType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_SpatialOffsetType'
CREATE TABLE [dbo].[CV_SpatialOffsetType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_Speciation'
CREATE TABLE [dbo].[CV_Speciation] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_SpecimenMedium'
CREATE TABLE [dbo].[CV_SpecimenMedium] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_SpecimenType'
CREATE TABLE [dbo].[CV_SpecimenType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_Status'
CREATE TABLE [dbo].[CV_Status] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_TaxonomicClassifierType'
CREATE TABLE [dbo].[CV_TaxonomicClassifierType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_UnitsType'
CREATE TABLE [dbo].[CV_UnitsType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_VariableName'
CREATE TABLE [dbo].[CV_VariableName] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'CV_VariableType'
CREATE TABLE [dbo].[CV_VariableType] (
    [Term] varchar(255)  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [Definition] varchar(1000)  NULL,
    [Category] varchar(255)  NULL,
    [SourceVocabularyURI] varchar(255)  NULL
);
GO

-- Creating table 'DataloggerFileColumns'
CREATE TABLE [dbo].[DataloggerFileColumns] (
    [DataloggerFileColumnID] int IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NULL,
    [DataLoggerFileID] int  NOT NULL,
    [InstrumentOutputVariableID] int  NOT NULL,
    [ColumnLabel] varchar(50)  NOT NULL,
    [ColumnDescription] varchar(500)  NULL,
    [MeasurementEquation] varchar(255)  NULL,
    [ScanInterval] float  NULL,
    [ScanIntervalUnitsID] int  NULL,
    [RecordingInterval] float  NULL,
    [RecordingIntervalUnitsID] int  NULL,
    [AggregationStatisticCV] varchar(255)  NULL
);
GO

-- Creating table 'DataLoggerFiles'
CREATE TABLE [dbo].[DataLoggerFiles] (
    [DataLoggerFileID] int IDENTITY(1,1) NOT NULL,
    [ProgramID] int  NOT NULL,
    [DataLoggerFileName] varchar(255)  NOT NULL,
    [DataLoggerFileDescription] varchar(500)  NULL,
    [DataLoggerFileLink] varchar(255)  NULL
);
GO

-- Creating table 'DataloggerProgramFiles'
CREATE TABLE [dbo].[DataloggerProgramFiles] (
    [ProgramID] int IDENTITY(1,1) NOT NULL,
    [AffiliationID] int  NOT NULL,
    [ProgramName] varchar(255)  NOT NULL,
    [ProgramDescription] varchar(500)  NULL,
    [ProgramVersion] varchar(50)  NULL,
    [ProgramFileLink] varchar(255)  NULL
);
GO

-- Creating table 'DataQualities'
CREATE TABLE [dbo].[DataQualities] (
    [DataQualityID] int  NOT NULL,
    [DataQualityTypeCV] varchar(255)  NOT NULL,
    [DataQualityCode] varchar(255)  NOT NULL,
    [DataQualityValue] float  NULL,
    [DataQualityValueUnitsID] int  NULL,
    [DataQualityDescription] varchar(500)  NULL,
    [DataQualityLink] varchar(255)  NULL
);
GO

-- Creating table 'DatasetCitations'
CREATE TABLE [dbo].[DatasetCitations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [DataSetID] int  NOT NULL,
    [RelationshipTypeCV] varchar(255)  NOT NULL,
    [CitationID] int  NOT NULL
);
GO

-- Creating table 'Datasets'
CREATE TABLE [dbo].[Datasets] (
    [DatasetID] int IDENTITY(1,1) NOT NULL,
    [DatasetUUID] uniqueidentifier  NOT NULL,
    [DatasetTypeCV] varchar(255)  NOT NULL,
    [DatasetCode] varchar(50)  NOT NULL,
    [DatasetTitle] varchar(255)  NOT NULL,
    [DatasetAbstract] varchar(500)  NOT NULL
);
GO

-- Creating table 'DatasetsResults'
CREATE TABLE [dbo].[DatasetsResults] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [DatasetID] int  NOT NULL,
    [ResultID] bigint  NOT NULL
);
GO

-- Creating table 'DerivationEquations'
CREATE TABLE [dbo].[DerivationEquations] (
    [DerivationEquationID] int IDENTITY(1,1) NOT NULL,
    [DerivationEquation1] varchar(255)  NOT NULL
);
GO

-- Creating table 'Directives'
CREATE TABLE [dbo].[Directives] (
    [DirectiveID] int IDENTITY(1,1) NOT NULL,
    [DirectiveTypeCV] varchar(255)  NOT NULL,
    [DirectiveDescription] varchar(500)  NOT NULL
);
GO

-- Creating table 'Equipments'
CREATE TABLE [dbo].[Equipments] (
    [EquipmentID] int IDENTITY(1,1) NOT NULL,
    [EquipmentCode] varchar(50)  NOT NULL,
    [EquipmentName] varchar(255)  NOT NULL,
    [EquipmentTypeCV] varchar(255)  NOT NULL,
    [EquipmentModelID] int  NOT NULL,
    [EquipmentSerialNumber] varchar(50)  NOT NULL,
    [EquipmentOwnerID] int  NOT NULL,
    [EquipmentVendorID] int  NOT NULL,
    [EquipmentPurchaseDate] datetime  NOT NULL,
    [EquipmentPurchaseOrderNumber] varchar(50)  NULL,
    [EquipmentDescription] varchar(500)  NULL,
    [EquipmentDocumentationLink] varchar(255)  NULL
);
GO

-- Creating table 'EquipmentAnnotations'
CREATE TABLE [dbo].[EquipmentAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [EquipmentID] int  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'EquipmentModels'
CREATE TABLE [dbo].[EquipmentModels] (
    [EquipmentModelID] int IDENTITY(1,1) NOT NULL,
    [ModelManufacturerID] int  NOT NULL,
    [ModelPartNumber] varchar(50)  NULL,
    [ModelName] varchar(255)  NOT NULL,
    [ModelDescription] varchar(500)  NULL,
    [IsInstrument] bit  NOT NULL,
    [ModelSpecificationsFileLink] varchar(255)  NULL,
    [ModelLink] varchar(255)  NULL
);
GO

-- Creating table 'EquipmentUseds'
CREATE TABLE [dbo].[EquipmentUseds] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ActionID] int  NOT NULL,
    [EquipmentID] int  NOT NULL
);
GO

-- Creating table 'ExtensionProperties'
CREATE TABLE [dbo].[ExtensionProperties] (
    [PropertyID] int IDENTITY(1,1) NOT NULL,
    [PropertyName] varchar(255)  NOT NULL,
    [PropertyDescription] varchar(500)  NULL,
    [PropertyDataTypeCV] varchar(255)  NOT NULL,
    [PropertyUnitsID] int  NULL
);
GO

-- Creating table 'ExternalIdentifierSystems'
CREATE TABLE [dbo].[ExternalIdentifierSystems] (
    [ExternalIdentifierSystemID] int IDENTITY(1,1) NOT NULL,
    [ExternalIdentifierSystemName] varchar(255)  NOT NULL,
    [IdentifierSystemOrganizationID] int  NOT NULL,
    [ExternalIdentifierSystemDescription] varchar(500)  NULL,
    [ExternalIdentifierSystemURL] varchar(255)  NULL
);
GO

-- Creating table 'FeatureActions'
CREATE TABLE [dbo].[FeatureActions] (
    [FeatureActionID] int IDENTITY(1,1) NOT NULL,
    [SamplingFeatureID] int  NOT NULL,
    [ActionID] int  NOT NULL
);
GO

-- Creating table 'InstrumentOutputVariables'
CREATE TABLE [dbo].[InstrumentOutputVariables] (
    [InstrumentOutputVariableID] int IDENTITY(1,1) NOT NULL,
    [ModelID] int  NOT NULL,
    [VariableID] int  NOT NULL,
    [InstrumentMethodID] int  NOT NULL,
    [InstrumentResolution] varchar(255)  NULL,
    [InstrumentAccuracy] varchar(255)  NULL,
    [InstrumentRawOutputUnitsID] int  NOT NULL
);
GO

-- Creating table 'MaintenanceActions'
CREATE TABLE [dbo].[MaintenanceActions] (
    [ActionID] int  NOT NULL,
    [IsFactoryService] bit  NOT NULL,
    [MaintenanceCode] varchar(50)  NULL,
    [MaintenanceReason] varchar(500)  NULL
);
GO

-- Creating table 'MeasurementResults'
CREATE TABLE [dbo].[MeasurementResults] (
    [ResultID] bigint  NOT NULL,
    [XLocation] float  NULL,
    [XLocationUnitsID] int  NULL,
    [YLocation] float  NULL,
    [YLocationUnitsID] int  NULL,
    [ZLocation] float  NULL,
    [ZLocationUnitsID] int  NULL,
    [SpatialReferenceID] int  NULL,
    [CensorCodeCV] varchar(255)  NOT NULL,
    [QualityCodeCV] varchar(255)  NOT NULL,
    [AggregationStatisticCV] varchar(255)  NOT NULL,
    [TimeAggregationInterval] float  NOT NULL,
    [TimeAggregationIntervalUnitsID] int  NOT NULL
);
GO

-- Creating table 'MeasurementResultValueAnnotations'
CREATE TABLE [dbo].[MeasurementResultValueAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ValueID] bigint  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'MeasurementResultValues'
CREATE TABLE [dbo].[MeasurementResultValues] (
    [ValueID] bigint IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [DataValue] float  NOT NULL,
    [ValueDateTime] datetime  NOT NULL,
    [ValueDateTimeUTCOffset] int  NOT NULL
);
GO

-- Creating table 'MethodAnnotations'
CREATE TABLE [dbo].[MethodAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [MethodID] int  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'MethodCitations'
CREATE TABLE [dbo].[MethodCitations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [MethodID] int  NOT NULL,
    [RelationshipTypeCV] varchar(255)  NOT NULL,
    [CitationID] int  NOT NULL
);
GO

-- Creating table 'MethodExtensionPropertyValues'
CREATE TABLE [dbo].[MethodExtensionPropertyValues] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [MethodID] int  NOT NULL,
    [PropertyID] int  NOT NULL,
    [PropertyValue] varchar(255)  NOT NULL
);
GO

-- Creating table 'MethodExternalIdentifiers'
CREATE TABLE [dbo].[MethodExternalIdentifiers] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [MethodID] int  NOT NULL,
    [ExternalIdentifierSystemID] int  NOT NULL,
    [MethodExternalIdentifier1] varchar(255)  NOT NULL,
    [MethodExternalIdentifierURI] varchar(255)  NULL
);
GO

-- Creating table 'Methods'
CREATE TABLE [dbo].[Methods] (
    [MethodID] int IDENTITY(1,1) NOT NULL,
    [MethodTypeCV] varchar(255)  NOT NULL,
    [MethodCode] varchar(50)  NOT NULL,
    [MethodName] varchar(255)  NOT NULL,
    [MethodDescription] varchar(500)  NULL,
    [MethodLink] varchar(255)  NULL,
    [OrganizationID] int  NULL
);
GO

-- Creating table 'ModelAffiliations'
CREATE TABLE [dbo].[ModelAffiliations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ModelID] int  NOT NULL,
    [AffiliationID] int  NOT NULL,
    [IsPrimary] bit  NOT NULL,
    [RoleDescription] varchar(500)  NULL
);
GO

-- Creating table 'Models'
CREATE TABLE [dbo].[Models] (
    [ModelID] int IDENTITY(1,1) NOT NULL,
    [ModelCode] varchar(50)  NOT NULL,
    [ModelName] varchar(255)  NOT NULL,
    [ModelDescription] varchar(500)  NULL,
    [Version] varchar(255)  NULL,
    [ModelLink] varchar(255)  NULL
);
GO

-- Creating table 'Organizations'
CREATE TABLE [dbo].[Organizations] (
    [OrganizationID] int IDENTITY(1,1) NOT NULL,
    [OrganizationTypeCV] varchar(255)  NOT NULL,
    [OrganizationCode] varchar(50)  NOT NULL,
    [OrganizationName] varchar(255)  NOT NULL,
    [OrganizationDescription] varchar(500)  NULL,
    [OrganizationLink] varchar(255)  NULL,
    [ParentOrganizationID] int  NULL
);
GO

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [PersonID] int IDENTITY(1,1) NOT NULL,
    [PersonFirstName] varchar(255)  NOT NULL,
    [PersonMiddleName] varchar(255)  NULL,
    [PersonLastName] varchar(255)  NOT NULL
);
GO

-- Creating table 'PersonExternalIdentifiers'
CREATE TABLE [dbo].[PersonExternalIdentifiers] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [PersonID] int  NOT NULL,
    [ExternalIdentifierSystemID] int  NOT NULL,
    [PersonExternalIdentifier1] varchar(255)  NOT NULL,
    [PersonExternalIdentifierURI] varchar(255)  NULL
);
GO

-- Creating table 'PointCoverageResults'
CREATE TABLE [dbo].[PointCoverageResults] (
    [ResultID] bigint  NOT NULL,
    [ZLocation] float  NULL,
    [ZLocationUnitsID] int  NULL,
    [SpatialReferenceID] int  NULL,
    [IntendedXSpacing] float  NULL,
    [IntendedXSpacingUnitsID] int  NULL,
    [IntendedYSpacing] float  NULL,
    [IntendedYSpacingUnitsID] int  NULL,
    [AggregationStatisticCV] varchar(255)  NOT NULL,
    [TimeAggregationInterval] float  NOT NULL,
    [TimeAggregationIntervalUnitsID] int  NOT NULL
);
GO

-- Creating table 'PointCoverageResultValueAnnotations'
CREATE TABLE [dbo].[PointCoverageResultValueAnnotations] (
    [BridgeID] bigint IDENTITY(1,1) NOT NULL,
    [ValueID] bigint  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'PointCoverageResultValues'
CREATE TABLE [dbo].[PointCoverageResultValues] (
    [ValueID] bigint IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [DataValue] bigint  NOT NULL,
    [ValueDateTime] datetime  NOT NULL,
    [ValueDateTimeUTCOffset] int  NOT NULL,
    [XLocation] float  NOT NULL,
    [XLocationUnitsID] int  NOT NULL,
    [YLocation] float  NOT NULL,
    [YLocationUnitsID] int  NOT NULL,
    [CensorCodeCV] varchar(255)  NOT NULL,
    [QualityCodeCV] varchar(255)  NOT NULL
);
GO

-- Creating table 'ProcessingLevels'
CREATE TABLE [dbo].[ProcessingLevels] (
    [ProcessingLevelID] int IDENTITY(1,1) NOT NULL,
    [ProcessingLevelCode] varchar(50)  NOT NULL,
    [Definition] varchar(500)  NULL,
    [Explanation] varchar(500)  NULL
);
GO

-- Creating table 'ProfileResults'
CREATE TABLE [dbo].[ProfileResults] (
    [ResultID] bigint  NOT NULL,
    [XLocation] float  NULL,
    [XLocationUnitsID] int  NULL,
    [YLocation] float  NULL,
    [YLocationUnitsID] int  NULL,
    [SpatialReferenceID] int  NULL,
    [IntendedZSpacing] float  NULL,
    [IntendedZSpacingUnitsID] int  NULL,
    [IntendedTimeSpacing] float  NULL,
    [IntendedTimeSpacingUnitsID] int  NULL,
    [AggregationStatisticCV] varchar(255)  NOT NULL
);
GO

-- Creating table 'ProfileResultValueAnnotations'
CREATE TABLE [dbo].[ProfileResultValueAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ValueID] bigint  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'ProfileResultValues'
CREATE TABLE [dbo].[ProfileResultValues] (
    [ValueID] bigint IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [DataValue] float  NOT NULL,
    [ValueDateTime] datetime  NOT NULL,
    [ValueDateTimeUTCOffset] int  NOT NULL,
    [ZLocation] float  NOT NULL,
    [ZAggregationInterval] float  NOT NULL,
    [ZLocationUnitsID] int  NOT NULL,
    [CensorCodeCV] varchar(255)  NOT NULL,
    [QualityCodeCV] varchar(255)  NOT NULL,
    [TimeAggregationInterval] float  NOT NULL,
    [TimeAggregationIntervalUnitsID] int  NOT NULL
);
GO

-- Creating table 'ReferenceMaterialExternalIdentifiers'
CREATE TABLE [dbo].[ReferenceMaterialExternalIdentifiers] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ReferenceMaterialID] int  NOT NULL,
    [ExternalIdentifierSystemID] int  NOT NULL,
    [ReferenceMaterialExternalIdentifier1] varchar(255)  NOT NULL,
    [ReferenceMaterialExternalIdentifierURI] varchar(255)  NULL
);
GO

-- Creating table 'ReferenceMaterials'
CREATE TABLE [dbo].[ReferenceMaterials] (
    [ReferenceMaterialID] int  NOT NULL,
    [ReferenceMaterialMediumCV] varchar(255)  NOT NULL,
    [ReferenceMaterialOrganizationID] int  NOT NULL,
    [ReferenceMaterialCode] varchar(50)  NOT NULL,
    [ReferenceMaterialLotCode] varchar(255)  NULL,
    [ReferenceMaterialPurchaseDate] datetime  NULL,
    [ReferenceMaterialExpirationDate] datetime  NULL,
    [ReferenceMaterialCertificateLink] varchar(255)  NULL,
    [SamplingFeatureID] int  NULL
);
GO

-- Creating table 'ReferenceMaterialValues'
CREATE TABLE [dbo].[ReferenceMaterialValues] (
    [ReferenceMaterialValueID] int  NOT NULL,
    [ReferenceMaterialID] int  NOT NULL,
    [ReferenceMaterialValue1] float  NOT NULL,
    [ReferenceMaterialAccuracy] float  NULL,
    [VariableID] int  NOT NULL,
    [UnitsID] int  NOT NULL,
    [CitationID] int  NOT NULL
);
GO

-- Creating table 'RelatedActions'
CREATE TABLE [dbo].[RelatedActions] (
    [RelationID] int IDENTITY(1,1) NOT NULL,
    [ActionID] int  NOT NULL,
    [RelationshipTypeCV] varchar(255)  NOT NULL,
    [RelatedActionID] int  NOT NULL
);
GO

-- Creating table 'RelatedAnnotations'
CREATE TABLE [dbo].[RelatedAnnotations] (
    [RelationID] int IDENTITY(1,1) NOT NULL,
    [AnnotationID] int  NOT NULL,
    [RelationshipTypeCV] varchar(255)  NOT NULL,
    [RelatedAnnotationID] int  NOT NULL
);
GO

-- Creating table 'RelatedCitations'
CREATE TABLE [dbo].[RelatedCitations] (
    [RelationID] int IDENTITY(1,1) NOT NULL,
    [CitationID] int  NOT NULL,
    [RelationshipTypeCV] varchar(255)  NOT NULL,
    [RelatedCitationID] int  NOT NULL
);
GO

-- Creating table 'RelatedDatasets'
CREATE TABLE [dbo].[RelatedDatasets] (
    [RelationID] int IDENTITY(1,1) NOT NULL,
    [DataSetID] int  NOT NULL,
    [RelationshipTypeCV] varchar(255)  NOT NULL,
    [RelatedDatasetID] int  NOT NULL,
    [VersionCode] varchar(50)  NULL
);
GO

-- Creating table 'RelatedEquipments'
CREATE TABLE [dbo].[RelatedEquipments] (
    [RelationID] int IDENTITY(1,1) NOT NULL,
    [EquipmentID] int  NOT NULL,
    [RelationshipTypeCV] varchar(255)  NOT NULL,
    [RelatedEquipmentID] int  NOT NULL,
    [RelationshipStartDateTime] datetime  NOT NULL,
    [RelationshipStartDateTimeUTCOffset] int  NOT NULL,
    [RelationshipEndDateTime] datetime  NULL,
    [RelationshipEndDateTimeUTCOffset] int  NULL
);
GO

-- Creating table 'RelatedFeatures'
CREATE TABLE [dbo].[RelatedFeatures] (
    [RelationID] int IDENTITY(1,1) NOT NULL,
    [SamplingFeatureID] int  NOT NULL,
    [RelationshipTypeCV] varchar(255)  NOT NULL,
    [RelatedFeatureID] int  NOT NULL,
    [SpatialOffsetID] int  NULL
);
GO

-- Creating table 'RelatedModels'
CREATE TABLE [dbo].[RelatedModels] (
    [RelatedID] int IDENTITY(1,1) NOT NULL,
    [ModelID] int  NOT NULL,
    [RelationshipTypeCV] varchar(255)  NOT NULL,
    [RelatedModelID] int  NOT NULL
);
GO

-- Creating table 'RelatedResults'
CREATE TABLE [dbo].[RelatedResults] (
    [RelationID] int IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [RelationshipTypeCV] varchar(255)  NOT NULL,
    [RelatedResultID] bigint  NOT NULL,
    [VersionCode] varchar(50)  NULL,
    [RelatedResultSequenceNumber] int  NULL
);
GO

-- Creating table 'ResultAnnotations'
CREATE TABLE [dbo].[ResultAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [AnnotationID] int  NOT NULL,
    [BeginDateTime] datetime  NOT NULL,
    [EndDateTime] datetime  NOT NULL
);
GO

-- Creating table 'ResultExtensionPropertyValues'
CREATE TABLE [dbo].[ResultExtensionPropertyValues] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [PropertyID] int  NOT NULL,
    [PropertyValue] varchar(255)  NOT NULL
);
GO

-- Creating table 'Results'
CREATE TABLE [dbo].[Results] (
    [ResultID] bigint IDENTITY(1,1) NOT NULL,
    [ResultUUID] uniqueidentifier  NOT NULL,
    [FeatureActionID] int  NOT NULL,
    [ResultTypeCV] varchar(255)  NOT NULL,
    [VariableID] int  NOT NULL,
    [UnitsID] int  NOT NULL,
    [TaxonomicClassifierID] int  NULL,
    [ProcessingLevelID] int  NOT NULL,
    [ResultDateTime] datetime  NULL,
    [ResultDateTimeUTCOffset] bigint  NULL,
    [ValidDateTime] datetime  NULL,
    [ValidDateTimeUTCOffset] bigint  NULL,
    [StatusCV] varchar(255)  NULL,
    [SampledMediumCV] varchar(255)  NOT NULL,
    [ValueCount] int  NOT NULL,
    [DerivationEquation_DerivationEquationID] int  NULL,
    [ReferenceMaterialValue_ReferenceMaterialValueID] int  NULL
);
GO

-- Creating table 'ResultsDataQualities'
CREATE TABLE [dbo].[ResultsDataQualities] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [DataQualityID] int  NOT NULL
);
GO

-- Creating table 'SamplingFeatureAnnotations'
CREATE TABLE [dbo].[SamplingFeatureAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [SamplingFeatureID] int  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'SamplingFeatureExtensionPropertyValues'
CREATE TABLE [dbo].[SamplingFeatureExtensionPropertyValues] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [SamplingFeatureID] int  NOT NULL,
    [PropertyID] int  NOT NULL,
    [PropertyValue] varchar(255)  NOT NULL
);
GO

-- Creating table 'SamplingFeatureExternalIdentifiers'
CREATE TABLE [dbo].[SamplingFeatureExternalIdentifiers] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [SamplingFeatureID] int  NOT NULL,
    [ExternalIdentifierSystemID] int  NOT NULL,
    [SamplingFeatureExternalIdentifier1] varchar(255)  NOT NULL,
    [SamplingFeatureExternalIdentifierURI] varchar(255)  NULL
);
GO

-- Creating table 'SamplingFeatures'
CREATE TABLE [dbo].[SamplingFeatures] (
    [SamplingFeatureID] int IDENTITY(1,1) NOT NULL,
    [SamplingFeatureUUID] uniqueidentifier  NOT NULL,
    [SamplingFeatureTypeCV] varchar(255)  NOT NULL,
    [SamplingFeatureCode] varchar(50)  NOT NULL,
    [SamplingFeatureName] varchar(255)  NULL,
    [SamplingFeatureDescription] varchar(500)  NULL,
    [SamplingFeatureGeotypeCV] varchar(255)  NULL,
    [FeatureGeometry] geometry  NULL,
    [Elevation_m] float  NULL,
    [ElevationDatumCV] varchar(255)  NULL
);
GO

-- Creating table 'SectionResults'
CREATE TABLE [dbo].[SectionResults] (
    [ResultID] bigint  NOT NULL,
    [YLocation] float  NULL,
    [YLocationUnitsID] int  NULL,
    [SpatialReferenceID] int  NULL,
    [IntendedXSpacing] float  NULL,
    [IntendedXSpacingUnitsID] int  NULL,
    [IntendedZSpacing] float  NULL,
    [IntendedZSpacingUnitsID] int  NULL,
    [IntendedTimeSpacing] float  NULL,
    [IntendedTimeSpacingUnitsID] int  NULL,
    [AggregationStatisticCV] varchar(255)  NOT NULL
);
GO

-- Creating table 'SectionResultValueAnnotations'
CREATE TABLE [dbo].[SectionResultValueAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ValueID] bigint  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'SectionResultValues'
CREATE TABLE [dbo].[SectionResultValues] (
    [ValueID] bigint IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [DataValue] float  NOT NULL,
    [ValueDateTime] bigint  NOT NULL,
    [ValueDateTimeUTCOffset] bigint  NOT NULL,
    [XLocation] float  NOT NULL,
    [XAggregationInterval] float  NOT NULL,
    [XLocationUnitsID] int  NOT NULL,
    [ZLocation] bigint  NOT NULL,
    [ZAggregationInterval] float  NOT NULL,
    [ZLocationUnitsID] int  NOT NULL,
    [CensorCodeCV] varchar(255)  NOT NULL,
    [QualityCodeCV] varchar(255)  NOT NULL,
    [AggregationStatisticCV] varchar(255)  NOT NULL,
    [TimeAggregationInterval] float  NOT NULL,
    [TimeAggregationIntervalUnitsID] int  NOT NULL
);
GO

-- Creating table 'Simulations'
CREATE TABLE [dbo].[Simulations] (
    [SimulationID] int IDENTITY(1,1) NOT NULL,
    [ActionID] int  NOT NULL,
    [SimulationName] varchar(255)  NOT NULL,
    [SimulationDescription] varchar(500)  NULL,
    [SimulationStartDateTime] datetime  NOT NULL,
    [SimulationStartDateTimeUTCOffset] int  NOT NULL,
    [SimulationEndDateTime] datetime  NOT NULL,
    [SimulationEndDateTimeUTCOffset] int  NOT NULL,
    [TimeStepValue] float  NOT NULL,
    [TimeStepUnitsID] int  NOT NULL,
    [InputDataSetID] int  NULL,
    [ModelID] int  NOT NULL
);
GO

-- Creating table 'Sites'
CREATE TABLE [dbo].[Sites] (
    [SamplingFeatureID] int  NOT NULL,
    [SiteTypeCV] varchar(255)  NOT NULL,
    [Latitude] float  NOT NULL,
    [Longitude] float  NOT NULL,
    [SpatialReferenceID] int  NOT NULL
);
GO

-- Creating table 'SpatialOffsets'
CREATE TABLE [dbo].[SpatialOffsets] (
    [SpatialOffsetID] int IDENTITY(1,1) NOT NULL,
    [SpatialOffsetTypeCV] varchar(255)  NOT NULL,
    [Offset1Value] float  NOT NULL,
    [Offset1UnitID] int  NOT NULL,
    [Offset2Value] float  NULL,
    [Offset2UnitID] int  NULL,
    [Offset3Value] float  NULL,
    [Offset3UnitID] int  NULL
);
GO

-- Creating table 'SpatialReferenceExternalIdentifiers'
CREATE TABLE [dbo].[SpatialReferenceExternalIdentifiers] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [SpatialReferenceID] int  NOT NULL,
    [ExternalIdentifierSystemID] int  NOT NULL,
    [SpatialReferenceExternalIdentifier1] varchar(255)  NOT NULL,
    [SpatialReferenceExternalIdentifierURI] varchar(255)  NULL
);
GO

-- Creating table 'SpatialReferences'
CREATE TABLE [dbo].[SpatialReferences] (
    [SpatialReferenceID] int IDENTITY(1,1) NOT NULL,
    [SRSCode] varchar(50)  NULL,
    [SRSName] varchar(255)  NOT NULL,
    [SRSDescription] varchar(500)  NULL,
    [SRSLink] varchar(255)  NULL
);
GO

-- Creating table 'SpecimenBatchPostions'
CREATE TABLE [dbo].[SpecimenBatchPostions] (
    [FeatureActionID] int  NOT NULL,
    [BatchPositionNumber] int  NOT NULL,
    [BatchPositionLabel] varchar(255)  NULL
);
GO

-- Creating table 'Specimens'
CREATE TABLE [dbo].[Specimens] (
    [SamplingFeatureID] int  NOT NULL,
    [SpecimenTypeCV] varchar(255)  NOT NULL,
    [SpecimenMediumCV] varchar(255)  NOT NULL,
    [IsFieldSpecimen] bit  NOT NULL
);
GO

-- Creating table 'SpecimenTaxonomicClassifiers'
CREATE TABLE [dbo].[SpecimenTaxonomicClassifiers] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [SamplingFeatureID] int  NOT NULL,
    [TaxonomicClassifierID] int  NOT NULL,
    [CitationID] int  NULL
);
GO

-- Creating table 'SpectraResults'
CREATE TABLE [dbo].[SpectraResults] (
    [ResultID] bigint  NOT NULL,
    [XLocation] float  NULL,
    [XLocationUnitsID] int  NULL,
    [YLocation] float  NULL,
    [YLocationUnitsID] int  NULL,
    [ZLocation] float  NULL,
    [ZLocationUnitsID] int  NULL,
    [SpatialReferenceID] int  NULL,
    [IntendedWavelengthSpacing] float  NULL,
    [IntendedWavelengthSpacingUnitsID] int  NULL,
    [AggregationStatisticCV] varchar(255)  NOT NULL
);
GO

-- Creating table 'SpectraResultValueAnnotations'
CREATE TABLE [dbo].[SpectraResultValueAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ValueID] bigint  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'SpectraResultValues'
CREATE TABLE [dbo].[SpectraResultValues] (
    [ValueID] bigint IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [DataValue] float  NOT NULL,
    [ValueDateTime] datetime  NOT NULL,
    [ValueDateTimeUTCOffset] int  NOT NULL,
    [ExcitationWavelength] float  NOT NULL,
    [EmissionWavelength] float  NOT NULL,
    [WavelengthUnitsID] int  NOT NULL,
    [CensorCodeCV] varchar(255)  NOT NULL,
    [QualityCodeCV] varchar(255)  NOT NULL,
    [TimeAggregationInterval] float  NOT NULL,
    [TimeAggregationIntervalUnitsID] int  NOT NULL
);
GO

-- Creating table 'TaxonomicClassifierExternalIdentifiers'
CREATE TABLE [dbo].[TaxonomicClassifierExternalIdentifiers] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [TaxonomicClassifierID] int  NOT NULL,
    [ExternalIdentifierSystemID] int  NOT NULL,
    [TaxonomicClassifierExternalIdentifier1] varchar(255)  NOT NULL,
    [TaxonomicClassifierExternalIdentifierURI] varchar(255)  NULL
);
GO

-- Creating table 'TaxonomicClassifiers'
CREATE TABLE [dbo].[TaxonomicClassifiers] (
    [TaxonomicClassifierID] int IDENTITY(1,1) NOT NULL,
    [TaxonomicClassifierTypeCV] varchar(255)  NOT NULL,
    [TaxonomicClassifierName] varchar(255)  NOT NULL,
    [TaxonomicClassifierCommonName] varchar(255)  NULL,
    [TaxonomicClassifierDescription] varchar(500)  NULL,
    [ParentTaxonomicClassifierID] int  NULL
);
GO

-- Creating table 'TimeSeriesResults'
CREATE TABLE [dbo].[TimeSeriesResults] (
    [ResultID] bigint  NOT NULL,
    [XLocation] float  NULL,
    [XLocationUnitsID] int  NULL,
    [YLocation] float  NULL,
    [YLocationUnitsID] int  NULL,
    [ZLocation] float  NULL,
    [ZLocationUnitsID] int  NULL,
    [SpatialReferenceID] int  NULL,
    [IntendedTimeSpacing] float  NULL,
    [IntendedTimeSpacingUnitsID] int  NULL,
    [AggregationStatisticCV] varchar(255)  NOT NULL
);
GO

-- Creating table 'TimeSeriesResultValueAnnotations'
CREATE TABLE [dbo].[TimeSeriesResultValueAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ValueID] bigint  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'TimeSeriesResultValues'
CREATE TABLE [dbo].[TimeSeriesResultValues] (
    [ValueID] bigint IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [DataValue] float  NOT NULL,
    [ValueDateTime] datetime  NOT NULL,
    [ValueDateTimeUTCOffset] int  NOT NULL,
    [CensorCodeCV] varchar(255)  NOT NULL,
    [QualityCodeCV] varchar(255)  NOT NULL,
    [TimeAggregationInterval] float  NOT NULL,
    [TimeAggregationIntervalUnitsID] int  NOT NULL
);
GO

-- Creating table 'TrajectoryResults'
CREATE TABLE [dbo].[TrajectoryResults] (
    [ResultID] bigint  NOT NULL,
    [SpatialReferenceID] int  NULL,
    [IntendedTrajectorySpacing] float  NULL,
    [IntendedTrajectorySpacingUnitsID] int  NULL,
    [IntendedTimeSpacing] float  NULL,
    [IntendedTimeSpacingUnitsID] int  NULL,
    [AggregationStatisticCV] varchar(255)  NOT NULL
);
GO

-- Creating table 'TrajectoryResultValueAnnotations'
CREATE TABLE [dbo].[TrajectoryResultValueAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ValueID] bigint  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'TrajectoryResultValues'
CREATE TABLE [dbo].[TrajectoryResultValues] (
    [ValueID] bigint IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [DataValue] float  NOT NULL,
    [ValueDateTime] datetime  NOT NULL,
    [ValueDateTimeUTCOffset] int  NOT NULL,
    [XLocation] float  NOT NULL,
    [XLocationUnitsID] int  NOT NULL,
    [YLocation] float  NOT NULL,
    [YLocationUnitsID] int  NOT NULL,
    [ZLocation] float  NOT NULL,
    [ZLocationUnitsID] int  NOT NULL,
    [TrajectoryDistance] float  NOT NULL,
    [TrajectoryDistanceAggregationInterval] float  NOT NULL,
    [TrajectoryDistanceUnitsID] int  NOT NULL,
    [CensorCodeCV] varchar(255)  NOT NULL,
    [QualityCodeCV] varchar(255)  NOT NULL,
    [TimeAggregationInterval] float  NOT NULL,
    [TimeAggregationIntervalUnitsID] int  NOT NULL
);
GO

-- Creating table 'TransectResults'
CREATE TABLE [dbo].[TransectResults] (
    [ResultID] bigint  NOT NULL,
    [ZLocation] float  NULL,
    [ZLocationUnitsID] int  NULL,
    [SpatialReferenceID] int  NULL,
    [IntendedTransectSpacing] float  NULL,
    [IntendedTransectSpacingUnitsID] int  NULL,
    [IntendedTimeSpacing] float  NULL,
    [IntendedTimeSpacingUnitsID] int  NULL,
    [AggregationStatisticCV] varchar(255)  NOT NULL
);
GO

-- Creating table 'TransectResultValueAnnotations'
CREATE TABLE [dbo].[TransectResultValueAnnotations] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [ValueID] bigint  NOT NULL,
    [AnnotationID] int  NOT NULL
);
GO

-- Creating table 'TransectResultValues'
CREATE TABLE [dbo].[TransectResultValues] (
    [ValueID] bigint IDENTITY(1,1) NOT NULL,
    [ResultID] bigint  NOT NULL,
    [DataValue] float  NOT NULL,
    [ValueDateTime] datetime  NOT NULL,
    [ValueDateTimeUTCOffset] datetime  NOT NULL,
    [XLocation] float  NOT NULL,
    [XLocationUnitsID] int  NOT NULL,
    [YLocation] float  NOT NULL,
    [YLocationUnitsID] int  NOT NULL,
    [TransectDistance] float  NOT NULL,
    [TransectDistanceAggregationInterval] float  NOT NULL,
    [TransectDistanceUnitsID] int  NOT NULL,
    [CensorCodeCV] varchar(255)  NOT NULL,
    [QualityCodeCV] varchar(255)  NOT NULL,
    [AggregationStatisticCV] varchar(255)  NOT NULL,
    [TimeAggregationInterval] float  NOT NULL,
    [TimeAggregationIntervalUnitsID] int  NOT NULL
);
GO

-- Creating table 'Units'
CREATE TABLE [dbo].[Units] (
    [UnitsID] int IDENTITY(1,1) NOT NULL,
    [UnitsTypeCV] varchar(255)  NOT NULL,
    [UnitsAbbreviation] varchar(50)  NOT NULL,
    [UnitsName] varchar(255)  NOT NULL,
    [UnitsLink] varchar(255)  NULL
);
GO

-- Creating table 'VariableExtensionPropertyValues'
CREATE TABLE [dbo].[VariableExtensionPropertyValues] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [VariableID] int  NOT NULL,
    [PropertyID] int  NOT NULL,
    [PropertyValue] varchar(255)  NOT NULL
);
GO

-- Creating table 'VariableExternalIdentifiers'
CREATE TABLE [dbo].[VariableExternalIdentifiers] (
    [BridgeID] int IDENTITY(1,1) NOT NULL,
    [VariableID] int  NOT NULL,
    [ExternalIdentifierSystemID] int  NOT NULL,
    [VariableExternalIdentifer] varchar(255)  NOT NULL,
    [VariableExternalIdentifierURI] varchar(255)  NULL
);
GO

-- Creating table 'Variables'
CREATE TABLE [dbo].[Variables] (
    [VariableID] int IDENTITY(1,1) NOT NULL,
    [VariableTypeCV] varchar(255)  NOT NULL,
    [VariableCode] varchar(50)  NOT NULL,
    [VariableNameCV] varchar(255)  NOT NULL,
    [VariableDefinition] varchar(500)  NULL,
    [SpeciationCV] varchar(255)  NULL,
    [NoDataValue] float  NOT NULL
);
GO

-- Creating table 'FieldWorkPlans'
CREATE TABLE [dbo].[FieldWorkPlans] (
    [FieldWorkPlanID] int IDENTITY(1,1) NOT NULL,
    [FieldWorkPlanName] nvarchar(500)  NOT NULL
);
GO

-- Creating table 'Projects'
CREATE TABLE [dbo].[Projects] (
    [ProjectID] int IDENTITY(1,1) NOT NULL,
    [ProjectName] nvarchar(500)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [BridgeID] in table 'ActionAnnotations'
ALTER TABLE [dbo].[ActionAnnotations]
ADD CONSTRAINT [PK_ActionAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'ActionBies'
ALTER TABLE [dbo].[ActionBies]
ADD CONSTRAINT [PK_ActionBies]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'ActionDirectives'
ALTER TABLE [dbo].[ActionDirectives]
ADD CONSTRAINT [PK_ActionDirectives]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'ActionExtensionPropertyValues'
ALTER TABLE [dbo].[ActionExtensionPropertyValues]
ADD CONSTRAINT [PK_ActionExtensionPropertyValues]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ActionID] in table 'Actions'
ALTER TABLE [dbo].[Actions]
ADD CONSTRAINT [PK_Actions]
    PRIMARY KEY CLUSTERED ([ActionID] ASC);
GO

-- Creating primary key on [AffiliationID] in table 'Affiliations'
ALTER TABLE [dbo].[Affiliations]
ADD CONSTRAINT [PK_Affiliations]
    PRIMARY KEY CLUSTERED ([AffiliationID] ASC);
GO

-- Creating primary key on [AnnotationID] in table 'Annotations'
ALTER TABLE [dbo].[Annotations]
ADD CONSTRAINT [PK_Annotations]
    PRIMARY KEY CLUSTERED ([AnnotationID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'AuthorLists'
ALTER TABLE [dbo].[AuthorLists]
ADD CONSTRAINT [PK_AuthorLists]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ActionID] in table 'CalibrationActions'
ALTER TABLE [dbo].[CalibrationActions]
ADD CONSTRAINT [PK_CalibrationActions]
    PRIMARY KEY CLUSTERED ([ActionID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'CalibrationReferenceEquipments'
ALTER TABLE [dbo].[CalibrationReferenceEquipments]
ADD CONSTRAINT [PK_CalibrationReferenceEquipments]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'CalibrationStandards'
ALTER TABLE [dbo].[CalibrationStandards]
ADD CONSTRAINT [PK_CalibrationStandards]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ResultID] in table 'CategoricalResults'
ALTER TABLE [dbo].[CategoricalResults]
ADD CONSTRAINT [PK_CategoricalResults]
    PRIMARY KEY CLUSTERED ([ResultID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'CategoricalResultValueAnnotations'
ALTER TABLE [dbo].[CategoricalResultValueAnnotations]
ADD CONSTRAINT [PK_CategoricalResultValueAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ValueID] in table 'CategoricalResultValues'
ALTER TABLE [dbo].[CategoricalResultValues]
ADD CONSTRAINT [PK_CategoricalResultValues]
    PRIMARY KEY CLUSTERED ([ValueID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'CitationExtensionPropertyValues'
ALTER TABLE [dbo].[CitationExtensionPropertyValues]
ADD CONSTRAINT [PK_CitationExtensionPropertyValues]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'CitationExternalIdentifiers'
ALTER TABLE [dbo].[CitationExternalIdentifiers]
ADD CONSTRAINT [PK_CitationExternalIdentifiers]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [CitationID] in table 'Citations'
ALTER TABLE [dbo].[Citations]
ADD CONSTRAINT [PK_Citations]
    PRIMARY KEY CLUSTERED ([CitationID] ASC);
GO

-- Creating primary key on [Name] in table 'CV_ActionType'
ALTER TABLE [dbo].[CV_ActionType]
ADD CONSTRAINT [PK_CV_ActionType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_AggregationStatistic'
ALTER TABLE [dbo].[CV_AggregationStatistic]
ADD CONSTRAINT [PK_CV_AggregationStatistic]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_AnnotationType'
ALTER TABLE [dbo].[CV_AnnotationType]
ADD CONSTRAINT [PK_CV_AnnotationType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_CensorCode'
ALTER TABLE [dbo].[CV_CensorCode]
ADD CONSTRAINT [PK_CV_CensorCode]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_DataQualityType'
ALTER TABLE [dbo].[CV_DataQualityType]
ADD CONSTRAINT [PK_CV_DataQualityType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_DatasetTypeCV'
ALTER TABLE [dbo].[CV_DatasetTypeCV]
ADD CONSTRAINT [PK_CV_DatasetTypeCV]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_DirectiveType'
ALTER TABLE [dbo].[CV_DirectiveType]
ADD CONSTRAINT [PK_CV_DirectiveType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_ElevationDatum'
ALTER TABLE [dbo].[CV_ElevationDatum]
ADD CONSTRAINT [PK_CV_ElevationDatum]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_EquipmentType'
ALTER TABLE [dbo].[CV_EquipmentType]
ADD CONSTRAINT [PK_CV_EquipmentType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_MethodType'
ALTER TABLE [dbo].[CV_MethodType]
ADD CONSTRAINT [PK_CV_MethodType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_OrganizationType'
ALTER TABLE [dbo].[CV_OrganizationType]
ADD CONSTRAINT [PK_CV_OrganizationType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_PropertyDataType'
ALTER TABLE [dbo].[CV_PropertyDataType]
ADD CONSTRAINT [PK_CV_PropertyDataType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_QualityCode'
ALTER TABLE [dbo].[CV_QualityCode]
ADD CONSTRAINT [PK_CV_QualityCode]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_ReferenceMaterialMedium'
ALTER TABLE [dbo].[CV_ReferenceMaterialMedium]
ADD CONSTRAINT [PK_CV_ReferenceMaterialMedium]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_RelationshipType'
ALTER TABLE [dbo].[CV_RelationshipType]
ADD CONSTRAINT [PK_CV_RelationshipType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_ResultType'
ALTER TABLE [dbo].[CV_ResultType]
ADD CONSTRAINT [PK_CV_ResultType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_SampledMedium'
ALTER TABLE [dbo].[CV_SampledMedium]
ADD CONSTRAINT [PK_CV_SampledMedium]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_SamplingFeatureGeoType'
ALTER TABLE [dbo].[CV_SamplingFeatureGeoType]
ADD CONSTRAINT [PK_CV_SamplingFeatureGeoType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_SamplingFeatureType'
ALTER TABLE [dbo].[CV_SamplingFeatureType]
ADD CONSTRAINT [PK_CV_SamplingFeatureType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_SiteType'
ALTER TABLE [dbo].[CV_SiteType]
ADD CONSTRAINT [PK_CV_SiteType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_SpatialOffsetType'
ALTER TABLE [dbo].[CV_SpatialOffsetType]
ADD CONSTRAINT [PK_CV_SpatialOffsetType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_Speciation'
ALTER TABLE [dbo].[CV_Speciation]
ADD CONSTRAINT [PK_CV_Speciation]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_SpecimenMedium'
ALTER TABLE [dbo].[CV_SpecimenMedium]
ADD CONSTRAINT [PK_CV_SpecimenMedium]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_SpecimenType'
ALTER TABLE [dbo].[CV_SpecimenType]
ADD CONSTRAINT [PK_CV_SpecimenType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_Status'
ALTER TABLE [dbo].[CV_Status]
ADD CONSTRAINT [PK_CV_Status]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_TaxonomicClassifierType'
ALTER TABLE [dbo].[CV_TaxonomicClassifierType]
ADD CONSTRAINT [PK_CV_TaxonomicClassifierType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_UnitsType'
ALTER TABLE [dbo].[CV_UnitsType]
ADD CONSTRAINT [PK_CV_UnitsType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_VariableName'
ALTER TABLE [dbo].[CV_VariableName]
ADD CONSTRAINT [PK_CV_VariableName]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'CV_VariableType'
ALTER TABLE [dbo].[CV_VariableType]
ADD CONSTRAINT [PK_CV_VariableType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [DataloggerFileColumnID] in table 'DataloggerFileColumns'
ALTER TABLE [dbo].[DataloggerFileColumns]
ADD CONSTRAINT [PK_DataloggerFileColumns]
    PRIMARY KEY CLUSTERED ([DataloggerFileColumnID] ASC);
GO

-- Creating primary key on [DataLoggerFileID] in table 'DataLoggerFiles'
ALTER TABLE [dbo].[DataLoggerFiles]
ADD CONSTRAINT [PK_DataLoggerFiles]
    PRIMARY KEY CLUSTERED ([DataLoggerFileID] ASC);
GO

-- Creating primary key on [ProgramID] in table 'DataloggerProgramFiles'
ALTER TABLE [dbo].[DataloggerProgramFiles]
ADD CONSTRAINT [PK_DataloggerProgramFiles]
    PRIMARY KEY CLUSTERED ([ProgramID] ASC);
GO

-- Creating primary key on [DataQualityID] in table 'DataQualities'
ALTER TABLE [dbo].[DataQualities]
ADD CONSTRAINT [PK_DataQualities]
    PRIMARY KEY CLUSTERED ([DataQualityID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'DatasetCitations'
ALTER TABLE [dbo].[DatasetCitations]
ADD CONSTRAINT [PK_DatasetCitations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [DatasetID] in table 'Datasets'
ALTER TABLE [dbo].[Datasets]
ADD CONSTRAINT [PK_Datasets]
    PRIMARY KEY CLUSTERED ([DatasetID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'DatasetsResults'
ALTER TABLE [dbo].[DatasetsResults]
ADD CONSTRAINT [PK_DatasetsResults]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [DerivationEquationID] in table 'DerivationEquations'
ALTER TABLE [dbo].[DerivationEquations]
ADD CONSTRAINT [PK_DerivationEquations]
    PRIMARY KEY CLUSTERED ([DerivationEquationID] ASC);
GO

-- Creating primary key on [DirectiveID] in table 'Directives'
ALTER TABLE [dbo].[Directives]
ADD CONSTRAINT [PK_Directives]
    PRIMARY KEY CLUSTERED ([DirectiveID] ASC);
GO

-- Creating primary key on [EquipmentID] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [PK_Equipments]
    PRIMARY KEY CLUSTERED ([EquipmentID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'EquipmentAnnotations'
ALTER TABLE [dbo].[EquipmentAnnotations]
ADD CONSTRAINT [PK_EquipmentAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [EquipmentModelID] in table 'EquipmentModels'
ALTER TABLE [dbo].[EquipmentModels]
ADD CONSTRAINT [PK_EquipmentModels]
    PRIMARY KEY CLUSTERED ([EquipmentModelID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'EquipmentUseds'
ALTER TABLE [dbo].[EquipmentUseds]
ADD CONSTRAINT [PK_EquipmentUseds]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [PropertyID] in table 'ExtensionProperties'
ALTER TABLE [dbo].[ExtensionProperties]
ADD CONSTRAINT [PK_ExtensionProperties]
    PRIMARY KEY CLUSTERED ([PropertyID] ASC);
GO

-- Creating primary key on [ExternalIdentifierSystemID] in table 'ExternalIdentifierSystems'
ALTER TABLE [dbo].[ExternalIdentifierSystems]
ADD CONSTRAINT [PK_ExternalIdentifierSystems]
    PRIMARY KEY CLUSTERED ([ExternalIdentifierSystemID] ASC);
GO

-- Creating primary key on [FeatureActionID] in table 'FeatureActions'
ALTER TABLE [dbo].[FeatureActions]
ADD CONSTRAINT [PK_FeatureActions]
    PRIMARY KEY CLUSTERED ([FeatureActionID] ASC);
GO

-- Creating primary key on [InstrumentOutputVariableID] in table 'InstrumentOutputVariables'
ALTER TABLE [dbo].[InstrumentOutputVariables]
ADD CONSTRAINT [PK_InstrumentOutputVariables]
    PRIMARY KEY CLUSTERED ([InstrumentOutputVariableID] ASC);
GO

-- Creating primary key on [ActionID] in table 'MaintenanceActions'
ALTER TABLE [dbo].[MaintenanceActions]
ADD CONSTRAINT [PK_MaintenanceActions]
    PRIMARY KEY CLUSTERED ([ActionID] ASC);
GO

-- Creating primary key on [ResultID] in table 'MeasurementResults'
ALTER TABLE [dbo].[MeasurementResults]
ADD CONSTRAINT [PK_MeasurementResults]
    PRIMARY KEY CLUSTERED ([ResultID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'MeasurementResultValueAnnotations'
ALTER TABLE [dbo].[MeasurementResultValueAnnotations]
ADD CONSTRAINT [PK_MeasurementResultValueAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ValueID] in table 'MeasurementResultValues'
ALTER TABLE [dbo].[MeasurementResultValues]
ADD CONSTRAINT [PK_MeasurementResultValues]
    PRIMARY KEY CLUSTERED ([ValueID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'MethodAnnotations'
ALTER TABLE [dbo].[MethodAnnotations]
ADD CONSTRAINT [PK_MethodAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'MethodCitations'
ALTER TABLE [dbo].[MethodCitations]
ADD CONSTRAINT [PK_MethodCitations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'MethodExtensionPropertyValues'
ALTER TABLE [dbo].[MethodExtensionPropertyValues]
ADD CONSTRAINT [PK_MethodExtensionPropertyValues]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'MethodExternalIdentifiers'
ALTER TABLE [dbo].[MethodExternalIdentifiers]
ADD CONSTRAINT [PK_MethodExternalIdentifiers]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [MethodID] in table 'Methods'
ALTER TABLE [dbo].[Methods]
ADD CONSTRAINT [PK_Methods]
    PRIMARY KEY CLUSTERED ([MethodID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'ModelAffiliations'
ALTER TABLE [dbo].[ModelAffiliations]
ADD CONSTRAINT [PK_ModelAffiliations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ModelID] in table 'Models'
ALTER TABLE [dbo].[Models]
ADD CONSTRAINT [PK_Models]
    PRIMARY KEY CLUSTERED ([ModelID] ASC);
GO

-- Creating primary key on [OrganizationID] in table 'Organizations'
ALTER TABLE [dbo].[Organizations]
ADD CONSTRAINT [PK_Organizations]
    PRIMARY KEY CLUSTERED ([OrganizationID] ASC);
GO

-- Creating primary key on [PersonID] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([PersonID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'PersonExternalIdentifiers'
ALTER TABLE [dbo].[PersonExternalIdentifiers]
ADD CONSTRAINT [PK_PersonExternalIdentifiers]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ResultID] in table 'PointCoverageResults'
ALTER TABLE [dbo].[PointCoverageResults]
ADD CONSTRAINT [PK_PointCoverageResults]
    PRIMARY KEY CLUSTERED ([ResultID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'PointCoverageResultValueAnnotations'
ALTER TABLE [dbo].[PointCoverageResultValueAnnotations]
ADD CONSTRAINT [PK_PointCoverageResultValueAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ValueID] in table 'PointCoverageResultValues'
ALTER TABLE [dbo].[PointCoverageResultValues]
ADD CONSTRAINT [PK_PointCoverageResultValues]
    PRIMARY KEY CLUSTERED ([ValueID] ASC);
GO

-- Creating primary key on [ProcessingLevelID] in table 'ProcessingLevels'
ALTER TABLE [dbo].[ProcessingLevels]
ADD CONSTRAINT [PK_ProcessingLevels]
    PRIMARY KEY CLUSTERED ([ProcessingLevelID] ASC);
GO

-- Creating primary key on [ResultID] in table 'ProfileResults'
ALTER TABLE [dbo].[ProfileResults]
ADD CONSTRAINT [PK_ProfileResults]
    PRIMARY KEY CLUSTERED ([ResultID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'ProfileResultValueAnnotations'
ALTER TABLE [dbo].[ProfileResultValueAnnotations]
ADD CONSTRAINT [PK_ProfileResultValueAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ValueID] in table 'ProfileResultValues'
ALTER TABLE [dbo].[ProfileResultValues]
ADD CONSTRAINT [PK_ProfileResultValues]
    PRIMARY KEY CLUSTERED ([ValueID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'ReferenceMaterialExternalIdentifiers'
ALTER TABLE [dbo].[ReferenceMaterialExternalIdentifiers]
ADD CONSTRAINT [PK_ReferenceMaterialExternalIdentifiers]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ReferenceMaterialID] in table 'ReferenceMaterials'
ALTER TABLE [dbo].[ReferenceMaterials]
ADD CONSTRAINT [PK_ReferenceMaterials]
    PRIMARY KEY CLUSTERED ([ReferenceMaterialID] ASC);
GO

-- Creating primary key on [ReferenceMaterialValueID] in table 'ReferenceMaterialValues'
ALTER TABLE [dbo].[ReferenceMaterialValues]
ADD CONSTRAINT [PK_ReferenceMaterialValues]
    PRIMARY KEY CLUSTERED ([ReferenceMaterialValueID] ASC);
GO

-- Creating primary key on [RelationID] in table 'RelatedActions'
ALTER TABLE [dbo].[RelatedActions]
ADD CONSTRAINT [PK_RelatedActions]
    PRIMARY KEY CLUSTERED ([RelationID] ASC);
GO

-- Creating primary key on [RelationID] in table 'RelatedAnnotations'
ALTER TABLE [dbo].[RelatedAnnotations]
ADD CONSTRAINT [PK_RelatedAnnotations]
    PRIMARY KEY CLUSTERED ([RelationID] ASC);
GO

-- Creating primary key on [RelationID] in table 'RelatedCitations'
ALTER TABLE [dbo].[RelatedCitations]
ADD CONSTRAINT [PK_RelatedCitations]
    PRIMARY KEY CLUSTERED ([RelationID] ASC);
GO

-- Creating primary key on [RelationID] in table 'RelatedDatasets'
ALTER TABLE [dbo].[RelatedDatasets]
ADD CONSTRAINT [PK_RelatedDatasets]
    PRIMARY KEY CLUSTERED ([RelationID] ASC);
GO

-- Creating primary key on [RelationID] in table 'RelatedEquipments'
ALTER TABLE [dbo].[RelatedEquipments]
ADD CONSTRAINT [PK_RelatedEquipments]
    PRIMARY KEY CLUSTERED ([RelationID] ASC);
GO

-- Creating primary key on [RelationID] in table 'RelatedFeatures'
ALTER TABLE [dbo].[RelatedFeatures]
ADD CONSTRAINT [PK_RelatedFeatures]
    PRIMARY KEY CLUSTERED ([RelationID] ASC);
GO

-- Creating primary key on [RelatedID] in table 'RelatedModels'
ALTER TABLE [dbo].[RelatedModels]
ADD CONSTRAINT [PK_RelatedModels]
    PRIMARY KEY CLUSTERED ([RelatedID] ASC);
GO

-- Creating primary key on [RelationID] in table 'RelatedResults'
ALTER TABLE [dbo].[RelatedResults]
ADD CONSTRAINT [PK_RelatedResults]
    PRIMARY KEY CLUSTERED ([RelationID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'ResultAnnotations'
ALTER TABLE [dbo].[ResultAnnotations]
ADD CONSTRAINT [PK_ResultAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'ResultExtensionPropertyValues'
ALTER TABLE [dbo].[ResultExtensionPropertyValues]
ADD CONSTRAINT [PK_ResultExtensionPropertyValues]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ResultID] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [PK_Results]
    PRIMARY KEY CLUSTERED ([ResultID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'ResultsDataQualities'
ALTER TABLE [dbo].[ResultsDataQualities]
ADD CONSTRAINT [PK_ResultsDataQualities]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'SamplingFeatureAnnotations'
ALTER TABLE [dbo].[SamplingFeatureAnnotations]
ADD CONSTRAINT [PK_SamplingFeatureAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'SamplingFeatureExtensionPropertyValues'
ALTER TABLE [dbo].[SamplingFeatureExtensionPropertyValues]
ADD CONSTRAINT [PK_SamplingFeatureExtensionPropertyValues]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'SamplingFeatureExternalIdentifiers'
ALTER TABLE [dbo].[SamplingFeatureExternalIdentifiers]
ADD CONSTRAINT [PK_SamplingFeatureExternalIdentifiers]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [SamplingFeatureID] in table 'SamplingFeatures'
ALTER TABLE [dbo].[SamplingFeatures]
ADD CONSTRAINT [PK_SamplingFeatures]
    PRIMARY KEY CLUSTERED ([SamplingFeatureID] ASC);
GO

-- Creating primary key on [ResultID] in table 'SectionResults'
ALTER TABLE [dbo].[SectionResults]
ADD CONSTRAINT [PK_SectionResults]
    PRIMARY KEY CLUSTERED ([ResultID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'SectionResultValueAnnotations'
ALTER TABLE [dbo].[SectionResultValueAnnotations]
ADD CONSTRAINT [PK_SectionResultValueAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ValueID] in table 'SectionResultValues'
ALTER TABLE [dbo].[SectionResultValues]
ADD CONSTRAINT [PK_SectionResultValues]
    PRIMARY KEY CLUSTERED ([ValueID] ASC);
GO

-- Creating primary key on [SimulationID] in table 'Simulations'
ALTER TABLE [dbo].[Simulations]
ADD CONSTRAINT [PK_Simulations]
    PRIMARY KEY CLUSTERED ([SimulationID] ASC);
GO

-- Creating primary key on [SamplingFeatureID] in table 'Sites'
ALTER TABLE [dbo].[Sites]
ADD CONSTRAINT [PK_Sites]
    PRIMARY KEY CLUSTERED ([SamplingFeatureID] ASC);
GO

-- Creating primary key on [SpatialOffsetID] in table 'SpatialOffsets'
ALTER TABLE [dbo].[SpatialOffsets]
ADD CONSTRAINT [PK_SpatialOffsets]
    PRIMARY KEY CLUSTERED ([SpatialOffsetID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'SpatialReferenceExternalIdentifiers'
ALTER TABLE [dbo].[SpatialReferenceExternalIdentifiers]
ADD CONSTRAINT [PK_SpatialReferenceExternalIdentifiers]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [SpatialReferenceID] in table 'SpatialReferences'
ALTER TABLE [dbo].[SpatialReferences]
ADD CONSTRAINT [PK_SpatialReferences]
    PRIMARY KEY CLUSTERED ([SpatialReferenceID] ASC);
GO

-- Creating primary key on [FeatureActionID] in table 'SpecimenBatchPostions'
ALTER TABLE [dbo].[SpecimenBatchPostions]
ADD CONSTRAINT [PK_SpecimenBatchPostions]
    PRIMARY KEY CLUSTERED ([FeatureActionID] ASC);
GO

-- Creating primary key on [SamplingFeatureID] in table 'Specimens'
ALTER TABLE [dbo].[Specimens]
ADD CONSTRAINT [PK_Specimens]
    PRIMARY KEY CLUSTERED ([SamplingFeatureID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'SpecimenTaxonomicClassifiers'
ALTER TABLE [dbo].[SpecimenTaxonomicClassifiers]
ADD CONSTRAINT [PK_SpecimenTaxonomicClassifiers]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ResultID] in table 'SpectraResults'
ALTER TABLE [dbo].[SpectraResults]
ADD CONSTRAINT [PK_SpectraResults]
    PRIMARY KEY CLUSTERED ([ResultID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'SpectraResultValueAnnotations'
ALTER TABLE [dbo].[SpectraResultValueAnnotations]
ADD CONSTRAINT [PK_SpectraResultValueAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ValueID] in table 'SpectraResultValues'
ALTER TABLE [dbo].[SpectraResultValues]
ADD CONSTRAINT [PK_SpectraResultValues]
    PRIMARY KEY CLUSTERED ([ValueID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'TaxonomicClassifierExternalIdentifiers'
ALTER TABLE [dbo].[TaxonomicClassifierExternalIdentifiers]
ADD CONSTRAINT [PK_TaxonomicClassifierExternalIdentifiers]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [TaxonomicClassifierID] in table 'TaxonomicClassifiers'
ALTER TABLE [dbo].[TaxonomicClassifiers]
ADD CONSTRAINT [PK_TaxonomicClassifiers]
    PRIMARY KEY CLUSTERED ([TaxonomicClassifierID] ASC);
GO

-- Creating primary key on [ResultID] in table 'TimeSeriesResults'
ALTER TABLE [dbo].[TimeSeriesResults]
ADD CONSTRAINT [PK_TimeSeriesResults]
    PRIMARY KEY CLUSTERED ([ResultID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'TimeSeriesResultValueAnnotations'
ALTER TABLE [dbo].[TimeSeriesResultValueAnnotations]
ADD CONSTRAINT [PK_TimeSeriesResultValueAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ValueID] in table 'TimeSeriesResultValues'
ALTER TABLE [dbo].[TimeSeriesResultValues]
ADD CONSTRAINT [PK_TimeSeriesResultValues]
    PRIMARY KEY CLUSTERED ([ValueID] ASC);
GO

-- Creating primary key on [ResultID] in table 'TrajectoryResults'
ALTER TABLE [dbo].[TrajectoryResults]
ADD CONSTRAINT [PK_TrajectoryResults]
    PRIMARY KEY CLUSTERED ([ResultID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'TrajectoryResultValueAnnotations'
ALTER TABLE [dbo].[TrajectoryResultValueAnnotations]
ADD CONSTRAINT [PK_TrajectoryResultValueAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ValueID] in table 'TrajectoryResultValues'
ALTER TABLE [dbo].[TrajectoryResultValues]
ADD CONSTRAINT [PK_TrajectoryResultValues]
    PRIMARY KEY CLUSTERED ([ValueID] ASC);
GO

-- Creating primary key on [ResultID] in table 'TransectResults'
ALTER TABLE [dbo].[TransectResults]
ADD CONSTRAINT [PK_TransectResults]
    PRIMARY KEY CLUSTERED ([ResultID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'TransectResultValueAnnotations'
ALTER TABLE [dbo].[TransectResultValueAnnotations]
ADD CONSTRAINT [PK_TransectResultValueAnnotations]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [ValueID] in table 'TransectResultValues'
ALTER TABLE [dbo].[TransectResultValues]
ADD CONSTRAINT [PK_TransectResultValues]
    PRIMARY KEY CLUSTERED ([ValueID] ASC);
GO

-- Creating primary key on [UnitsID] in table 'Units'
ALTER TABLE [dbo].[Units]
ADD CONSTRAINT [PK_Units]
    PRIMARY KEY CLUSTERED ([UnitsID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'VariableExtensionPropertyValues'
ALTER TABLE [dbo].[VariableExtensionPropertyValues]
ADD CONSTRAINT [PK_VariableExtensionPropertyValues]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [BridgeID] in table 'VariableExternalIdentifiers'
ALTER TABLE [dbo].[VariableExternalIdentifiers]
ADD CONSTRAINT [PK_VariableExternalIdentifiers]
    PRIMARY KEY CLUSTERED ([BridgeID] ASC);
GO

-- Creating primary key on [VariableID] in table 'Variables'
ALTER TABLE [dbo].[Variables]
ADD CONSTRAINT [PK_Variables]
    PRIMARY KEY CLUSTERED ([VariableID] ASC);
GO

-- Creating primary key on [FieldWorkPlanID], [FieldWorkPlanName] in table 'FieldWorkPlans'
ALTER TABLE [dbo].[FieldWorkPlans]
ADD CONSTRAINT [PK_FieldWorkPlans]
    PRIMARY KEY CLUSTERED ([FieldWorkPlanID], [FieldWorkPlanName] ASC);
GO

-- Creating primary key on [ProjectID], [ProjectName] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [PK_Projects]
    PRIMARY KEY CLUSTERED ([ProjectID], [ProjectName] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ActionID] in table 'ActionAnnotations'
ALTER TABLE [dbo].[ActionAnnotations]
ADD CONSTRAINT [fk_ActionAnnotations_Actions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[Actions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ActionAnnotations_Actions'
CREATE INDEX [IX_fk_ActionAnnotations_Actions]
ON [dbo].[ActionAnnotations]
    ([ActionID]);
GO

-- Creating foreign key on [AnnotationID] in table 'ActionAnnotations'
ALTER TABLE [dbo].[ActionAnnotations]
ADD CONSTRAINT [fk_ActionAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ActionAnnotations_Annotations'
CREATE INDEX [IX_fk_ActionAnnotations_Annotations]
ON [dbo].[ActionAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [ActionID] in table 'ActionBies'
ALTER TABLE [dbo].[ActionBies]
ADD CONSTRAINT [fk_ActionPeople_Actions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[Actions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ActionPeople_Actions'
CREATE INDEX [IX_fk_ActionPeople_Actions]
ON [dbo].[ActionBies]
    ([ActionID]);
GO

-- Creating foreign key on [AffiliationID] in table 'ActionBies'
ALTER TABLE [dbo].[ActionBies]
ADD CONSTRAINT [fk_ActionPeople_Affiliations]
    FOREIGN KEY ([AffiliationID])
    REFERENCES [dbo].[Affiliations]
        ([AffiliationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ActionPeople_Affiliations'
CREATE INDEX [IX_fk_ActionPeople_Affiliations]
ON [dbo].[ActionBies]
    ([AffiliationID]);
GO

-- Creating foreign key on [ActionID] in table 'ActionDirectives'
ALTER TABLE [dbo].[ActionDirectives]
ADD CONSTRAINT [fk_ActionDirectives_Actions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[Actions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ActionDirectives_Actions'
CREATE INDEX [IX_fk_ActionDirectives_Actions]
ON [dbo].[ActionDirectives]
    ([ActionID]);
GO

-- Creating foreign key on [DirectiveID] in table 'ActionDirectives'
ALTER TABLE [dbo].[ActionDirectives]
ADD CONSTRAINT [fk_ActionDirectives_Directives]
    FOREIGN KEY ([DirectiveID])
    REFERENCES [dbo].[Directives]
        ([DirectiveID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ActionDirectives_Directives'
CREATE INDEX [IX_fk_ActionDirectives_Directives]
ON [dbo].[ActionDirectives]
    ([DirectiveID]);
GO

-- Creating foreign key on [ActionID] in table 'ActionExtensionPropertyValues'
ALTER TABLE [dbo].[ActionExtensionPropertyValues]
ADD CONSTRAINT [fk_ActionExtensionPropertyValues_Actions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[Actions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ActionExtensionPropertyValues_Actions'
CREATE INDEX [IX_fk_ActionExtensionPropertyValues_Actions]
ON [dbo].[ActionExtensionPropertyValues]
    ([ActionID]);
GO

-- Creating foreign key on [PropertyID] in table 'ActionExtensionPropertyValues'
ALTER TABLE [dbo].[ActionExtensionPropertyValues]
ADD CONSTRAINT [fk_ActionExtensionPropertyValues_ExtensionProperties]
    FOREIGN KEY ([PropertyID])
    REFERENCES [dbo].[ExtensionProperties]
        ([PropertyID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ActionExtensionPropertyValues_ExtensionProperties'
CREATE INDEX [IX_fk_ActionExtensionPropertyValues_ExtensionProperties]
ON [dbo].[ActionExtensionPropertyValues]
    ([PropertyID]);
GO

-- Creating foreign key on [ActionTypeCV] in table 'Actions'
ALTER TABLE [dbo].[Actions]
ADD CONSTRAINT [fk_Actions_CV_ActionType]
    FOREIGN KEY ([ActionTypeCV])
    REFERENCES [dbo].[CV_ActionType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Actions_CV_ActionType'
CREATE INDEX [IX_fk_Actions_CV_ActionType]
ON [dbo].[Actions]
    ([ActionTypeCV]);
GO

-- Creating foreign key on [MethodID] in table 'Actions'
ALTER TABLE [dbo].[Actions]
ADD CONSTRAINT [fk_Actions_Methods]
    FOREIGN KEY ([MethodID])
    REFERENCES [dbo].[Methods]
        ([MethodID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Actions_Methods'
CREATE INDEX [IX_fk_Actions_Methods]
ON [dbo].[Actions]
    ([MethodID]);
GO

-- Creating foreign key on [ActionID] in table 'CalibrationActions'
ALTER TABLE [dbo].[CalibrationActions]
ADD CONSTRAINT [fk_CalibrationActions_Actions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[Actions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ActionID] in table 'EquipmentUseds'
ALTER TABLE [dbo].[EquipmentUseds]
ADD CONSTRAINT [fk_EquipmentActions_Actions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[Actions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_EquipmentActions_Actions'
CREATE INDEX [IX_fk_EquipmentActions_Actions]
ON [dbo].[EquipmentUseds]
    ([ActionID]);
GO

-- Creating foreign key on [ActionID] in table 'FeatureActions'
ALTER TABLE [dbo].[FeatureActions]
ADD CONSTRAINT [fk_FeatureActions_Actions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[Actions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_FeatureActions_Actions'
CREATE INDEX [IX_fk_FeatureActions_Actions]
ON [dbo].[FeatureActions]
    ([ActionID]);
GO

-- Creating foreign key on [ActionID] in table 'MaintenanceActions'
ALTER TABLE [dbo].[MaintenanceActions]
ADD CONSTRAINT [fk_MaintenanceActions_Actions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[Actions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ActionID] in table 'RelatedActions'
ALTER TABLE [dbo].[RelatedActions]
ADD CONSTRAINT [fk_RelatedActions_Actions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[Actions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedActions_Actions'
CREATE INDEX [IX_fk_RelatedActions_Actions]
ON [dbo].[RelatedActions]
    ([ActionID]);
GO

-- Creating foreign key on [RelatedActionID] in table 'RelatedActions'
ALTER TABLE [dbo].[RelatedActions]
ADD CONSTRAINT [fk_RelatedActions_Actions_AreRelated]
    FOREIGN KEY ([RelatedActionID])
    REFERENCES [dbo].[Actions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedActions_Actions_AreRelated'
CREATE INDEX [IX_fk_RelatedActions_Actions_AreRelated]
ON [dbo].[RelatedActions]
    ([RelatedActionID]);
GO

-- Creating foreign key on [ActionID] in table 'Simulations'
ALTER TABLE [dbo].[Simulations]
ADD CONSTRAINT [fk_Simulations_Actions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[Actions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Simulations_Actions'
CREATE INDEX [IX_fk_Simulations_Actions]
ON [dbo].[Simulations]
    ([ActionID]);
GO

-- Creating foreign key on [OrganizationID] in table 'Affiliations'
ALTER TABLE [dbo].[Affiliations]
ADD CONSTRAINT [fk_Affiliations_Organizations]
    FOREIGN KEY ([OrganizationID])
    REFERENCES [dbo].[Organizations]
        ([OrganizationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Affiliations_Organizations'
CREATE INDEX [IX_fk_Affiliations_Organizations]
ON [dbo].[Affiliations]
    ([OrganizationID]);
GO

-- Creating foreign key on [PersonID] in table 'Affiliations'
ALTER TABLE [dbo].[Affiliations]
ADD CONSTRAINT [fk_Affiliations_People]
    FOREIGN KEY ([PersonID])
    REFERENCES [dbo].[People]
        ([PersonID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Affiliations_People'
CREATE INDEX [IX_fk_Affiliations_People]
ON [dbo].[Affiliations]
    ([PersonID]);
GO

-- Creating foreign key on [AffiliationID] in table 'DataloggerProgramFiles'
ALTER TABLE [dbo].[DataloggerProgramFiles]
ADD CONSTRAINT [fk_DataloggerProgramFiles_Affiliations]
    FOREIGN KEY ([AffiliationID])
    REFERENCES [dbo].[Affiliations]
        ([AffiliationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataloggerProgramFiles_Affiliations'
CREATE INDEX [IX_fk_DataloggerProgramFiles_Affiliations]
ON [dbo].[DataloggerProgramFiles]
    ([AffiliationID]);
GO

-- Creating foreign key on [AffiliationID] in table 'ModelAffiliations'
ALTER TABLE [dbo].[ModelAffiliations]
ADD CONSTRAINT [fk_ModelAffiliations_Affiliations]
    FOREIGN KEY ([AffiliationID])
    REFERENCES [dbo].[Affiliations]
        ([AffiliationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ModelAffiliations_Affiliations'
CREATE INDEX [IX_fk_ModelAffiliations_Affiliations]
ON [dbo].[ModelAffiliations]
    ([AffiliationID]);
GO

-- Creating foreign key on [CitationID] in table 'Annotations'
ALTER TABLE [dbo].[Annotations]
ADD CONSTRAINT [fk_Annotations_Citations]
    FOREIGN KEY ([CitationID])
    REFERENCES [dbo].[Citations]
        ([CitationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Annotations_Citations'
CREATE INDEX [IX_fk_Annotations_Citations]
ON [dbo].[Annotations]
    ([CitationID]);
GO

-- Creating foreign key on [AnnotationTypeCV] in table 'Annotations'
ALTER TABLE [dbo].[Annotations]
ADD CONSTRAINT [fk_Annotations_CV_AnnotationType]
    FOREIGN KEY ([AnnotationTypeCV])
    REFERENCES [dbo].[CV_AnnotationType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Annotations_CV_AnnotationType'
CREATE INDEX [IX_fk_Annotations_CV_AnnotationType]
ON [dbo].[Annotations]
    ([AnnotationTypeCV]);
GO

-- Creating foreign key on [AnnotatorID] in table 'Annotations'
ALTER TABLE [dbo].[Annotations]
ADD CONSTRAINT [fk_Annotations_People]
    FOREIGN KEY ([AnnotatorID])
    REFERENCES [dbo].[People]
        ([PersonID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Annotations_People'
CREATE INDEX [IX_fk_Annotations_People]
ON [dbo].[Annotations]
    ([AnnotatorID]);
GO

-- Creating foreign key on [AnnotationID] in table 'CategoricalResultValueAnnotations'
ALTER TABLE [dbo].[CategoricalResultValueAnnotations]
ADD CONSTRAINT [fk_CategoricalResultValueAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CategoricalResultValueAnnotations_Annotations'
CREATE INDEX [IX_fk_CategoricalResultValueAnnotations_Annotations]
ON [dbo].[CategoricalResultValueAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'EquipmentAnnotations'
ALTER TABLE [dbo].[EquipmentAnnotations]
ADD CONSTRAINT [fk_EquipmentAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_EquipmentAnnotations_Annotations'
CREATE INDEX [IX_fk_EquipmentAnnotations_Annotations]
ON [dbo].[EquipmentAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'MethodAnnotations'
ALTER TABLE [dbo].[MethodAnnotations]
ADD CONSTRAINT [fk_MethodAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MethodAnnotations_Annotations'
CREATE INDEX [IX_fk_MethodAnnotations_Annotations]
ON [dbo].[MethodAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'PointCoverageResultValueAnnotations'
ALTER TABLE [dbo].[PointCoverageResultValueAnnotations]
ADD CONSTRAINT [fk_PointCoverageResultValueAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResultValueAnnotations_Annotations'
CREATE INDEX [IX_fk_PointCoverageResultValueAnnotations_Annotations]
ON [dbo].[PointCoverageResultValueAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'ProfileResultValueAnnotations'
ALTER TABLE [dbo].[ProfileResultValueAnnotations]
ADD CONSTRAINT [fk_ProfileResultValueAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResultValueAnnotations_Annotations'
CREATE INDEX [IX_fk_ProfileResultValueAnnotations_Annotations]
ON [dbo].[ProfileResultValueAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'RelatedAnnotations'
ALTER TABLE [dbo].[RelatedAnnotations]
ADD CONSTRAINT [fk_RelatedAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedAnnotations_Annotations'
CREATE INDEX [IX_fk_RelatedAnnotations_Annotations]
ON [dbo].[RelatedAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [RelatedAnnotationID] in table 'RelatedAnnotations'
ALTER TABLE [dbo].[RelatedAnnotations]
ADD CONSTRAINT [fk_RelatedAnnotations_Annotations_AreRelated]
    FOREIGN KEY ([RelatedAnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedAnnotations_Annotations_AreRelated'
CREATE INDEX [IX_fk_RelatedAnnotations_Annotations_AreRelated]
ON [dbo].[RelatedAnnotations]
    ([RelatedAnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'ResultAnnotations'
ALTER TABLE [dbo].[ResultAnnotations]
ADD CONSTRAINT [fk_ResultAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ResultAnnotations_Annotations'
CREATE INDEX [IX_fk_ResultAnnotations_Annotations]
ON [dbo].[ResultAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'MeasurementResultValueAnnotations'
ALTER TABLE [dbo].[MeasurementResultValueAnnotations]
ADD CONSTRAINT [fk_ResultValueAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ResultValueAnnotations_Annotations'
CREATE INDEX [IX_fk_ResultValueAnnotations_Annotations]
ON [dbo].[MeasurementResultValueAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'SamplingFeatureAnnotations'
ALTER TABLE [dbo].[SamplingFeatureAnnotations]
ADD CONSTRAINT [fk_SamplingFeatureAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SamplingFeatureAnnotations_Annotations'
CREATE INDEX [IX_fk_SamplingFeatureAnnotations_Annotations]
ON [dbo].[SamplingFeatureAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'SectionResultValueAnnotations'
ALTER TABLE [dbo].[SectionResultValueAnnotations]
ADD CONSTRAINT [fk_SectionResultValueAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResultValueAnnotations_Annotations'
CREATE INDEX [IX_fk_SectionResultValueAnnotations_Annotations]
ON [dbo].[SectionResultValueAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'SpectraResultValueAnnotations'
ALTER TABLE [dbo].[SpectraResultValueAnnotations]
ADD CONSTRAINT [fk_SpectraResultValueAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResultValueAnnotations_Annotations'
CREATE INDEX [IX_fk_SpectraResultValueAnnotations_Annotations]
ON [dbo].[SpectraResultValueAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'TimeSeriesResultValueAnnotations'
ALTER TABLE [dbo].[TimeSeriesResultValueAnnotations]
ADD CONSTRAINT [fk_TimeSeriesResultValueAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResultValueAnnotations_Annotations'
CREATE INDEX [IX_fk_TimeSeriesResultValueAnnotations_Annotations]
ON [dbo].[TimeSeriesResultValueAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'TrajectoryResultValueAnnotations'
ALTER TABLE [dbo].[TrajectoryResultValueAnnotations]
ADD CONSTRAINT [fk_TrajectoryResultValueAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResultValueAnnotations_Annotations'
CREATE INDEX [IX_fk_TrajectoryResultValueAnnotations_Annotations]
ON [dbo].[TrajectoryResultValueAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [AnnotationID] in table 'TransectResultValueAnnotations'
ALTER TABLE [dbo].[TransectResultValueAnnotations]
ADD CONSTRAINT [fk_TransectResultValueAnnotations_Annotations]
    FOREIGN KEY ([AnnotationID])
    REFERENCES [dbo].[Annotations]
        ([AnnotationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResultValueAnnotations_Annotations'
CREATE INDEX [IX_fk_TransectResultValueAnnotations_Annotations]
ON [dbo].[TransectResultValueAnnotations]
    ([AnnotationID]);
GO

-- Creating foreign key on [CitationID] in table 'AuthorLists'
ALTER TABLE [dbo].[AuthorLists]
ADD CONSTRAINT [fk_AuthorLists_Citations]
    FOREIGN KEY ([CitationID])
    REFERENCES [dbo].[Citations]
        ([CitationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_AuthorLists_Citations'
CREATE INDEX [IX_fk_AuthorLists_Citations]
ON [dbo].[AuthorLists]
    ([CitationID]);
GO

-- Creating foreign key on [PersonID] in table 'AuthorLists'
ALTER TABLE [dbo].[AuthorLists]
ADD CONSTRAINT [fk_AuthorLists_People]
    FOREIGN KEY ([PersonID])
    REFERENCES [dbo].[People]
        ([PersonID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_AuthorLists_People'
CREATE INDEX [IX_fk_AuthorLists_People]
ON [dbo].[AuthorLists]
    ([PersonID]);
GO

-- Creating foreign key on [InstrumentOutputVariableID] in table 'CalibrationActions'
ALTER TABLE [dbo].[CalibrationActions]
ADD CONSTRAINT [fk_CalibrationActions_InstrumentOutputVariables]
    FOREIGN KEY ([InstrumentOutputVariableID])
    REFERENCES [dbo].[InstrumentOutputVariables]
        ([InstrumentOutputVariableID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CalibrationActions_InstrumentOutputVariables'
CREATE INDEX [IX_fk_CalibrationActions_InstrumentOutputVariables]
ON [dbo].[CalibrationActions]
    ([InstrumentOutputVariableID]);
GO

-- Creating foreign key on [ActionID] in table 'CalibrationReferenceEquipments'
ALTER TABLE [dbo].[CalibrationReferenceEquipments]
ADD CONSTRAINT [fk_CalibrationReferenceEquipment_CalibrationActions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[CalibrationActions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CalibrationReferenceEquipment_CalibrationActions'
CREATE INDEX [IX_fk_CalibrationReferenceEquipment_CalibrationActions]
ON [dbo].[CalibrationReferenceEquipments]
    ([ActionID]);
GO

-- Creating foreign key on [ActionID] in table 'CalibrationStandards'
ALTER TABLE [dbo].[CalibrationStandards]
ADD CONSTRAINT [fk_CalibrationStandards_CalibrationActions]
    FOREIGN KEY ([ActionID])
    REFERENCES [dbo].[CalibrationActions]
        ([ActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CalibrationStandards_CalibrationActions'
CREATE INDEX [IX_fk_CalibrationStandards_CalibrationActions]
ON [dbo].[CalibrationStandards]
    ([ActionID]);
GO

-- Creating foreign key on [EquipmentID] in table 'CalibrationReferenceEquipments'
ALTER TABLE [dbo].[CalibrationReferenceEquipments]
ADD CONSTRAINT [fk_CalibrationReferenceEquipment_Equipment]
    FOREIGN KEY ([EquipmentID])
    REFERENCES [dbo].[Equipments]
        ([EquipmentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CalibrationReferenceEquipment_Equipment'
CREATE INDEX [IX_fk_CalibrationReferenceEquipment_Equipment]
ON [dbo].[CalibrationReferenceEquipments]
    ([EquipmentID]);
GO

-- Creating foreign key on [ReferenceMaterialID] in table 'CalibrationStandards'
ALTER TABLE [dbo].[CalibrationStandards]
ADD CONSTRAINT [fk_FieldCalibrationStandards_ReferenceMaterials]
    FOREIGN KEY ([ReferenceMaterialID])
    REFERENCES [dbo].[ReferenceMaterials]
        ([ReferenceMaterialID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_FieldCalibrationStandards_ReferenceMaterials'
CREATE INDEX [IX_fk_FieldCalibrationStandards_ReferenceMaterials]
ON [dbo].[CalibrationStandards]
    ([ReferenceMaterialID]);
GO

-- Creating foreign key on [QualityCodeCV] in table 'CategoricalResults'
ALTER TABLE [dbo].[CategoricalResults]
ADD CONSTRAINT [fk_CategoricalResults_CV_QualityCode]
    FOREIGN KEY ([QualityCodeCV])
    REFERENCES [dbo].[CV_QualityCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CategoricalResults_CV_QualityCode'
CREATE INDEX [IX_fk_CategoricalResults_CV_QualityCode]
ON [dbo].[CategoricalResults]
    ([QualityCodeCV]);
GO

-- Creating foreign key on [ResultID] in table 'CategoricalResults'
ALTER TABLE [dbo].[CategoricalResults]
ADD CONSTRAINT [fk_CategoricalResults_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SpatialReferenceID] in table 'CategoricalResults'
ALTER TABLE [dbo].[CategoricalResults]
ADD CONSTRAINT [fk_CategoricalResults_SpatialReferences]
    FOREIGN KEY ([SpatialReferenceID])
    REFERENCES [dbo].[SpatialReferences]
        ([SpatialReferenceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CategoricalResults_SpatialReferences'
CREATE INDEX [IX_fk_CategoricalResults_SpatialReferences]
ON [dbo].[CategoricalResults]
    ([SpatialReferenceID]);
GO

-- Creating foreign key on [ResultID] in table 'CategoricalResultValues'
ALTER TABLE [dbo].[CategoricalResultValues]
ADD CONSTRAINT [fk_CategoricalResultValues_CategoricalResults]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[CategoricalResults]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CategoricalResultValues_CategoricalResults'
CREATE INDEX [IX_fk_CategoricalResultValues_CategoricalResults]
ON [dbo].[CategoricalResultValues]
    ([ResultID]);
GO

-- Creating foreign key on [ValueID] in table 'CategoricalResultValueAnnotations'
ALTER TABLE [dbo].[CategoricalResultValueAnnotations]
ADD CONSTRAINT [fk_CategoricalResultValueAnnotations_CategoricalResultValues]
    FOREIGN KEY ([ValueID])
    REFERENCES [dbo].[CategoricalResultValues]
        ([ValueID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CategoricalResultValueAnnotations_CategoricalResultValues'
CREATE INDEX [IX_fk_CategoricalResultValueAnnotations_CategoricalResultValues]
ON [dbo].[CategoricalResultValueAnnotations]
    ([ValueID]);
GO

-- Creating foreign key on [CitationID] in table 'CitationExtensionPropertyValues'
ALTER TABLE [dbo].[CitationExtensionPropertyValues]
ADD CONSTRAINT [fk_CitationExtensionPropertyValues_Citations]
    FOREIGN KEY ([CitationID])
    REFERENCES [dbo].[Citations]
        ([CitationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CitationExtensionPropertyValues_Citations'
CREATE INDEX [IX_fk_CitationExtensionPropertyValues_Citations]
ON [dbo].[CitationExtensionPropertyValues]
    ([CitationID]);
GO

-- Creating foreign key on [PropertyID] in table 'CitationExtensionPropertyValues'
ALTER TABLE [dbo].[CitationExtensionPropertyValues]
ADD CONSTRAINT [fk_CitationExtensionPropertyValues_ExtensionProperties]
    FOREIGN KEY ([PropertyID])
    REFERENCES [dbo].[ExtensionProperties]
        ([PropertyID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CitationExtensionPropertyValues_ExtensionProperties'
CREATE INDEX [IX_fk_CitationExtensionPropertyValues_ExtensionProperties]
ON [dbo].[CitationExtensionPropertyValues]
    ([PropertyID]);
GO

-- Creating foreign key on [CitationID] in table 'CitationExternalIdentifiers'
ALTER TABLE [dbo].[CitationExternalIdentifiers]
ADD CONSTRAINT [fk_CitationExternalIdentifiers_Citations]
    FOREIGN KEY ([CitationID])
    REFERENCES [dbo].[Citations]
        ([CitationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CitationExternalIdentifiers_Citations'
CREATE INDEX [IX_fk_CitationExternalIdentifiers_Citations]
ON [dbo].[CitationExternalIdentifiers]
    ([CitationID]);
GO

-- Creating foreign key on [ExternalIdentifierSystemID] in table 'CitationExternalIdentifiers'
ALTER TABLE [dbo].[CitationExternalIdentifiers]
ADD CONSTRAINT [fk_CitationExternalIdentifiers_ExternalIdentifierSystems]
    FOREIGN KEY ([ExternalIdentifierSystemID])
    REFERENCES [dbo].[ExternalIdentifierSystems]
        ([ExternalIdentifierSystemID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_CitationExternalIdentifiers_ExternalIdentifierSystems'
CREATE INDEX [IX_fk_CitationExternalIdentifiers_ExternalIdentifierSystems]
ON [dbo].[CitationExternalIdentifiers]
    ([ExternalIdentifierSystemID]);
GO

-- Creating foreign key on [CitationID] in table 'DatasetCitations'
ALTER TABLE [dbo].[DatasetCitations]
ADD CONSTRAINT [fk_DataSetCitations_Citations]
    FOREIGN KEY ([CitationID])
    REFERENCES [dbo].[Citations]
        ([CitationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataSetCitations_Citations'
CREATE INDEX [IX_fk_DataSetCitations_Citations]
ON [dbo].[DatasetCitations]
    ([CitationID]);
GO

-- Creating foreign key on [CitationID] in table 'MethodCitations'
ALTER TABLE [dbo].[MethodCitations]
ADD CONSTRAINT [fk_MethodCitations_Citations]
    FOREIGN KEY ([CitationID])
    REFERENCES [dbo].[Citations]
        ([CitationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MethodCitations_Citations'
CREATE INDEX [IX_fk_MethodCitations_Citations]
ON [dbo].[MethodCitations]
    ([CitationID]);
GO

-- Creating foreign key on [CitationID] in table 'ReferenceMaterialValues'
ALTER TABLE [dbo].[ReferenceMaterialValues]
ADD CONSTRAINT [fk_ReferenceMaterialValues_Citations]
    FOREIGN KEY ([CitationID])
    REFERENCES [dbo].[Citations]
        ([CitationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ReferenceMaterialValues_Citations'
CREATE INDEX [IX_fk_ReferenceMaterialValues_Citations]
ON [dbo].[ReferenceMaterialValues]
    ([CitationID]);
GO

-- Creating foreign key on [CitationID] in table 'RelatedCitations'
ALTER TABLE [dbo].[RelatedCitations]
ADD CONSTRAINT [fk_RelatedCitations_Citations]
    FOREIGN KEY ([CitationID])
    REFERENCES [dbo].[Citations]
        ([CitationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedCitations_Citations'
CREATE INDEX [IX_fk_RelatedCitations_Citations]
ON [dbo].[RelatedCitations]
    ([CitationID]);
GO

-- Creating foreign key on [RelatedCitationID] in table 'RelatedCitations'
ALTER TABLE [dbo].[RelatedCitations]
ADD CONSTRAINT [fk_RelatedCitations_Citations_AreRelated]
    FOREIGN KEY ([RelatedCitationID])
    REFERENCES [dbo].[Citations]
        ([CitationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedCitations_Citations_AreRelated'
CREATE INDEX [IX_fk_RelatedCitations_Citations_AreRelated]
ON [dbo].[RelatedCitations]
    ([RelatedCitationID]);
GO

-- Creating foreign key on [CitationID] in table 'SpecimenTaxonomicClassifiers'
ALTER TABLE [dbo].[SpecimenTaxonomicClassifiers]
ADD CONSTRAINT [fk_SpecimenTaxonomicClassifiers_Citations]
    FOREIGN KEY ([CitationID])
    REFERENCES [dbo].[Citations]
        ([CitationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpecimenTaxonomicClassifiers_Citations'
CREATE INDEX [IX_fk_SpecimenTaxonomicClassifiers_Citations]
ON [dbo].[SpecimenTaxonomicClassifiers]
    ([CitationID]);
GO

-- Creating foreign key on [AggregationStatisticCV] in table 'DataloggerFileColumns'
ALTER TABLE [dbo].[DataloggerFileColumns]
ADD CONSTRAINT [fk_DataloggerFileColumns_CV_AggregationStatistic]
    FOREIGN KEY ([AggregationStatisticCV])
    REFERENCES [dbo].[CV_AggregationStatistic]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataloggerFileColumns_CV_AggregationStatistic'
CREATE INDEX [IX_fk_DataloggerFileColumns_CV_AggregationStatistic]
ON [dbo].[DataloggerFileColumns]
    ([AggregationStatisticCV]);
GO

-- Creating foreign key on [AggregationStatisticCV] in table 'MeasurementResults'
ALTER TABLE [dbo].[MeasurementResults]
ADD CONSTRAINT [fk_MeasurementResults_CV_AggregationStatistic]
    FOREIGN KEY ([AggregationStatisticCV])
    REFERENCES [dbo].[CV_AggregationStatistic]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MeasurementResults_CV_AggregationStatistic'
CREATE INDEX [IX_fk_MeasurementResults_CV_AggregationStatistic]
ON [dbo].[MeasurementResults]
    ([AggregationStatisticCV]);
GO

-- Creating foreign key on [AggregationStatisticCV] in table 'PointCoverageResults'
ALTER TABLE [dbo].[PointCoverageResults]
ADD CONSTRAINT [fk_PointCoverageResults_CV_AggregationStatistic]
    FOREIGN KEY ([AggregationStatisticCV])
    REFERENCES [dbo].[CV_AggregationStatistic]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResults_CV_AggregationStatistic'
CREATE INDEX [IX_fk_PointCoverageResults_CV_AggregationStatistic]
ON [dbo].[PointCoverageResults]
    ([AggregationStatisticCV]);
GO

-- Creating foreign key on [AggregationStatisticCV] in table 'ProfileResults'
ALTER TABLE [dbo].[ProfileResults]
ADD CONSTRAINT [fk_ProfileResults_CV_AggregationStatistic]
    FOREIGN KEY ([AggregationStatisticCV])
    REFERENCES [dbo].[CV_AggregationStatistic]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResults_CV_AggregationStatistic'
CREATE INDEX [IX_fk_ProfileResults_CV_AggregationStatistic]
ON [dbo].[ProfileResults]
    ([AggregationStatisticCV]);
GO

-- Creating foreign key on [AggregationStatisticCV] in table 'SectionResults'
ALTER TABLE [dbo].[SectionResults]
ADD CONSTRAINT [fk_SectionResults_CV_AggregationStatistic]
    FOREIGN KEY ([AggregationStatisticCV])
    REFERENCES [dbo].[CV_AggregationStatistic]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResults_CV_AggregationStatistic'
CREATE INDEX [IX_fk_SectionResults_CV_AggregationStatistic]
ON [dbo].[SectionResults]
    ([AggregationStatisticCV]);
GO

-- Creating foreign key on [AggregationStatisticCV] in table 'SectionResultValues'
ALTER TABLE [dbo].[SectionResultValues]
ADD CONSTRAINT [fk_SectionResultValues_CV_AggregationStatistic]
    FOREIGN KEY ([AggregationStatisticCV])
    REFERENCES [dbo].[CV_AggregationStatistic]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResultValues_CV_AggregationStatistic'
CREATE INDEX [IX_fk_SectionResultValues_CV_AggregationStatistic]
ON [dbo].[SectionResultValues]
    ([AggregationStatisticCV]);
GO

-- Creating foreign key on [AggregationStatisticCV] in table 'SpectraResults'
ALTER TABLE [dbo].[SpectraResults]
ADD CONSTRAINT [fk_SpectraResults_CV_AggregationStatistic]
    FOREIGN KEY ([AggregationStatisticCV])
    REFERENCES [dbo].[CV_AggregationStatistic]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResults_CV_AggregationStatistic'
CREATE INDEX [IX_fk_SpectraResults_CV_AggregationStatistic]
ON [dbo].[SpectraResults]
    ([AggregationStatisticCV]);
GO

-- Creating foreign key on [AggregationStatisticCV] in table 'TimeSeriesResults'
ALTER TABLE [dbo].[TimeSeriesResults]
ADD CONSTRAINT [fk_TimeSeriesResults_CV_AggregationStatistic]
    FOREIGN KEY ([AggregationStatisticCV])
    REFERENCES [dbo].[CV_AggregationStatistic]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResults_CV_AggregationStatistic'
CREATE INDEX [IX_fk_TimeSeriesResults_CV_AggregationStatistic]
ON [dbo].[TimeSeriesResults]
    ([AggregationStatisticCV]);
GO

-- Creating foreign key on [AggregationStatisticCV] in table 'TrajectoryResults'
ALTER TABLE [dbo].[TrajectoryResults]
ADD CONSTRAINT [fk_TrajectoryResults_CV_AggregationStatistic]
    FOREIGN KEY ([AggregationStatisticCV])
    REFERENCES [dbo].[CV_AggregationStatistic]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResults_CV_AggregationStatistic'
CREATE INDEX [IX_fk_TrajectoryResults_CV_AggregationStatistic]
ON [dbo].[TrajectoryResults]
    ([AggregationStatisticCV]);
GO

-- Creating foreign key on [AggregationStatisticCV] in table 'TransectResults'
ALTER TABLE [dbo].[TransectResults]
ADD CONSTRAINT [fk_TransectResults_CV_AggregationStatistic]
    FOREIGN KEY ([AggregationStatisticCV])
    REFERENCES [dbo].[CV_AggregationStatistic]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResults_CV_AggregationStatistic'
CREATE INDEX [IX_fk_TransectResults_CV_AggregationStatistic]
ON [dbo].[TransectResults]
    ([AggregationStatisticCV]);
GO

-- Creating foreign key on [AggregationStatisticCV] in table 'TransectResultValues'
ALTER TABLE [dbo].[TransectResultValues]
ADD CONSTRAINT [fk_TransectResultValues_CV_AggregationStatistic]
    FOREIGN KEY ([AggregationStatisticCV])
    REFERENCES [dbo].[CV_AggregationStatistic]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResultValues_CV_AggregationStatistic'
CREATE INDEX [IX_fk_TransectResultValues_CV_AggregationStatistic]
ON [dbo].[TransectResultValues]
    ([AggregationStatisticCV]);
GO

-- Creating foreign key on [CensorCodeCV] in table 'MeasurementResults'
ALTER TABLE [dbo].[MeasurementResults]
ADD CONSTRAINT [fk_MeasurementResults_CV_CensorCode]
    FOREIGN KEY ([CensorCodeCV])
    REFERENCES [dbo].[CV_CensorCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MeasurementResults_CV_CensorCode'
CREATE INDEX [IX_fk_MeasurementResults_CV_CensorCode]
ON [dbo].[MeasurementResults]
    ([CensorCodeCV]);
GO

-- Creating foreign key on [CensorCodeCV] in table 'PointCoverageResultValues'
ALTER TABLE [dbo].[PointCoverageResultValues]
ADD CONSTRAINT [fk_PointCoverageResultValues_CV_CensorCode]
    FOREIGN KEY ([CensorCodeCV])
    REFERENCES [dbo].[CV_CensorCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResultValues_CV_CensorCode'
CREATE INDEX [IX_fk_PointCoverageResultValues_CV_CensorCode]
ON [dbo].[PointCoverageResultValues]
    ([CensorCodeCV]);
GO

-- Creating foreign key on [CensorCodeCV] in table 'ProfileResultValues'
ALTER TABLE [dbo].[ProfileResultValues]
ADD CONSTRAINT [fk_ProfileResultValues_CV_CensorCode]
    FOREIGN KEY ([CensorCodeCV])
    REFERENCES [dbo].[CV_CensorCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResultValues_CV_CensorCode'
CREATE INDEX [IX_fk_ProfileResultValues_CV_CensorCode]
ON [dbo].[ProfileResultValues]
    ([CensorCodeCV]);
GO

-- Creating foreign key on [CensorCodeCV] in table 'SectionResultValues'
ALTER TABLE [dbo].[SectionResultValues]
ADD CONSTRAINT [fk_SectionResultValues_CV_CensorCode]
    FOREIGN KEY ([CensorCodeCV])
    REFERENCES [dbo].[CV_CensorCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResultValues_CV_CensorCode'
CREATE INDEX [IX_fk_SectionResultValues_CV_CensorCode]
ON [dbo].[SectionResultValues]
    ([CensorCodeCV]);
GO

-- Creating foreign key on [CensorCodeCV] in table 'SpectraResultValues'
ALTER TABLE [dbo].[SpectraResultValues]
ADD CONSTRAINT [fk_SpectraResultValues_CV_CensorCode]
    FOREIGN KEY ([CensorCodeCV])
    REFERENCES [dbo].[CV_CensorCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResultValues_CV_CensorCode'
CREATE INDEX [IX_fk_SpectraResultValues_CV_CensorCode]
ON [dbo].[SpectraResultValues]
    ([CensorCodeCV]);
GO

-- Creating foreign key on [CensorCodeCV] in table 'TimeSeriesResultValues'
ALTER TABLE [dbo].[TimeSeriesResultValues]
ADD CONSTRAINT [fk_TimeSeriesResultValues_CV_CensorCode]
    FOREIGN KEY ([CensorCodeCV])
    REFERENCES [dbo].[CV_CensorCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResultValues_CV_CensorCode'
CREATE INDEX [IX_fk_TimeSeriesResultValues_CV_CensorCode]
ON [dbo].[TimeSeriesResultValues]
    ([CensorCodeCV]);
GO

-- Creating foreign key on [CensorCodeCV] in table 'TrajectoryResultValues'
ALTER TABLE [dbo].[TrajectoryResultValues]
ADD CONSTRAINT [fk_TrajectoryResultValues_CV_CensorCode]
    FOREIGN KEY ([CensorCodeCV])
    REFERENCES [dbo].[CV_CensorCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResultValues_CV_CensorCode'
CREATE INDEX [IX_fk_TrajectoryResultValues_CV_CensorCode]
ON [dbo].[TrajectoryResultValues]
    ([CensorCodeCV]);
GO

-- Creating foreign key on [CensorCodeCV] in table 'TransectResultValues'
ALTER TABLE [dbo].[TransectResultValues]
ADD CONSTRAINT [fk_TransectResultValues_CV_CensorCode]
    FOREIGN KEY ([CensorCodeCV])
    REFERENCES [dbo].[CV_CensorCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResultValues_CV_CensorCode'
CREATE INDEX [IX_fk_TransectResultValues_CV_CensorCode]
ON [dbo].[TransectResultValues]
    ([CensorCodeCV]);
GO

-- Creating foreign key on [DataQualityTypeCV] in table 'DataQualities'
ALTER TABLE [dbo].[DataQualities]
ADD CONSTRAINT [fk_DataQuality_CV_DataQualityType]
    FOREIGN KEY ([DataQualityTypeCV])
    REFERENCES [dbo].[CV_DataQualityType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataQuality_CV_DataQualityType'
CREATE INDEX [IX_fk_DataQuality_CV_DataQualityType]
ON [dbo].[DataQualities]
    ([DataQualityTypeCV]);
GO

-- Creating foreign key on [DatasetTypeCV] in table 'Datasets'
ALTER TABLE [dbo].[Datasets]
ADD CONSTRAINT [fk_Datasets_CV_DatasetTypeCV]
    FOREIGN KEY ([DatasetTypeCV])
    REFERENCES [dbo].[CV_DatasetTypeCV]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Datasets_CV_DatasetTypeCV'
CREATE INDEX [IX_fk_Datasets_CV_DatasetTypeCV]
ON [dbo].[Datasets]
    ([DatasetTypeCV]);
GO

-- Creating foreign key on [DirectiveTypeCV] in table 'Directives'
ALTER TABLE [dbo].[Directives]
ADD CONSTRAINT [fk_Directives_CV_DirectiveType]
    FOREIGN KEY ([DirectiveTypeCV])
    REFERENCES [dbo].[CV_DirectiveType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Directives_CV_DirectiveType'
CREATE INDEX [IX_fk_Directives_CV_DirectiveType]
ON [dbo].[Directives]
    ([DirectiveTypeCV]);
GO

-- Creating foreign key on [ElevationDatumCV] in table 'SamplingFeatures'
ALTER TABLE [dbo].[SamplingFeatures]
ADD CONSTRAINT [fk_SamplingFeatures_CV_ElevationDatum]
    FOREIGN KEY ([ElevationDatumCV])
    REFERENCES [dbo].[CV_ElevationDatum]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SamplingFeatures_CV_ElevationDatum'
CREATE INDEX [IX_fk_SamplingFeatures_CV_ElevationDatum]
ON [dbo].[SamplingFeatures]
    ([ElevationDatumCV]);
GO

-- Creating foreign key on [EquipmentTypeCV] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [fk_Equipment_CV_EquipmentType]
    FOREIGN KEY ([EquipmentTypeCV])
    REFERENCES [dbo].[CV_EquipmentType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Equipment_CV_EquipmentType'
CREATE INDEX [IX_fk_Equipment_CV_EquipmentType]
ON [dbo].[Equipments]
    ([EquipmentTypeCV]);
GO

-- Creating foreign key on [MethodTypeCV] in table 'Methods'
ALTER TABLE [dbo].[Methods]
ADD CONSTRAINT [fk_Methods_CV_MethodType]
    FOREIGN KEY ([MethodTypeCV])
    REFERENCES [dbo].[CV_MethodType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Methods_CV_MethodType'
CREATE INDEX [IX_fk_Methods_CV_MethodType]
ON [dbo].[Methods]
    ([MethodTypeCV]);
GO

-- Creating foreign key on [OrganizationTypeCV] in table 'Organizations'
ALTER TABLE [dbo].[Organizations]
ADD CONSTRAINT [fk_Organizations_CV_OrganizationType]
    FOREIGN KEY ([OrganizationTypeCV])
    REFERENCES [dbo].[CV_OrganizationType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Organizations_CV_OrganizationType'
CREATE INDEX [IX_fk_Organizations_CV_OrganizationType]
ON [dbo].[Organizations]
    ([OrganizationTypeCV]);
GO

-- Creating foreign key on [PropertyDataTypeCV] in table 'ExtensionProperties'
ALTER TABLE [dbo].[ExtensionProperties]
ADD CONSTRAINT [fk_ExtensionProperties_CV_PropertyDataType]
    FOREIGN KEY ([PropertyDataTypeCV])
    REFERENCES [dbo].[CV_PropertyDataType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ExtensionProperties_CV_PropertyDataType'
CREATE INDEX [IX_fk_ExtensionProperties_CV_PropertyDataType]
ON [dbo].[ExtensionProperties]
    ([PropertyDataTypeCV]);
GO

-- Creating foreign key on [QualityCodeCV] in table 'MeasurementResults'
ALTER TABLE [dbo].[MeasurementResults]
ADD CONSTRAINT [fk_MeasurementResults_CV_QualityCode]
    FOREIGN KEY ([QualityCodeCV])
    REFERENCES [dbo].[CV_QualityCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MeasurementResults_CV_QualityCode'
CREATE INDEX [IX_fk_MeasurementResults_CV_QualityCode]
ON [dbo].[MeasurementResults]
    ([QualityCodeCV]);
GO

-- Creating foreign key on [QualityCodeCV] in table 'PointCoverageResultValues'
ALTER TABLE [dbo].[PointCoverageResultValues]
ADD CONSTRAINT [fk_PointCoverageResultValues_CV_QualityCode]
    FOREIGN KEY ([QualityCodeCV])
    REFERENCES [dbo].[CV_QualityCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResultValues_CV_QualityCode'
CREATE INDEX [IX_fk_PointCoverageResultValues_CV_QualityCode]
ON [dbo].[PointCoverageResultValues]
    ([QualityCodeCV]);
GO

-- Creating foreign key on [QualityCodeCV] in table 'ProfileResultValues'
ALTER TABLE [dbo].[ProfileResultValues]
ADD CONSTRAINT [fk_ProfileResultValues_CV_QualityCode]
    FOREIGN KEY ([QualityCodeCV])
    REFERENCES [dbo].[CV_QualityCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResultValues_CV_QualityCode'
CREATE INDEX [IX_fk_ProfileResultValues_CV_QualityCode]
ON [dbo].[ProfileResultValues]
    ([QualityCodeCV]);
GO

-- Creating foreign key on [QualityCodeCV] in table 'SectionResultValues'
ALTER TABLE [dbo].[SectionResultValues]
ADD CONSTRAINT [fk_SectionResultValues_CV_QualityCode]
    FOREIGN KEY ([QualityCodeCV])
    REFERENCES [dbo].[CV_QualityCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResultValues_CV_QualityCode'
CREATE INDEX [IX_fk_SectionResultValues_CV_QualityCode]
ON [dbo].[SectionResultValues]
    ([QualityCodeCV]);
GO

-- Creating foreign key on [QualityCodeCV] in table 'SpectraResultValues'
ALTER TABLE [dbo].[SpectraResultValues]
ADD CONSTRAINT [fk_SpectraResultValues_CV_QualityCode]
    FOREIGN KEY ([QualityCodeCV])
    REFERENCES [dbo].[CV_QualityCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResultValues_CV_QualityCode'
CREATE INDEX [IX_fk_SpectraResultValues_CV_QualityCode]
ON [dbo].[SpectraResultValues]
    ([QualityCodeCV]);
GO

-- Creating foreign key on [QualityCodeCV] in table 'TimeSeriesResultValues'
ALTER TABLE [dbo].[TimeSeriesResultValues]
ADD CONSTRAINT [fk_TimeSeriesResultValues_CV_QualityCode]
    FOREIGN KEY ([QualityCodeCV])
    REFERENCES [dbo].[CV_QualityCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResultValues_CV_QualityCode'
CREATE INDEX [IX_fk_TimeSeriesResultValues_CV_QualityCode]
ON [dbo].[TimeSeriesResultValues]
    ([QualityCodeCV]);
GO

-- Creating foreign key on [QualityCodeCV] in table 'TrajectoryResultValues'
ALTER TABLE [dbo].[TrajectoryResultValues]
ADD CONSTRAINT [fk_TrajectoryResultValues_CV_QualityCode]
    FOREIGN KEY ([QualityCodeCV])
    REFERENCES [dbo].[CV_QualityCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResultValues_CV_QualityCode'
CREATE INDEX [IX_fk_TrajectoryResultValues_CV_QualityCode]
ON [dbo].[TrajectoryResultValues]
    ([QualityCodeCV]);
GO

-- Creating foreign key on [QualityCodeCV] in table 'TransectResultValues'
ALTER TABLE [dbo].[TransectResultValues]
ADD CONSTRAINT [fk_TransectResultValues_CV_QualityCode]
    FOREIGN KEY ([QualityCodeCV])
    REFERENCES [dbo].[CV_QualityCode]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResultValues_CV_QualityCode'
CREATE INDEX [IX_fk_TransectResultValues_CV_QualityCode]
ON [dbo].[TransectResultValues]
    ([QualityCodeCV]);
GO

-- Creating foreign key on [ReferenceMaterialMediumCV] in table 'ReferenceMaterials'
ALTER TABLE [dbo].[ReferenceMaterials]
ADD CONSTRAINT [fk_ReferenceMaterials_CV_ReferenceMaterialMedium]
    FOREIGN KEY ([ReferenceMaterialMediumCV])
    REFERENCES [dbo].[CV_ReferenceMaterialMedium]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ReferenceMaterials_CV_ReferenceMaterialMedium'
CREATE INDEX [IX_fk_ReferenceMaterials_CV_ReferenceMaterialMedium]
ON [dbo].[ReferenceMaterials]
    ([ReferenceMaterialMediumCV]);
GO

-- Creating foreign key on [RelationshipTypeCV] in table 'DatasetCitations'
ALTER TABLE [dbo].[DatasetCitations]
ADD CONSTRAINT [fk_DatasetCitations_CV_RelationshipType]
    FOREIGN KEY ([RelationshipTypeCV])
    REFERENCES [dbo].[CV_RelationshipType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DatasetCitations_CV_RelationshipType'
CREATE INDEX [IX_fk_DatasetCitations_CV_RelationshipType]
ON [dbo].[DatasetCitations]
    ([RelationshipTypeCV]);
GO

-- Creating foreign key on [RelationshipTypeCV] in table 'MethodCitations'
ALTER TABLE [dbo].[MethodCitations]
ADD CONSTRAINT [fk_MethodCitations_CV_RelationshipType]
    FOREIGN KEY ([RelationshipTypeCV])
    REFERENCES [dbo].[CV_RelationshipType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MethodCitations_CV_RelationshipType'
CREATE INDEX [IX_fk_MethodCitations_CV_RelationshipType]
ON [dbo].[MethodCitations]
    ([RelationshipTypeCV]);
GO

-- Creating foreign key on [RelationshipTypeCV] in table 'RelatedActions'
ALTER TABLE [dbo].[RelatedActions]
ADD CONSTRAINT [fk_RelatedActions_CV_RelationshipType]
    FOREIGN KEY ([RelationshipTypeCV])
    REFERENCES [dbo].[CV_RelationshipType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedActions_CV_RelationshipType'
CREATE INDEX [IX_fk_RelatedActions_CV_RelationshipType]
ON [dbo].[RelatedActions]
    ([RelationshipTypeCV]);
GO

-- Creating foreign key on [RelationshipTypeCV] in table 'RelatedAnnotations'
ALTER TABLE [dbo].[RelatedAnnotations]
ADD CONSTRAINT [fk_RelatedAnnotations_CV_RelationshipType]
    FOREIGN KEY ([RelationshipTypeCV])
    REFERENCES [dbo].[CV_RelationshipType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedAnnotations_CV_RelationshipType'
CREATE INDEX [IX_fk_RelatedAnnotations_CV_RelationshipType]
ON [dbo].[RelatedAnnotations]
    ([RelationshipTypeCV]);
GO

-- Creating foreign key on [RelationshipTypeCV] in table 'RelatedCitations'
ALTER TABLE [dbo].[RelatedCitations]
ADD CONSTRAINT [fk_RelatedCitations_CV_RelationshipType]
    FOREIGN KEY ([RelationshipTypeCV])
    REFERENCES [dbo].[CV_RelationshipType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedCitations_CV_RelationshipType'
CREATE INDEX [IX_fk_RelatedCitations_CV_RelationshipType]
ON [dbo].[RelatedCitations]
    ([RelationshipTypeCV]);
GO

-- Creating foreign key on [RelationshipTypeCV] in table 'RelatedDatasets'
ALTER TABLE [dbo].[RelatedDatasets]
ADD CONSTRAINT [fk_RelatedDatasets_CV_RelationshipType]
    FOREIGN KEY ([RelationshipTypeCV])
    REFERENCES [dbo].[CV_RelationshipType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedDatasets_CV_RelationshipType'
CREATE INDEX [IX_fk_RelatedDatasets_CV_RelationshipType]
ON [dbo].[RelatedDatasets]
    ([RelationshipTypeCV]);
GO

-- Creating foreign key on [RelationshipTypeCV] in table 'RelatedEquipments'
ALTER TABLE [dbo].[RelatedEquipments]
ADD CONSTRAINT [fk_RelatedEquipment_CV_RelationshipType]
    FOREIGN KEY ([RelationshipTypeCV])
    REFERENCES [dbo].[CV_RelationshipType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedEquipment_CV_RelationshipType'
CREATE INDEX [IX_fk_RelatedEquipment_CV_RelationshipType]
ON [dbo].[RelatedEquipments]
    ([RelationshipTypeCV]);
GO

-- Creating foreign key on [RelationshipTypeCV] in table 'RelatedFeatures'
ALTER TABLE [dbo].[RelatedFeatures]
ADD CONSTRAINT [fk_RelatedFeatures_CV_RelationshipType]
    FOREIGN KEY ([RelationshipTypeCV])
    REFERENCES [dbo].[CV_RelationshipType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedFeatures_CV_RelationshipType'
CREATE INDEX [IX_fk_RelatedFeatures_CV_RelationshipType]
ON [dbo].[RelatedFeatures]
    ([RelationshipTypeCV]);
GO

-- Creating foreign key on [RelationshipTypeCV] in table 'RelatedModels'
ALTER TABLE [dbo].[RelatedModels]
ADD CONSTRAINT [fk_RelatedModels_CV_RelationshipType]
    FOREIGN KEY ([RelationshipTypeCV])
    REFERENCES [dbo].[CV_RelationshipType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedModels_CV_RelationshipType'
CREATE INDEX [IX_fk_RelatedModels_CV_RelationshipType]
ON [dbo].[RelatedModels]
    ([RelationshipTypeCV]);
GO

-- Creating foreign key on [RelationshipTypeCV] in table 'RelatedResults'
ALTER TABLE [dbo].[RelatedResults]
ADD CONSTRAINT [fk_RelatedResults_CV_RelationshipType]
    FOREIGN KEY ([RelationshipTypeCV])
    REFERENCES [dbo].[CV_RelationshipType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedResults_CV_RelationshipType'
CREATE INDEX [IX_fk_RelatedResults_CV_RelationshipType]
ON [dbo].[RelatedResults]
    ([RelationshipTypeCV]);
GO

-- Creating foreign key on [ResultTypeCV] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [fk_Results_CV_ResultType]
    FOREIGN KEY ([ResultTypeCV])
    REFERENCES [dbo].[CV_ResultType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Results_CV_ResultType'
CREATE INDEX [IX_fk_Results_CV_ResultType]
ON [dbo].[Results]
    ([ResultTypeCV]);
GO

-- Creating foreign key on [SampledMediumCV] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [fk_Results_CV_SampledMedium]
    FOREIGN KEY ([SampledMediumCV])
    REFERENCES [dbo].[CV_SampledMedium]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Results_CV_SampledMedium'
CREATE INDEX [IX_fk_Results_CV_SampledMedium]
ON [dbo].[Results]
    ([SampledMediumCV]);
GO

-- Creating foreign key on [SamplingFeatureGeotypeCV] in table 'SamplingFeatures'
ALTER TABLE [dbo].[SamplingFeatures]
ADD CONSTRAINT [fk_SamplingFeatures_CV_SamplingFeatureGeoType]
    FOREIGN KEY ([SamplingFeatureGeotypeCV])
    REFERENCES [dbo].[CV_SamplingFeatureGeoType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SamplingFeatures_CV_SamplingFeatureGeoType'
CREATE INDEX [IX_fk_SamplingFeatures_CV_SamplingFeatureGeoType]
ON [dbo].[SamplingFeatures]
    ([SamplingFeatureGeotypeCV]);
GO

-- Creating foreign key on [SamplingFeatureTypeCV] in table 'SamplingFeatures'
ALTER TABLE [dbo].[SamplingFeatures]
ADD CONSTRAINT [fk_SamplingFeatures_CV_SamplingFeatureType]
    FOREIGN KEY ([SamplingFeatureTypeCV])
    REFERENCES [dbo].[CV_SamplingFeatureType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SamplingFeatures_CV_SamplingFeatureType'
CREATE INDEX [IX_fk_SamplingFeatures_CV_SamplingFeatureType]
ON [dbo].[SamplingFeatures]
    ([SamplingFeatureTypeCV]);
GO

-- Creating foreign key on [SiteTypeCV] in table 'Sites'
ALTER TABLE [dbo].[Sites]
ADD CONSTRAINT [fk_Sites_CV_SiteType]
    FOREIGN KEY ([SiteTypeCV])
    REFERENCES [dbo].[CV_SiteType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Sites_CV_SiteType'
CREATE INDEX [IX_fk_Sites_CV_SiteType]
ON [dbo].[Sites]
    ([SiteTypeCV]);
GO

-- Creating foreign key on [SpatialOffsetTypeCV] in table 'SpatialOffsets'
ALTER TABLE [dbo].[SpatialOffsets]
ADD CONSTRAINT [fk_SpatialOffsets_CV_SpatialOffsetType]
    FOREIGN KEY ([SpatialOffsetTypeCV])
    REFERENCES [dbo].[CV_SpatialOffsetType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpatialOffsets_CV_SpatialOffsetType'
CREATE INDEX [IX_fk_SpatialOffsets_CV_SpatialOffsetType]
ON [dbo].[SpatialOffsets]
    ([SpatialOffsetTypeCV]);
GO

-- Creating foreign key on [SpeciationCV] in table 'Variables'
ALTER TABLE [dbo].[Variables]
ADD CONSTRAINT [fk_Variables_CV_Speciation]
    FOREIGN KEY ([SpeciationCV])
    REFERENCES [dbo].[CV_Speciation]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Variables_CV_Speciation'
CREATE INDEX [IX_fk_Variables_CV_Speciation]
ON [dbo].[Variables]
    ([SpeciationCV]);
GO

-- Creating foreign key on [SpecimenMediumCV] in table 'Specimens'
ALTER TABLE [dbo].[Specimens]
ADD CONSTRAINT [fk_Specimens_CV_SpecimenMedium]
    FOREIGN KEY ([SpecimenMediumCV])
    REFERENCES [dbo].[CV_SpecimenMedium]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Specimens_CV_SpecimenMedium'
CREATE INDEX [IX_fk_Specimens_CV_SpecimenMedium]
ON [dbo].[Specimens]
    ([SpecimenMediumCV]);
GO

-- Creating foreign key on [SpecimenTypeCV] in table 'Specimens'
ALTER TABLE [dbo].[Specimens]
ADD CONSTRAINT [fk_Specimens_CV_SpecimenType]
    FOREIGN KEY ([SpecimenTypeCV])
    REFERENCES [dbo].[CV_SpecimenType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Specimens_CV_SpecimenType'
CREATE INDEX [IX_fk_Specimens_CV_SpecimenType]
ON [dbo].[Specimens]
    ([SpecimenTypeCV]);
GO

-- Creating foreign key on [StatusCV] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [fk_Results_CV_Status]
    FOREIGN KEY ([StatusCV])
    REFERENCES [dbo].[CV_Status]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Results_CV_Status'
CREATE INDEX [IX_fk_Results_CV_Status]
ON [dbo].[Results]
    ([StatusCV]);
GO

-- Creating foreign key on [TaxonomicClassifierTypeCV] in table 'TaxonomicClassifiers'
ALTER TABLE [dbo].[TaxonomicClassifiers]
ADD CONSTRAINT [fk_TaxonomicClassifiers_CV_TaxonomicClassifierType]
    FOREIGN KEY ([TaxonomicClassifierTypeCV])
    REFERENCES [dbo].[CV_TaxonomicClassifierType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TaxonomicClassifiers_CV_TaxonomicClassifierType'
CREATE INDEX [IX_fk_TaxonomicClassifiers_CV_TaxonomicClassifierType]
ON [dbo].[TaxonomicClassifiers]
    ([TaxonomicClassifierTypeCV]);
GO

-- Creating foreign key on [UnitsTypeCV] in table 'Units'
ALTER TABLE [dbo].[Units]
ADD CONSTRAINT [fk_Units_CV_UnitsType]
    FOREIGN KEY ([UnitsTypeCV])
    REFERENCES [dbo].[CV_UnitsType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Units_CV_UnitsType'
CREATE INDEX [IX_fk_Units_CV_UnitsType]
ON [dbo].[Units]
    ([UnitsTypeCV]);
GO

-- Creating foreign key on [VariableNameCV] in table 'Variables'
ALTER TABLE [dbo].[Variables]
ADD CONSTRAINT [fk_Variables_CV_VariableName]
    FOREIGN KEY ([VariableNameCV])
    REFERENCES [dbo].[CV_VariableName]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Variables_CV_VariableName'
CREATE INDEX [IX_fk_Variables_CV_VariableName]
ON [dbo].[Variables]
    ([VariableNameCV]);
GO

-- Creating foreign key on [VariableTypeCV] in table 'Variables'
ALTER TABLE [dbo].[Variables]
ADD CONSTRAINT [fk_Variables_CV_VariableType]
    FOREIGN KEY ([VariableTypeCV])
    REFERENCES [dbo].[CV_VariableType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Variables_CV_VariableType'
CREATE INDEX [IX_fk_Variables_CV_VariableType]
ON [dbo].[Variables]
    ([VariableTypeCV]);
GO

-- Creating foreign key on [DataLoggerFileID] in table 'DataloggerFileColumns'
ALTER TABLE [dbo].[DataloggerFileColumns]
ADD CONSTRAINT [fk_DataloggerFileColumns_DataLoggerFiles]
    FOREIGN KEY ([DataLoggerFileID])
    REFERENCES [dbo].[DataLoggerFiles]
        ([DataLoggerFileID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataloggerFileColumns_DataLoggerFiles'
CREATE INDEX [IX_fk_DataloggerFileColumns_DataLoggerFiles]
ON [dbo].[DataloggerFileColumns]
    ([DataLoggerFileID]);
GO

-- Creating foreign key on [InstrumentOutputVariableID] in table 'DataloggerFileColumns'
ALTER TABLE [dbo].[DataloggerFileColumns]
ADD CONSTRAINT [fk_DataloggerFileColumns_InstrumentOutputVariables]
    FOREIGN KEY ([InstrumentOutputVariableID])
    REFERENCES [dbo].[InstrumentOutputVariables]
        ([InstrumentOutputVariableID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataloggerFileColumns_InstrumentOutputVariables'
CREATE INDEX [IX_fk_DataloggerFileColumns_InstrumentOutputVariables]
ON [dbo].[DataloggerFileColumns]
    ([InstrumentOutputVariableID]);
GO

-- Creating foreign key on [RecordingIntervalUnitsID] in table 'DataloggerFileColumns'
ALTER TABLE [dbo].[DataloggerFileColumns]
ADD CONSTRAINT [fk_DataloggerFileColumns_RecordingUnits]
    FOREIGN KEY ([RecordingIntervalUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataloggerFileColumns_RecordingUnits'
CREATE INDEX [IX_fk_DataloggerFileColumns_RecordingUnits]
ON [dbo].[DataloggerFileColumns]
    ([RecordingIntervalUnitsID]);
GO

-- Creating foreign key on [ResultID] in table 'DataloggerFileColumns'
ALTER TABLE [dbo].[DataloggerFileColumns]
ADD CONSTRAINT [fk_DataloggerFileColumns_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataloggerFileColumns_Results'
CREATE INDEX [IX_fk_DataloggerFileColumns_Results]
ON [dbo].[DataloggerFileColumns]
    ([ResultID]);
GO

-- Creating foreign key on [ScanIntervalUnitsID] in table 'DataloggerFileColumns'
ALTER TABLE [dbo].[DataloggerFileColumns]
ADD CONSTRAINT [fk_DataloggerFileColumns_ScanUnits]
    FOREIGN KEY ([ScanIntervalUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataloggerFileColumns_ScanUnits'
CREATE INDEX [IX_fk_DataloggerFileColumns_ScanUnits]
ON [dbo].[DataloggerFileColumns]
    ([ScanIntervalUnitsID]);
GO

-- Creating foreign key on [ProgramID] in table 'DataLoggerFiles'
ALTER TABLE [dbo].[DataLoggerFiles]
ADD CONSTRAINT [fk_DataLoggerFiles_DataloggerProgramFiles]
    FOREIGN KEY ([ProgramID])
    REFERENCES [dbo].[DataloggerProgramFiles]
        ([ProgramID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataLoggerFiles_DataloggerProgramFiles'
CREATE INDEX [IX_fk_DataLoggerFiles_DataloggerProgramFiles]
ON [dbo].[DataLoggerFiles]
    ([ProgramID]);
GO

-- Creating foreign key on [DataQualityValueUnitsID] in table 'DataQualities'
ALTER TABLE [dbo].[DataQualities]
ADD CONSTRAINT [fk_DataQuality_Units]
    FOREIGN KEY ([DataQualityValueUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataQuality_Units'
CREATE INDEX [IX_fk_DataQuality_Units]
ON [dbo].[DataQualities]
    ([DataQualityValueUnitsID]);
GO

-- Creating foreign key on [DataQualityID] in table 'ResultsDataQualities'
ALTER TABLE [dbo].[ResultsDataQualities]
ADD CONSTRAINT [fk_ResultsDataQuality_DataQuality]
    FOREIGN KEY ([DataQualityID])
    REFERENCES [dbo].[DataQualities]
        ([DataQualityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ResultsDataQuality_DataQuality'
CREATE INDEX [IX_fk_ResultsDataQuality_DataQuality]
ON [dbo].[ResultsDataQualities]
    ([DataQualityID]);
GO

-- Creating foreign key on [DataSetID] in table 'DatasetCitations'
ALTER TABLE [dbo].[DatasetCitations]
ADD CONSTRAINT [fk_DataSetCitations_DataSets]
    FOREIGN KEY ([DataSetID])
    REFERENCES [dbo].[Datasets]
        ([DatasetID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataSetCitations_DataSets'
CREATE INDEX [IX_fk_DataSetCitations_DataSets]
ON [dbo].[DatasetCitations]
    ([DataSetID]);
GO

-- Creating foreign key on [DatasetID] in table 'DatasetsResults'
ALTER TABLE [dbo].[DatasetsResults]
ADD CONSTRAINT [fk_DataSetsResults_DataSets]
    FOREIGN KEY ([DatasetID])
    REFERENCES [dbo].[Datasets]
        ([DatasetID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataSetsResults_DataSets'
CREATE INDEX [IX_fk_DataSetsResults_DataSets]
ON [dbo].[DatasetsResults]
    ([DatasetID]);
GO

-- Creating foreign key on [DataSetID] in table 'RelatedDatasets'
ALTER TABLE [dbo].[RelatedDatasets]
ADD CONSTRAINT [fk_RelatedDatasets_DataSets]
    FOREIGN KEY ([DataSetID])
    REFERENCES [dbo].[Datasets]
        ([DatasetID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedDatasets_DataSets'
CREATE INDEX [IX_fk_RelatedDatasets_DataSets]
ON [dbo].[RelatedDatasets]
    ([DataSetID]);
GO

-- Creating foreign key on [RelatedDatasetID] in table 'RelatedDatasets'
ALTER TABLE [dbo].[RelatedDatasets]
ADD CONSTRAINT [fk_RelatedDatasets_DataSets_AreRelated]
    FOREIGN KEY ([RelatedDatasetID])
    REFERENCES [dbo].[Datasets]
        ([DatasetID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedDatasets_DataSets_AreRelated'
CREATE INDEX [IX_fk_RelatedDatasets_DataSets_AreRelated]
ON [dbo].[RelatedDatasets]
    ([RelatedDatasetID]);
GO

-- Creating foreign key on [ResultID] in table 'DatasetsResults'
ALTER TABLE [dbo].[DatasetsResults]
ADD CONSTRAINT [fk_DataSetsResults_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_DataSetsResults_Results'
CREATE INDEX [IX_fk_DataSetsResults_Results]
ON [dbo].[DatasetsResults]
    ([ResultID]);
GO

-- Creating foreign key on [EquipmentModelID] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [fk_Equipment_EquipmentModels]
    FOREIGN KEY ([EquipmentModelID])
    REFERENCES [dbo].[EquipmentModels]
        ([EquipmentModelID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Equipment_EquipmentModels'
CREATE INDEX [IX_fk_Equipment_EquipmentModels]
ON [dbo].[Equipments]
    ([EquipmentModelID]);
GO

-- Creating foreign key on [EquipmentVendorID] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [fk_Equipment_Organizations]
    FOREIGN KEY ([EquipmentVendorID])
    REFERENCES [dbo].[Organizations]
        ([OrganizationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Equipment_Organizations'
CREATE INDEX [IX_fk_Equipment_Organizations]
ON [dbo].[Equipments]
    ([EquipmentVendorID]);
GO

-- Creating foreign key on [EquipmentOwnerID] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [fk_Equipment_People]
    FOREIGN KEY ([EquipmentOwnerID])
    REFERENCES [dbo].[People]
        ([PersonID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Equipment_People'
CREATE INDEX [IX_fk_Equipment_People]
ON [dbo].[Equipments]
    ([EquipmentOwnerID]);
GO

-- Creating foreign key on [EquipmentID] in table 'EquipmentUseds'
ALTER TABLE [dbo].[EquipmentUseds]
ADD CONSTRAINT [fk_EquipmentActions_Equipment]
    FOREIGN KEY ([EquipmentID])
    REFERENCES [dbo].[Equipments]
        ([EquipmentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_EquipmentActions_Equipment'
CREATE INDEX [IX_fk_EquipmentActions_Equipment]
ON [dbo].[EquipmentUseds]
    ([EquipmentID]);
GO

-- Creating foreign key on [EquipmentID] in table 'EquipmentAnnotations'
ALTER TABLE [dbo].[EquipmentAnnotations]
ADD CONSTRAINT [fk_EquipmentAnnotations_Equipment]
    FOREIGN KEY ([EquipmentID])
    REFERENCES [dbo].[Equipments]
        ([EquipmentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_EquipmentAnnotations_Equipment'
CREATE INDEX [IX_fk_EquipmentAnnotations_Equipment]
ON [dbo].[EquipmentAnnotations]
    ([EquipmentID]);
GO

-- Creating foreign key on [EquipmentID] in table 'RelatedEquipments'
ALTER TABLE [dbo].[RelatedEquipments]
ADD CONSTRAINT [fk_RelatedEquipment_Equipment]
    FOREIGN KEY ([EquipmentID])
    REFERENCES [dbo].[Equipments]
        ([EquipmentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedEquipment_Equipment'
CREATE INDEX [IX_fk_RelatedEquipment_Equipment]
ON [dbo].[RelatedEquipments]
    ([EquipmentID]);
GO

-- Creating foreign key on [RelatedEquipmentID] in table 'RelatedEquipments'
ALTER TABLE [dbo].[RelatedEquipments]
ADD CONSTRAINT [fk_RelatedEquipment_Equipment_AreRelated]
    FOREIGN KEY ([RelatedEquipmentID])
    REFERENCES [dbo].[Equipments]
        ([EquipmentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedEquipment_Equipment_AreRelated'
CREATE INDEX [IX_fk_RelatedEquipment_Equipment_AreRelated]
ON [dbo].[RelatedEquipments]
    ([RelatedEquipmentID]);
GO

-- Creating foreign key on [ModelManufacturerID] in table 'EquipmentModels'
ALTER TABLE [dbo].[EquipmentModels]
ADD CONSTRAINT [fk_EquipmentModels_Organizations]
    FOREIGN KEY ([ModelManufacturerID])
    REFERENCES [dbo].[Organizations]
        ([OrganizationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_EquipmentModels_Organizations'
CREATE INDEX [IX_fk_EquipmentModels_Organizations]
ON [dbo].[EquipmentModels]
    ([ModelManufacturerID]);
GO

-- Creating foreign key on [ModelID] in table 'InstrumentOutputVariables'
ALTER TABLE [dbo].[InstrumentOutputVariables]
ADD CONSTRAINT [fk_InstrumentOutputVariables_EquipmentModels]
    FOREIGN KEY ([ModelID])
    REFERENCES [dbo].[EquipmentModels]
        ([EquipmentModelID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_InstrumentOutputVariables_EquipmentModels'
CREATE INDEX [IX_fk_InstrumentOutputVariables_EquipmentModels]
ON [dbo].[InstrumentOutputVariables]
    ([ModelID]);
GO

-- Creating foreign key on [PropertyUnitsID] in table 'ExtensionProperties'
ALTER TABLE [dbo].[ExtensionProperties]
ADD CONSTRAINT [fk_ExtensionProperties_Units]
    FOREIGN KEY ([PropertyUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ExtensionProperties_Units'
CREATE INDEX [IX_fk_ExtensionProperties_Units]
ON [dbo].[ExtensionProperties]
    ([PropertyUnitsID]);
GO

-- Creating foreign key on [PropertyID] in table 'MethodExtensionPropertyValues'
ALTER TABLE [dbo].[MethodExtensionPropertyValues]
ADD CONSTRAINT [fk_MethodExtensionPropertyValues_ExtensionProperties]
    FOREIGN KEY ([PropertyID])
    REFERENCES [dbo].[ExtensionProperties]
        ([PropertyID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MethodExtensionPropertyValues_ExtensionProperties'
CREATE INDEX [IX_fk_MethodExtensionPropertyValues_ExtensionProperties]
ON [dbo].[MethodExtensionPropertyValues]
    ([PropertyID]);
GO

-- Creating foreign key on [PropertyID] in table 'ResultExtensionPropertyValues'
ALTER TABLE [dbo].[ResultExtensionPropertyValues]
ADD CONSTRAINT [fk_ResultExtensionPropertyValues_ExtensionProperties]
    FOREIGN KEY ([PropertyID])
    REFERENCES [dbo].[ExtensionProperties]
        ([PropertyID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ResultExtensionPropertyValues_ExtensionProperties'
CREATE INDEX [IX_fk_ResultExtensionPropertyValues_ExtensionProperties]
ON [dbo].[ResultExtensionPropertyValues]
    ([PropertyID]);
GO

-- Creating foreign key on [PropertyID] in table 'SamplingFeatureExtensionPropertyValues'
ALTER TABLE [dbo].[SamplingFeatureExtensionPropertyValues]
ADD CONSTRAINT [fk_SamplingFeatureExtensionPropertyValues_ExtensionProperties]
    FOREIGN KEY ([PropertyID])
    REFERENCES [dbo].[ExtensionProperties]
        ([PropertyID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SamplingFeatureExtensionPropertyValues_ExtensionProperties'
CREATE INDEX [IX_fk_SamplingFeatureExtensionPropertyValues_ExtensionProperties]
ON [dbo].[SamplingFeatureExtensionPropertyValues]
    ([PropertyID]);
GO

-- Creating foreign key on [PropertyID] in table 'VariableExtensionPropertyValues'
ALTER TABLE [dbo].[VariableExtensionPropertyValues]
ADD CONSTRAINT [fk_VariableExtensionPropertyValues_ExtensionProperties]
    FOREIGN KEY ([PropertyID])
    REFERENCES [dbo].[ExtensionProperties]
        ([PropertyID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_VariableExtensionPropertyValues_ExtensionProperties'
CREATE INDEX [IX_fk_VariableExtensionPropertyValues_ExtensionProperties]
ON [dbo].[VariableExtensionPropertyValues]
    ([PropertyID]);
GO

-- Creating foreign key on [IdentifierSystemOrganizationID] in table 'ExternalIdentifierSystems'
ALTER TABLE [dbo].[ExternalIdentifierSystems]
ADD CONSTRAINT [fk_ExternalIdentifierSystems_Organizations]
    FOREIGN KEY ([IdentifierSystemOrganizationID])
    REFERENCES [dbo].[Organizations]
        ([OrganizationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ExternalIdentifierSystems_Organizations'
CREATE INDEX [IX_fk_ExternalIdentifierSystems_Organizations]
ON [dbo].[ExternalIdentifierSystems]
    ([IdentifierSystemOrganizationID]);
GO

-- Creating foreign key on [ExternalIdentifierSystemID] in table 'MethodExternalIdentifiers'
ALTER TABLE [dbo].[MethodExternalIdentifiers]
ADD CONSTRAINT [fk_MethodExternalIdentifiers_ExternalIdentifierSystems]
    FOREIGN KEY ([ExternalIdentifierSystemID])
    REFERENCES [dbo].[ExternalIdentifierSystems]
        ([ExternalIdentifierSystemID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MethodExternalIdentifiers_ExternalIdentifierSystems'
CREATE INDEX [IX_fk_MethodExternalIdentifiers_ExternalIdentifierSystems]
ON [dbo].[MethodExternalIdentifiers]
    ([ExternalIdentifierSystemID]);
GO

-- Creating foreign key on [ExternalIdentifierSystemID] in table 'PersonExternalIdentifiers'
ALTER TABLE [dbo].[PersonExternalIdentifiers]
ADD CONSTRAINT [fk_PersonExternalIdentifiers_ExternalIdentifierSystems]
    FOREIGN KEY ([ExternalIdentifierSystemID])
    REFERENCES [dbo].[ExternalIdentifierSystems]
        ([ExternalIdentifierSystemID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PersonExternalIdentifiers_ExternalIdentifierSystems'
CREATE INDEX [IX_fk_PersonExternalIdentifiers_ExternalIdentifierSystems]
ON [dbo].[PersonExternalIdentifiers]
    ([ExternalIdentifierSystemID]);
GO

-- Creating foreign key on [ExternalIdentifierSystemID] in table 'ReferenceMaterialExternalIdentifiers'
ALTER TABLE [dbo].[ReferenceMaterialExternalIdentifiers]
ADD CONSTRAINT [fk_RefMaterialExtIdentifiers_ExtIdentifierSystems]
    FOREIGN KEY ([ExternalIdentifierSystemID])
    REFERENCES [dbo].[ExternalIdentifierSystems]
        ([ExternalIdentifierSystemID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RefMaterialExtIdentifiers_ExtIdentifierSystems'
CREATE INDEX [IX_fk_RefMaterialExtIdentifiers_ExtIdentifierSystems]
ON [dbo].[ReferenceMaterialExternalIdentifiers]
    ([ExternalIdentifierSystemID]);
GO

-- Creating foreign key on [ExternalIdentifierSystemID] in table 'SamplingFeatureExternalIdentifiers'
ALTER TABLE [dbo].[SamplingFeatureExternalIdentifiers]
ADD CONSTRAINT [fk_SamplingFeatureExternalIdentifiers_ExternalIdentifierSystems]
    FOREIGN KEY ([ExternalIdentifierSystemID])
    REFERENCES [dbo].[ExternalIdentifierSystems]
        ([ExternalIdentifierSystemID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SamplingFeatureExternalIdentifiers_ExternalIdentifierSystems'
CREATE INDEX [IX_fk_SamplingFeatureExternalIdentifiers_ExternalIdentifierSystems]
ON [dbo].[SamplingFeatureExternalIdentifiers]
    ([ExternalIdentifierSystemID]);
GO

-- Creating foreign key on [ExternalIdentifierSystemID] in table 'SpatialReferenceExternalIdentifiers'
ALTER TABLE [dbo].[SpatialReferenceExternalIdentifiers]
ADD CONSTRAINT [fk_SpatialReferenceExternalIdentifiers_ExternalIdentifierSystems]
    FOREIGN KEY ([ExternalIdentifierSystemID])
    REFERENCES [dbo].[ExternalIdentifierSystems]
        ([ExternalIdentifierSystemID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpatialReferenceExternalIdentifiers_ExternalIdentifierSystems'
CREATE INDEX [IX_fk_SpatialReferenceExternalIdentifiers_ExternalIdentifierSystems]
ON [dbo].[SpatialReferenceExternalIdentifiers]
    ([ExternalIdentifierSystemID]);
GO

-- Creating foreign key on [ExternalIdentifierSystemID] in table 'TaxonomicClassifierExternalIdentifiers'
ALTER TABLE [dbo].[TaxonomicClassifierExternalIdentifiers]
ADD CONSTRAINT [fk_TaxonomicClassifierExtIDs_ExtIDSystems]
    FOREIGN KEY ([ExternalIdentifierSystemID])
    REFERENCES [dbo].[ExternalIdentifierSystems]
        ([ExternalIdentifierSystemID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TaxonomicClassifierExtIDs_ExtIDSystems'
CREATE INDEX [IX_fk_TaxonomicClassifierExtIDs_ExtIDSystems]
ON [dbo].[TaxonomicClassifierExternalIdentifiers]
    ([ExternalIdentifierSystemID]);
GO

-- Creating foreign key on [ExternalIdentifierSystemID] in table 'VariableExternalIdentifiers'
ALTER TABLE [dbo].[VariableExternalIdentifiers]
ADD CONSTRAINT [fk_VariableExternalIdentifiers_ExternalIdentifierSystems]
    FOREIGN KEY ([ExternalIdentifierSystemID])
    REFERENCES [dbo].[ExternalIdentifierSystems]
        ([ExternalIdentifierSystemID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_VariableExternalIdentifiers_ExternalIdentifierSystems'
CREATE INDEX [IX_fk_VariableExternalIdentifiers_ExternalIdentifierSystems]
ON [dbo].[VariableExternalIdentifiers]
    ([ExternalIdentifierSystemID]);
GO

-- Creating foreign key on [SamplingFeatureID] in table 'FeatureActions'
ALTER TABLE [dbo].[FeatureActions]
ADD CONSTRAINT [fk_FeatureActions_SamplingFeatures]
    FOREIGN KEY ([SamplingFeatureID])
    REFERENCES [dbo].[SamplingFeatures]
        ([SamplingFeatureID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_FeatureActions_SamplingFeatures'
CREATE INDEX [IX_fk_FeatureActions_SamplingFeatures]
ON [dbo].[FeatureActions]
    ([SamplingFeatureID]);
GO

-- Creating foreign key on [FeatureActionID] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [fk_Results_FeatureActions]
    FOREIGN KEY ([FeatureActionID])
    REFERENCES [dbo].[FeatureActions]
        ([FeatureActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Results_FeatureActions'
CREATE INDEX [IX_fk_Results_FeatureActions]
ON [dbo].[Results]
    ([FeatureActionID]);
GO

-- Creating foreign key on [FeatureActionID] in table 'SpecimenBatchPostions'
ALTER TABLE [dbo].[SpecimenBatchPostions]
ADD CONSTRAINT [fk_SpecimenBatchPostions_FeatureActions]
    FOREIGN KEY ([FeatureActionID])
    REFERENCES [dbo].[FeatureActions]
        ([FeatureActionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [InstrumentMethodID] in table 'InstrumentOutputVariables'
ALTER TABLE [dbo].[InstrumentOutputVariables]
ADD CONSTRAINT [fk_InstrumentOutputVariables_Methods]
    FOREIGN KEY ([InstrumentMethodID])
    REFERENCES [dbo].[Methods]
        ([MethodID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_InstrumentOutputVariables_Methods'
CREATE INDEX [IX_fk_InstrumentOutputVariables_Methods]
ON [dbo].[InstrumentOutputVariables]
    ([InstrumentMethodID]);
GO

-- Creating foreign key on [InstrumentRawOutputUnitsID] in table 'InstrumentOutputVariables'
ALTER TABLE [dbo].[InstrumentOutputVariables]
ADD CONSTRAINT [fk_InstrumentOutputVariables_Units]
    FOREIGN KEY ([InstrumentRawOutputUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_InstrumentOutputVariables_Units'
CREATE INDEX [IX_fk_InstrumentOutputVariables_Units]
ON [dbo].[InstrumentOutputVariables]
    ([InstrumentRawOutputUnitsID]);
GO

-- Creating foreign key on [VariableID] in table 'InstrumentOutputVariables'
ALTER TABLE [dbo].[InstrumentOutputVariables]
ADD CONSTRAINT [fk_InstrumentOutputVariables_Variables]
    FOREIGN KEY ([VariableID])
    REFERENCES [dbo].[Variables]
        ([VariableID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_InstrumentOutputVariables_Variables'
CREATE INDEX [IX_fk_InstrumentOutputVariables_Variables]
ON [dbo].[InstrumentOutputVariables]
    ([VariableID]);
GO

-- Creating foreign key on [TimeAggregationIntervalUnitsID] in table 'MeasurementResults'
ALTER TABLE [dbo].[MeasurementResults]
ADD CONSTRAINT [fk_MeasurementResults_AIUnits]
    FOREIGN KEY ([TimeAggregationIntervalUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MeasurementResults_AIUnits'
CREATE INDEX [IX_fk_MeasurementResults_AIUnits]
ON [dbo].[MeasurementResults]
    ([TimeAggregationIntervalUnitsID]);
GO

-- Creating foreign key on [ResultID] in table 'MeasurementResults'
ALTER TABLE [dbo].[MeasurementResults]
ADD CONSTRAINT [fk_MeasurementResults_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SpatialReferenceID] in table 'MeasurementResults'
ALTER TABLE [dbo].[MeasurementResults]
ADD CONSTRAINT [fk_MeasurementResults_SpatialReferences]
    FOREIGN KEY ([SpatialReferenceID])
    REFERENCES [dbo].[SpatialReferences]
        ([SpatialReferenceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MeasurementResults_SpatialReferences'
CREATE INDEX [IX_fk_MeasurementResults_SpatialReferences]
ON [dbo].[MeasurementResults]
    ([SpatialReferenceID]);
GO

-- Creating foreign key on [XLocationUnitsID] in table 'MeasurementResults'
ALTER TABLE [dbo].[MeasurementResults]
ADD CONSTRAINT [fk_MeasurementResults_XUnits]
    FOREIGN KEY ([XLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MeasurementResults_XUnits'
CREATE INDEX [IX_fk_MeasurementResults_XUnits]
ON [dbo].[MeasurementResults]
    ([XLocationUnitsID]);
GO

-- Creating foreign key on [YLocationUnitsID] in table 'MeasurementResults'
ALTER TABLE [dbo].[MeasurementResults]
ADD CONSTRAINT [fk_MeasurementResults_YUnits]
    FOREIGN KEY ([YLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MeasurementResults_YUnits'
CREATE INDEX [IX_fk_MeasurementResults_YUnits]
ON [dbo].[MeasurementResults]
    ([YLocationUnitsID]);
GO

-- Creating foreign key on [ZLocationUnitsID] in table 'MeasurementResults'
ALTER TABLE [dbo].[MeasurementResults]
ADD CONSTRAINT [fk_MeasurementResults_ZUnits]
    FOREIGN KEY ([ZLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MeasurementResults_ZUnits'
CREATE INDEX [IX_fk_MeasurementResults_ZUnits]
ON [dbo].[MeasurementResults]
    ([ZLocationUnitsID]);
GO

-- Creating foreign key on [ResultID] in table 'MeasurementResultValues'
ALTER TABLE [dbo].[MeasurementResultValues]
ADD CONSTRAINT [fk_MeasurementResultValues_MeasurementResults]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[MeasurementResults]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MeasurementResultValues_MeasurementResults'
CREATE INDEX [IX_fk_MeasurementResultValues_MeasurementResults]
ON [dbo].[MeasurementResultValues]
    ([ResultID]);
GO

-- Creating foreign key on [ValueID] in table 'MeasurementResultValueAnnotations'
ALTER TABLE [dbo].[MeasurementResultValueAnnotations]
ADD CONSTRAINT [fk_MeasurementResultValueAnnotations_MeasurementResultValues]
    FOREIGN KEY ([ValueID])
    REFERENCES [dbo].[MeasurementResultValues]
        ([ValueID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MeasurementResultValueAnnotations_MeasurementResultValues'
CREATE INDEX [IX_fk_MeasurementResultValueAnnotations_MeasurementResultValues]
ON [dbo].[MeasurementResultValueAnnotations]
    ([ValueID]);
GO

-- Creating foreign key on [MethodID] in table 'MethodAnnotations'
ALTER TABLE [dbo].[MethodAnnotations]
ADD CONSTRAINT [fk_MethodAnnotations_Methods]
    FOREIGN KEY ([MethodID])
    REFERENCES [dbo].[Methods]
        ([MethodID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MethodAnnotations_Methods'
CREATE INDEX [IX_fk_MethodAnnotations_Methods]
ON [dbo].[MethodAnnotations]
    ([MethodID]);
GO

-- Creating foreign key on [MethodID] in table 'MethodCitations'
ALTER TABLE [dbo].[MethodCitations]
ADD CONSTRAINT [fk_MethodCitations_Methods]
    FOREIGN KEY ([MethodID])
    REFERENCES [dbo].[Methods]
        ([MethodID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MethodCitations_Methods'
CREATE INDEX [IX_fk_MethodCitations_Methods]
ON [dbo].[MethodCitations]
    ([MethodID]);
GO

-- Creating foreign key on [MethodID] in table 'MethodExtensionPropertyValues'
ALTER TABLE [dbo].[MethodExtensionPropertyValues]
ADD CONSTRAINT [fk_MethodExtensionPropertyValues_Methods]
    FOREIGN KEY ([MethodID])
    REFERENCES [dbo].[Methods]
        ([MethodID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MethodExtensionPropertyValues_Methods'
CREATE INDEX [IX_fk_MethodExtensionPropertyValues_Methods]
ON [dbo].[MethodExtensionPropertyValues]
    ([MethodID]);
GO

-- Creating foreign key on [MethodID] in table 'MethodExternalIdentifiers'
ALTER TABLE [dbo].[MethodExternalIdentifiers]
ADD CONSTRAINT [fk_MethodExternalIdentifiers_Methods]
    FOREIGN KEY ([MethodID])
    REFERENCES [dbo].[Methods]
        ([MethodID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_MethodExternalIdentifiers_Methods'
CREATE INDEX [IX_fk_MethodExternalIdentifiers_Methods]
ON [dbo].[MethodExternalIdentifiers]
    ([MethodID]);
GO

-- Creating foreign key on [OrganizationID] in table 'Methods'
ALTER TABLE [dbo].[Methods]
ADD CONSTRAINT [fk_Methods_Organizations]
    FOREIGN KEY ([OrganizationID])
    REFERENCES [dbo].[Organizations]
        ([OrganizationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Methods_Organizations'
CREATE INDEX [IX_fk_Methods_Organizations]
ON [dbo].[Methods]
    ([OrganizationID]);
GO

-- Creating foreign key on [ModelID] in table 'ModelAffiliations'
ALTER TABLE [dbo].[ModelAffiliations]
ADD CONSTRAINT [fk_ModelAffiliations_Models]
    FOREIGN KEY ([ModelID])
    REFERENCES [dbo].[Models]
        ([ModelID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ModelAffiliations_Models'
CREATE INDEX [IX_fk_ModelAffiliations_Models]
ON [dbo].[ModelAffiliations]
    ([ModelID]);
GO

-- Creating foreign key on [ModelID] in table 'RelatedModels'
ALTER TABLE [dbo].[RelatedModels]
ADD CONSTRAINT [fk_RelatedModels_Models]
    FOREIGN KEY ([ModelID])
    REFERENCES [dbo].[Models]
        ([ModelID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedModels_Models'
CREATE INDEX [IX_fk_RelatedModels_Models]
ON [dbo].[RelatedModels]
    ([ModelID]);
GO

-- Creating foreign key on [ModelID] in table 'Simulations'
ALTER TABLE [dbo].[Simulations]
ADD CONSTRAINT [fk_Simulations_Models]
    FOREIGN KEY ([ModelID])
    REFERENCES [dbo].[Models]
        ([ModelID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Simulations_Models'
CREATE INDEX [IX_fk_Simulations_Models]
ON [dbo].[Simulations]
    ([ModelID]);
GO

-- Creating foreign key on [ParentOrganizationID] in table 'Organizations'
ALTER TABLE [dbo].[Organizations]
ADD CONSTRAINT [fk_Organizations_Organizations]
    FOREIGN KEY ([ParentOrganizationID])
    REFERENCES [dbo].[Organizations]
        ([OrganizationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Organizations_Organizations'
CREATE INDEX [IX_fk_Organizations_Organizations]
ON [dbo].[Organizations]
    ([ParentOrganizationID]);
GO

-- Creating foreign key on [ReferenceMaterialOrganizationID] in table 'ReferenceMaterials'
ALTER TABLE [dbo].[ReferenceMaterials]
ADD CONSTRAINT [fk_ReferenceMaterials_Organizations]
    FOREIGN KEY ([ReferenceMaterialOrganizationID])
    REFERENCES [dbo].[Organizations]
        ([OrganizationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ReferenceMaterials_Organizations'
CREATE INDEX [IX_fk_ReferenceMaterials_Organizations]
ON [dbo].[ReferenceMaterials]
    ([ReferenceMaterialOrganizationID]);
GO

-- Creating foreign key on [PersonID] in table 'PersonExternalIdentifiers'
ALTER TABLE [dbo].[PersonExternalIdentifiers]
ADD CONSTRAINT [fk_PersonExternalIdentifiers_People]
    FOREIGN KEY ([PersonID])
    REFERENCES [dbo].[People]
        ([PersonID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PersonExternalIdentifiers_People'
CREATE INDEX [IX_fk_PersonExternalIdentifiers_People]
ON [dbo].[PersonExternalIdentifiers]
    ([PersonID]);
GO

-- Creating foreign key on [ResultID] in table 'PointCoverageResults'
ALTER TABLE [dbo].[PointCoverageResults]
ADD CONSTRAINT [fk_PointCoverageResults_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SpatialReferenceID] in table 'PointCoverageResults'
ALTER TABLE [dbo].[PointCoverageResults]
ADD CONSTRAINT [fk_PointCoverageResults_SpatialReferences]
    FOREIGN KEY ([SpatialReferenceID])
    REFERENCES [dbo].[SpatialReferences]
        ([SpatialReferenceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResults_SpatialReferences'
CREATE INDEX [IX_fk_PointCoverageResults_SpatialReferences]
ON [dbo].[PointCoverageResults]
    ([SpatialReferenceID]);
GO

-- Creating foreign key on [IntendedXSpacingUnitsID] in table 'PointCoverageResults'
ALTER TABLE [dbo].[PointCoverageResults]
ADD CONSTRAINT [fk_PointCoverageResults_XUnits]
    FOREIGN KEY ([IntendedXSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResults_XUnits'
CREATE INDEX [IX_fk_PointCoverageResults_XUnits]
ON [dbo].[PointCoverageResults]
    ([IntendedXSpacingUnitsID]);
GO

-- Creating foreign key on [IntendedYSpacingUnitsID] in table 'PointCoverageResults'
ALTER TABLE [dbo].[PointCoverageResults]
ADD CONSTRAINT [fk_PointCoverageResults_YUnits]
    FOREIGN KEY ([IntendedYSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResults_YUnits'
CREATE INDEX [IX_fk_PointCoverageResults_YUnits]
ON [dbo].[PointCoverageResults]
    ([IntendedYSpacingUnitsID]);
GO

-- Creating foreign key on [ZLocationUnitsID] in table 'PointCoverageResults'
ALTER TABLE [dbo].[PointCoverageResults]
ADD CONSTRAINT [fk_PointCoverageResults_ZUnits]
    FOREIGN KEY ([ZLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResults_ZUnits'
CREATE INDEX [IX_fk_PointCoverageResults_ZUnits]
ON [dbo].[PointCoverageResults]
    ([ZLocationUnitsID]);
GO

-- Creating foreign key on [ResultID] in table 'PointCoverageResultValues'
ALTER TABLE [dbo].[PointCoverageResultValues]
ADD CONSTRAINT [fk_PointCoverageResultValues_PointCoverageResults]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[PointCoverageResults]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResultValues_PointCoverageResults'
CREATE INDEX [IX_fk_PointCoverageResultValues_PointCoverageResults]
ON [dbo].[PointCoverageResultValues]
    ([ResultID]);
GO

-- Creating foreign key on [ValueID] in table 'PointCoverageResultValueAnnotations'
ALTER TABLE [dbo].[PointCoverageResultValueAnnotations]
ADD CONSTRAINT [fk_PointCoverageResultValueAnnotations_PointCoverageResultValues]
    FOREIGN KEY ([ValueID])
    REFERENCES [dbo].[PointCoverageResultValues]
        ([ValueID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResultValueAnnotations_PointCoverageResultValues'
CREATE INDEX [IX_fk_PointCoverageResultValueAnnotations_PointCoverageResultValues]
ON [dbo].[PointCoverageResultValueAnnotations]
    ([ValueID]);
GO

-- Creating foreign key on [XLocationUnitsID] in table 'PointCoverageResultValues'
ALTER TABLE [dbo].[PointCoverageResultValues]
ADD CONSTRAINT [fk_PointCoverageResultValues_XUnits]
    FOREIGN KEY ([XLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResultValues_XUnits'
CREATE INDEX [IX_fk_PointCoverageResultValues_XUnits]
ON [dbo].[PointCoverageResultValues]
    ([XLocationUnitsID]);
GO

-- Creating foreign key on [YLocationUnitsID] in table 'PointCoverageResultValues'
ALTER TABLE [dbo].[PointCoverageResultValues]
ADD CONSTRAINT [fk_PointCoverageResultValues_YUnits]
    FOREIGN KEY ([YLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_PointCoverageResultValues_YUnits'
CREATE INDEX [IX_fk_PointCoverageResultValues_YUnits]
ON [dbo].[PointCoverageResultValues]
    ([YLocationUnitsID]);
GO

-- Creating foreign key on [ProcessingLevelID] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [fk_Results_ProcessingLevels]
    FOREIGN KEY ([ProcessingLevelID])
    REFERENCES [dbo].[ProcessingLevels]
        ([ProcessingLevelID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Results_ProcessingLevels'
CREATE INDEX [IX_fk_Results_ProcessingLevels]
ON [dbo].[Results]
    ([ProcessingLevelID]);
GO

-- Creating foreign key on [IntendedZSpacingUnitsID] in table 'ProfileResults'
ALTER TABLE [dbo].[ProfileResults]
ADD CONSTRAINT [fk_ProfileResults_DUnits]
    FOREIGN KEY ([IntendedZSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResults_DUnits'
CREATE INDEX [IX_fk_ProfileResults_DUnits]
ON [dbo].[ProfileResults]
    ([IntendedZSpacingUnitsID]);
GO

-- Creating foreign key on [ResultID] in table 'ProfileResults'
ALTER TABLE [dbo].[ProfileResults]
ADD CONSTRAINT [fk_ProfileResults_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SpatialReferenceID] in table 'ProfileResults'
ALTER TABLE [dbo].[ProfileResults]
ADD CONSTRAINT [fk_ProfileResults_SpatialReferences]
    FOREIGN KEY ([SpatialReferenceID])
    REFERENCES [dbo].[SpatialReferences]
        ([SpatialReferenceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResults_SpatialReferences'
CREATE INDEX [IX_fk_ProfileResults_SpatialReferences]
ON [dbo].[ProfileResults]
    ([SpatialReferenceID]);
GO

-- Creating foreign key on [IntendedTimeSpacingUnitsID] in table 'ProfileResults'
ALTER TABLE [dbo].[ProfileResults]
ADD CONSTRAINT [fk_ProfileResults_TUnits]
    FOREIGN KEY ([IntendedTimeSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResults_TUnits'
CREATE INDEX [IX_fk_ProfileResults_TUnits]
ON [dbo].[ProfileResults]
    ([IntendedTimeSpacingUnitsID]);
GO

-- Creating foreign key on [XLocationUnitsID] in table 'ProfileResults'
ALTER TABLE [dbo].[ProfileResults]
ADD CONSTRAINT [fk_ProfileResults_XUnits]
    FOREIGN KEY ([XLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResults_XUnits'
CREATE INDEX [IX_fk_ProfileResults_XUnits]
ON [dbo].[ProfileResults]
    ([XLocationUnitsID]);
GO

-- Creating foreign key on [YLocationUnitsID] in table 'ProfileResults'
ALTER TABLE [dbo].[ProfileResults]
ADD CONSTRAINT [fk_ProfileResults_YUnits]
    FOREIGN KEY ([YLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResults_YUnits'
CREATE INDEX [IX_fk_ProfileResults_YUnits]
ON [dbo].[ProfileResults]
    ([YLocationUnitsID]);
GO

-- Creating foreign key on [ResultID] in table 'ProfileResultValues'
ALTER TABLE [dbo].[ProfileResultValues]
ADD CONSTRAINT [fk_ProfileResultValues_ProfileResults]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[ProfileResults]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResultValues_ProfileResults'
CREATE INDEX [IX_fk_ProfileResultValues_ProfileResults]
ON [dbo].[ProfileResultValues]
    ([ResultID]);
GO

-- Creating foreign key on [ValueID] in table 'ProfileResultValueAnnotations'
ALTER TABLE [dbo].[ProfileResultValueAnnotations]
ADD CONSTRAINT [fk_ProfileResultValueAnnotations_ProfileResultValues]
    FOREIGN KEY ([ValueID])
    REFERENCES [dbo].[ProfileResultValues]
        ([ValueID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResultValueAnnotations_ProfileResultValues'
CREATE INDEX [IX_fk_ProfileResultValueAnnotations_ProfileResultValues]
ON [dbo].[ProfileResultValueAnnotations]
    ([ValueID]);
GO

-- Creating foreign key on [TimeAggregationIntervalUnitsID] in table 'ProfileResultValues'
ALTER TABLE [dbo].[ProfileResultValues]
ADD CONSTRAINT [fk_ProfileResultValues_AIUnits]
    FOREIGN KEY ([TimeAggregationIntervalUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResultValues_AIUnits'
CREATE INDEX [IX_fk_ProfileResultValues_AIUnits]
ON [dbo].[ProfileResultValues]
    ([TimeAggregationIntervalUnitsID]);
GO

-- Creating foreign key on [ZLocationUnitsID] in table 'ProfileResultValues'
ALTER TABLE [dbo].[ProfileResultValues]
ADD CONSTRAINT [fk_ProfileResultValues_DUnits]
    FOREIGN KEY ([ZLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ProfileResultValues_DUnits'
CREATE INDEX [IX_fk_ProfileResultValues_DUnits]
ON [dbo].[ProfileResultValues]
    ([ZLocationUnitsID]);
GO

-- Creating foreign key on [ReferenceMaterialID] in table 'ReferenceMaterialExternalIdentifiers'
ALTER TABLE [dbo].[ReferenceMaterialExternalIdentifiers]
ADD CONSTRAINT [fk_RefMaterialExtIdentifiers_RefMaterials]
    FOREIGN KEY ([ReferenceMaterialID])
    REFERENCES [dbo].[ReferenceMaterials]
        ([ReferenceMaterialID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RefMaterialExtIdentifiers_RefMaterials'
CREATE INDEX [IX_fk_RefMaterialExtIdentifiers_RefMaterials]
ON [dbo].[ReferenceMaterialExternalIdentifiers]
    ([ReferenceMaterialID]);
GO

-- Creating foreign key on [SamplingFeatureID] in table 'ReferenceMaterials'
ALTER TABLE [dbo].[ReferenceMaterials]
ADD CONSTRAINT [fk_ReferenceMaterials_SamplingFeatures]
    FOREIGN KEY ([SamplingFeatureID])
    REFERENCES [dbo].[SamplingFeatures]
        ([SamplingFeatureID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ReferenceMaterials_SamplingFeatures'
CREATE INDEX [IX_fk_ReferenceMaterials_SamplingFeatures]
ON [dbo].[ReferenceMaterials]
    ([SamplingFeatureID]);
GO

-- Creating foreign key on [ReferenceMaterialID] in table 'ReferenceMaterialValues'
ALTER TABLE [dbo].[ReferenceMaterialValues]
ADD CONSTRAINT [fk_ReferenceMaterialValues_ReferenceMaterials]
    FOREIGN KEY ([ReferenceMaterialID])
    REFERENCES [dbo].[ReferenceMaterials]
        ([ReferenceMaterialID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ReferenceMaterialValues_ReferenceMaterials'
CREATE INDEX [IX_fk_ReferenceMaterialValues_ReferenceMaterials]
ON [dbo].[ReferenceMaterialValues]
    ([ReferenceMaterialID]);
GO

-- Creating foreign key on [UnitsID] in table 'ReferenceMaterialValues'
ALTER TABLE [dbo].[ReferenceMaterialValues]
ADD CONSTRAINT [fk_ReferenceMaterialValues_Units]
    FOREIGN KEY ([UnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ReferenceMaterialValues_Units'
CREATE INDEX [IX_fk_ReferenceMaterialValues_Units]
ON [dbo].[ReferenceMaterialValues]
    ([UnitsID]);
GO

-- Creating foreign key on [VariableID] in table 'ReferenceMaterialValues'
ALTER TABLE [dbo].[ReferenceMaterialValues]
ADD CONSTRAINT [fk_ReferenceMaterialValues_Variables]
    FOREIGN KEY ([VariableID])
    REFERENCES [dbo].[Variables]
        ([VariableID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ReferenceMaterialValues_Variables'
CREATE INDEX [IX_fk_ReferenceMaterialValues_Variables]
ON [dbo].[ReferenceMaterialValues]
    ([VariableID]);
GO

-- Creating foreign key on [RelatedFeatureID] in table 'RelatedFeatures'
ALTER TABLE [dbo].[RelatedFeatures]
ADD CONSTRAINT [fk_FeatureParents_FeaturesParent]
    FOREIGN KEY ([RelatedFeatureID])
    REFERENCES [dbo].[SamplingFeatures]
        ([SamplingFeatureID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_FeatureParents_FeaturesParent'
CREATE INDEX [IX_fk_FeatureParents_FeaturesParent]
ON [dbo].[RelatedFeatures]
    ([RelatedFeatureID]);
GO

-- Creating foreign key on [SamplingFeatureID] in table 'RelatedFeatures'
ALTER TABLE [dbo].[RelatedFeatures]
ADD CONSTRAINT [fk_FeatureParents_SamplingFeatures]
    FOREIGN KEY ([SamplingFeatureID])
    REFERENCES [dbo].[SamplingFeatures]
        ([SamplingFeatureID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_FeatureParents_SamplingFeatures'
CREATE INDEX [IX_fk_FeatureParents_SamplingFeatures]
ON [dbo].[RelatedFeatures]
    ([SamplingFeatureID]);
GO

-- Creating foreign key on [SpatialOffsetID] in table 'RelatedFeatures'
ALTER TABLE [dbo].[RelatedFeatures]
ADD CONSTRAINT [fk_FeatureParents_SpatialOffsets]
    FOREIGN KEY ([SpatialOffsetID])
    REFERENCES [dbo].[SpatialOffsets]
        ([SpatialOffsetID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_FeatureParents_SpatialOffsets'
CREATE INDEX [IX_fk_FeatureParents_SpatialOffsets]
ON [dbo].[RelatedFeatures]
    ([SpatialOffsetID]);
GO

-- Creating foreign key on [ResultID] in table 'RelatedResults'
ALTER TABLE [dbo].[RelatedResults]
ADD CONSTRAINT [fk_RelatedResults_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedResults_Results'
CREATE INDEX [IX_fk_RelatedResults_Results]
ON [dbo].[RelatedResults]
    ([ResultID]);
GO

-- Creating foreign key on [RelatedResultID] in table 'RelatedResults'
ALTER TABLE [dbo].[RelatedResults]
ADD CONSTRAINT [fk_RelatedResults_Results_AreRelated]
    FOREIGN KEY ([RelatedResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_RelatedResults_Results_AreRelated'
CREATE INDEX [IX_fk_RelatedResults_Results_AreRelated]
ON [dbo].[RelatedResults]
    ([RelatedResultID]);
GO

-- Creating foreign key on [ResultID] in table 'ResultAnnotations'
ALTER TABLE [dbo].[ResultAnnotations]
ADD CONSTRAINT [fk_ResultAnnotations_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ResultAnnotations_Results'
CREATE INDEX [IX_fk_ResultAnnotations_Results]
ON [dbo].[ResultAnnotations]
    ([ResultID]);
GO

-- Creating foreign key on [ResultID] in table 'ResultExtensionPropertyValues'
ALTER TABLE [dbo].[ResultExtensionPropertyValues]
ADD CONSTRAINT [fk_ResultExtensionPropertyValues_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ResultExtensionPropertyValues_Results'
CREATE INDEX [IX_fk_ResultExtensionPropertyValues_Results]
ON [dbo].[ResultExtensionPropertyValues]
    ([ResultID]);
GO

-- Creating foreign key on [TaxonomicClassifierID] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [fk_Results_TaxonomicClassifiers]
    FOREIGN KEY ([TaxonomicClassifierID])
    REFERENCES [dbo].[TaxonomicClassifiers]
        ([TaxonomicClassifierID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Results_TaxonomicClassifiers'
CREATE INDEX [IX_fk_Results_TaxonomicClassifiers]
ON [dbo].[Results]
    ([TaxonomicClassifierID]);
GO

-- Creating foreign key on [UnitsID] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [fk_Results_Units]
    FOREIGN KEY ([UnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Results_Units'
CREATE INDEX [IX_fk_Results_Units]
ON [dbo].[Results]
    ([UnitsID]);
GO

-- Creating foreign key on [VariableID] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [fk_Results_Variables]
    FOREIGN KEY ([VariableID])
    REFERENCES [dbo].[Variables]
        ([VariableID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Results_Variables'
CREATE INDEX [IX_fk_Results_Variables]
ON [dbo].[Results]
    ([VariableID]);
GO

-- Creating foreign key on [ResultID] in table 'ResultsDataQualities'
ALTER TABLE [dbo].[ResultsDataQualities]
ADD CONSTRAINT [fk_ResultsDataQuality_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ResultsDataQuality_Results'
CREATE INDEX [IX_fk_ResultsDataQuality_Results]
ON [dbo].[ResultsDataQualities]
    ([ResultID]);
GO

-- Creating foreign key on [ResultID] in table 'SectionResults'
ALTER TABLE [dbo].[SectionResults]
ADD CONSTRAINT [fk_SectionResults_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ResultID] in table 'SpectraResults'
ALTER TABLE [dbo].[SpectraResults]
ADD CONSTRAINT [fk_SpectraResults_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ResultID] in table 'TimeSeriesResults'
ALTER TABLE [dbo].[TimeSeriesResults]
ADD CONSTRAINT [fk_TimeSeriesResults_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ResultID] in table 'TrajectoryResults'
ALTER TABLE [dbo].[TrajectoryResults]
ADD CONSTRAINT [fk_TrajectoryResults_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ResultID] in table 'TransectResults'
ALTER TABLE [dbo].[TransectResults]
ADD CONSTRAINT [fk_TransectResults_Results]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[Results]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SamplingFeatureID] in table 'SamplingFeatureAnnotations'
ALTER TABLE [dbo].[SamplingFeatureAnnotations]
ADD CONSTRAINT [fk_SamplingFeatureAnnotations_SamplingFeatures]
    FOREIGN KEY ([SamplingFeatureID])
    REFERENCES [dbo].[SamplingFeatures]
        ([SamplingFeatureID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SamplingFeatureAnnotations_SamplingFeatures'
CREATE INDEX [IX_fk_SamplingFeatureAnnotations_SamplingFeatures]
ON [dbo].[SamplingFeatureAnnotations]
    ([SamplingFeatureID]);
GO

-- Creating foreign key on [SamplingFeatureID] in table 'SamplingFeatureExtensionPropertyValues'
ALTER TABLE [dbo].[SamplingFeatureExtensionPropertyValues]
ADD CONSTRAINT [fk_SamplingFeatureExtensionPropertyValues_SamplingFeatures]
    FOREIGN KEY ([SamplingFeatureID])
    REFERENCES [dbo].[SamplingFeatures]
        ([SamplingFeatureID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SamplingFeatureExtensionPropertyValues_SamplingFeatures'
CREATE INDEX [IX_fk_SamplingFeatureExtensionPropertyValues_SamplingFeatures]
ON [dbo].[SamplingFeatureExtensionPropertyValues]
    ([SamplingFeatureID]);
GO

-- Creating foreign key on [SamplingFeatureID] in table 'SamplingFeatureExternalIdentifiers'
ALTER TABLE [dbo].[SamplingFeatureExternalIdentifiers]
ADD CONSTRAINT [fk_SamplingFeatureExternalIdentifiers_SamplingFeatures]
    FOREIGN KEY ([SamplingFeatureID])
    REFERENCES [dbo].[SamplingFeatures]
        ([SamplingFeatureID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SamplingFeatureExternalIdentifiers_SamplingFeatures'
CREATE INDEX [IX_fk_SamplingFeatureExternalIdentifiers_SamplingFeatures]
ON [dbo].[SamplingFeatureExternalIdentifiers]
    ([SamplingFeatureID]);
GO

-- Creating foreign key on [SamplingFeatureID] in table 'Sites'
ALTER TABLE [dbo].[Sites]
ADD CONSTRAINT [fk_Sites_SamplingFeatures]
    FOREIGN KEY ([SamplingFeatureID])
    REFERENCES [dbo].[SamplingFeatures]
        ([SamplingFeatureID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SamplingFeatureID] in table 'Specimens'
ALTER TABLE [dbo].[Specimens]
ADD CONSTRAINT [fk_Specimens_SamplingFeatures]
    FOREIGN KEY ([SamplingFeatureID])
    REFERENCES [dbo].[SamplingFeatures]
        ([SamplingFeatureID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SpatialReferenceID] in table 'SectionResults'
ALTER TABLE [dbo].[SectionResults]
ADD CONSTRAINT [fk_SectionResults_SpatialReferences]
    FOREIGN KEY ([SpatialReferenceID])
    REFERENCES [dbo].[SpatialReferences]
        ([SpatialReferenceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResults_SpatialReferences'
CREATE INDEX [IX_fk_SectionResults_SpatialReferences]
ON [dbo].[SectionResults]
    ([SpatialReferenceID]);
GO

-- Creating foreign key on [IntendedTimeSpacingUnitsID] in table 'SectionResults'
ALTER TABLE [dbo].[SectionResults]
ADD CONSTRAINT [fk_SectionResults_TMUnits]
    FOREIGN KEY ([IntendedTimeSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResults_TMUnits'
CREATE INDEX [IX_fk_SectionResults_TMUnits]
ON [dbo].[SectionResults]
    ([IntendedTimeSpacingUnitsID]);
GO

-- Creating foreign key on [YLocationUnitsID] in table 'SectionResults'
ALTER TABLE [dbo].[SectionResults]
ADD CONSTRAINT [fk_SectionResults_Units]
    FOREIGN KEY ([YLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResults_Units'
CREATE INDEX [IX_fk_SectionResults_Units]
ON [dbo].[SectionResults]
    ([YLocationUnitsID]);
GO

-- Creating foreign key on [IntendedXSpacingUnitsID] in table 'SectionResults'
ALTER TABLE [dbo].[SectionResults]
ADD CONSTRAINT [fk_SectionResults_XUnits]
    FOREIGN KEY ([IntendedXSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResults_XUnits'
CREATE INDEX [IX_fk_SectionResults_XUnits]
ON [dbo].[SectionResults]
    ([IntendedXSpacingUnitsID]);
GO

-- Creating foreign key on [IntendedZSpacingUnitsID] in table 'SectionResults'
ALTER TABLE [dbo].[SectionResults]
ADD CONSTRAINT [fk_SectionResults_ZUnits]
    FOREIGN KEY ([IntendedZSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResults_ZUnits'
CREATE INDEX [IX_fk_SectionResults_ZUnits]
ON [dbo].[SectionResults]
    ([IntendedZSpacingUnitsID]);
GO

-- Creating foreign key on [ResultID] in table 'SectionResultValues'
ALTER TABLE [dbo].[SectionResultValues]
ADD CONSTRAINT [fk_SectionResultValues_SectionResults]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[SectionResults]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResultValues_SectionResults'
CREATE INDEX [IX_fk_SectionResultValues_SectionResults]
ON [dbo].[SectionResultValues]
    ([ResultID]);
GO

-- Creating foreign key on [ValueID] in table 'SectionResultValueAnnotations'
ALTER TABLE [dbo].[SectionResultValueAnnotations]
ADD CONSTRAINT [fk_SectionResultValueAnnotations_SectionResultValues]
    FOREIGN KEY ([ValueID])
    REFERENCES [dbo].[SectionResultValues]
        ([ValueID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResultValueAnnotations_SectionResultValues'
CREATE INDEX [IX_fk_SectionResultValueAnnotations_SectionResultValues]
ON [dbo].[SectionResultValueAnnotations]
    ([ValueID]);
GO

-- Creating foreign key on [TimeAggregationIntervalUnitsID] in table 'SectionResultValues'
ALTER TABLE [dbo].[SectionResultValues]
ADD CONSTRAINT [fk_SectionResultValues_AIUnits]
    FOREIGN KEY ([TimeAggregationIntervalUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResultValues_AIUnits'
CREATE INDEX [IX_fk_SectionResultValues_AIUnits]
ON [dbo].[SectionResultValues]
    ([TimeAggregationIntervalUnitsID]);
GO

-- Creating foreign key on [XLocationUnitsID] in table 'SectionResultValues'
ALTER TABLE [dbo].[SectionResultValues]
ADD CONSTRAINT [fk_SectionResultValues_XUnits]
    FOREIGN KEY ([XLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResultValues_XUnits'
CREATE INDEX [IX_fk_SectionResultValues_XUnits]
ON [dbo].[SectionResultValues]
    ([XLocationUnitsID]);
GO

-- Creating foreign key on [ZLocationUnitsID] in table 'SectionResultValues'
ALTER TABLE [dbo].[SectionResultValues]
ADD CONSTRAINT [fk_SectionResultValues_ZUnits]
    FOREIGN KEY ([ZLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SectionResultValues_ZUnits'
CREATE INDEX [IX_fk_SectionResultValues_ZUnits]
ON [dbo].[SectionResultValues]
    ([ZLocationUnitsID]);
GO

-- Creating foreign key on [SpatialReferenceID] in table 'Sites'
ALTER TABLE [dbo].[Sites]
ADD CONSTRAINT [fk_Sites_SpatialReferences]
    FOREIGN KEY ([SpatialReferenceID])
    REFERENCES [dbo].[SpatialReferences]
        ([SpatialReferenceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_Sites_SpatialReferences'
CREATE INDEX [IX_fk_Sites_SpatialReferences]
ON [dbo].[Sites]
    ([SpatialReferenceID]);
GO

-- Creating foreign key on [Offset1UnitID] in table 'SpatialOffsets'
ALTER TABLE [dbo].[SpatialOffsets]
ADD CONSTRAINT [fk_SpatialOffsets_Offset1Units]
    FOREIGN KEY ([Offset1UnitID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpatialOffsets_Offset1Units'
CREATE INDEX [IX_fk_SpatialOffsets_Offset1Units]
ON [dbo].[SpatialOffsets]
    ([Offset1UnitID]);
GO

-- Creating foreign key on [Offset2UnitID] in table 'SpatialOffsets'
ALTER TABLE [dbo].[SpatialOffsets]
ADD CONSTRAINT [fk_SpatialOffsets_Offset2Units]
    FOREIGN KEY ([Offset2UnitID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpatialOffsets_Offset2Units'
CREATE INDEX [IX_fk_SpatialOffsets_Offset2Units]
ON [dbo].[SpatialOffsets]
    ([Offset2UnitID]);
GO

-- Creating foreign key on [Offset3UnitID] in table 'SpatialOffsets'
ALTER TABLE [dbo].[SpatialOffsets]
ADD CONSTRAINT [fk_SpatialOffsets_Offset3Units]
    FOREIGN KEY ([Offset3UnitID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpatialOffsets_Offset3Units'
CREATE INDEX [IX_fk_SpatialOffsets_Offset3Units]
ON [dbo].[SpatialOffsets]
    ([Offset3UnitID]);
GO

-- Creating foreign key on [SpatialReferenceID] in table 'SpatialReferenceExternalIdentifiers'
ALTER TABLE [dbo].[SpatialReferenceExternalIdentifiers]
ADD CONSTRAINT [fk_SpatialReferenceExternalIdentifiers_SpatialReferences]
    FOREIGN KEY ([SpatialReferenceID])
    REFERENCES [dbo].[SpatialReferences]
        ([SpatialReferenceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpatialReferenceExternalIdentifiers_SpatialReferences'
CREATE INDEX [IX_fk_SpatialReferenceExternalIdentifiers_SpatialReferences]
ON [dbo].[SpatialReferenceExternalIdentifiers]
    ([SpatialReferenceID]);
GO

-- Creating foreign key on [SpatialReferenceID] in table 'SpectraResults'
ALTER TABLE [dbo].[SpectraResults]
ADD CONSTRAINT [fk_SpectraResults_SpatialReferences]
    FOREIGN KEY ([SpatialReferenceID])
    REFERENCES [dbo].[SpatialReferences]
        ([SpatialReferenceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResults_SpatialReferences'
CREATE INDEX [IX_fk_SpectraResults_SpatialReferences]
ON [dbo].[SpectraResults]
    ([SpatialReferenceID]);
GO

-- Creating foreign key on [SpatialReferenceID] in table 'TimeSeriesResults'
ALTER TABLE [dbo].[TimeSeriesResults]
ADD CONSTRAINT [fk_TimeSeriesResults_SpatialReferences]
    FOREIGN KEY ([SpatialReferenceID])
    REFERENCES [dbo].[SpatialReferences]
        ([SpatialReferenceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResults_SpatialReferences'
CREATE INDEX [IX_fk_TimeSeriesResults_SpatialReferences]
ON [dbo].[TimeSeriesResults]
    ([SpatialReferenceID]);
GO

-- Creating foreign key on [SpatialReferenceID] in table 'TrajectoryResults'
ALTER TABLE [dbo].[TrajectoryResults]
ADD CONSTRAINT [fk_TrajectoryResults_SpatialReferences]
    FOREIGN KEY ([SpatialReferenceID])
    REFERENCES [dbo].[SpatialReferences]
        ([SpatialReferenceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResults_SpatialReferences'
CREATE INDEX [IX_fk_TrajectoryResults_SpatialReferences]
ON [dbo].[TrajectoryResults]
    ([SpatialReferenceID]);
GO

-- Creating foreign key on [SpatialReferenceID] in table 'TransectResults'
ALTER TABLE [dbo].[TransectResults]
ADD CONSTRAINT [fk_TransectResults_SpatialReferences]
    FOREIGN KEY ([SpatialReferenceID])
    REFERENCES [dbo].[SpatialReferences]
        ([SpatialReferenceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResults_SpatialReferences'
CREATE INDEX [IX_fk_TransectResults_SpatialReferences]
ON [dbo].[TransectResults]
    ([SpatialReferenceID]);
GO

-- Creating foreign key on [SamplingFeatureID] in table 'SpecimenTaxonomicClassifiers'
ALTER TABLE [dbo].[SpecimenTaxonomicClassifiers]
ADD CONSTRAINT [fk_SpecimenTaxonomicClassifiers_Specimens]
    FOREIGN KEY ([SamplingFeatureID])
    REFERENCES [dbo].[Specimens]
        ([SamplingFeatureID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpecimenTaxonomicClassifiers_Specimens'
CREATE INDEX [IX_fk_SpecimenTaxonomicClassifiers_Specimens]
ON [dbo].[SpecimenTaxonomicClassifiers]
    ([SamplingFeatureID]);
GO

-- Creating foreign key on [TaxonomicClassifierID] in table 'SpecimenTaxonomicClassifiers'
ALTER TABLE [dbo].[SpecimenTaxonomicClassifiers]
ADD CONSTRAINT [fk_SpecimenTaxonomicClassifiers_TaxonomicClassifiers]
    FOREIGN KEY ([TaxonomicClassifierID])
    REFERENCES [dbo].[TaxonomicClassifiers]
        ([TaxonomicClassifierID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpecimenTaxonomicClassifiers_TaxonomicClassifiers'
CREATE INDEX [IX_fk_SpecimenTaxonomicClassifiers_TaxonomicClassifiers]
ON [dbo].[SpecimenTaxonomicClassifiers]
    ([TaxonomicClassifierID]);
GO

-- Creating foreign key on [IntendedWavelengthSpacingUnitsID] in table 'SpectraResults'
ALTER TABLE [dbo].[SpectraResults]
ADD CONSTRAINT [fk_SpectraResults_Units]
    FOREIGN KEY ([IntendedWavelengthSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResults_Units'
CREATE INDEX [IX_fk_SpectraResults_Units]
ON [dbo].[SpectraResults]
    ([IntendedWavelengthSpacingUnitsID]);
GO

-- Creating foreign key on [XLocationUnitsID] in table 'SpectraResults'
ALTER TABLE [dbo].[SpectraResults]
ADD CONSTRAINT [fk_SpectraResults_XUnits]
    FOREIGN KEY ([XLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResults_XUnits'
CREATE INDEX [IX_fk_SpectraResults_XUnits]
ON [dbo].[SpectraResults]
    ([XLocationUnitsID]);
GO

-- Creating foreign key on [YLocationUnitsID] in table 'SpectraResults'
ALTER TABLE [dbo].[SpectraResults]
ADD CONSTRAINT [fk_SpectraResults_YUnits]
    FOREIGN KEY ([YLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResults_YUnits'
CREATE INDEX [IX_fk_SpectraResults_YUnits]
ON [dbo].[SpectraResults]
    ([YLocationUnitsID]);
GO

-- Creating foreign key on [ZLocationUnitsID] in table 'SpectraResults'
ALTER TABLE [dbo].[SpectraResults]
ADD CONSTRAINT [fk_SpectraResults_ZUnits]
    FOREIGN KEY ([ZLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResults_ZUnits'
CREATE INDEX [IX_fk_SpectraResults_ZUnits]
ON [dbo].[SpectraResults]
    ([ZLocationUnitsID]);
GO

-- Creating foreign key on [ResultID] in table 'SpectraResultValues'
ALTER TABLE [dbo].[SpectraResultValues]
ADD CONSTRAINT [fk_SpectraResultValues_SpectraResults]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[SpectraResults]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResultValues_SpectraResults'
CREATE INDEX [IX_fk_SpectraResultValues_SpectraResults]
ON [dbo].[SpectraResultValues]
    ([ResultID]);
GO

-- Creating foreign key on [ValueID] in table 'SpectraResultValueAnnotations'
ALTER TABLE [dbo].[SpectraResultValueAnnotations]
ADD CONSTRAINT [fk_SpectraResultValueAnnotations_SpectraResultValues]
    FOREIGN KEY ([ValueID])
    REFERENCES [dbo].[SpectraResultValues]
        ([ValueID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResultValueAnnotations_SpectraResultValues'
CREATE INDEX [IX_fk_SpectraResultValueAnnotations_SpectraResultValues]
ON [dbo].[SpectraResultValueAnnotations]
    ([ValueID]);
GO

-- Creating foreign key on [TimeAggregationIntervalUnitsID] in table 'SpectraResultValues'
ALTER TABLE [dbo].[SpectraResultValues]
ADD CONSTRAINT [fk_SpectraResultValues_AIUnits]
    FOREIGN KEY ([TimeAggregationIntervalUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResultValues_AIUnits'
CREATE INDEX [IX_fk_SpectraResultValues_AIUnits]
ON [dbo].[SpectraResultValues]
    ([TimeAggregationIntervalUnitsID]);
GO

-- Creating foreign key on [WavelengthUnitsID] in table 'SpectraResultValues'
ALTER TABLE [dbo].[SpectraResultValues]
ADD CONSTRAINT [fk_SpectraResultValues_WUnits]
    FOREIGN KEY ([WavelengthUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_SpectraResultValues_WUnits'
CREATE INDEX [IX_fk_SpectraResultValues_WUnits]
ON [dbo].[SpectraResultValues]
    ([WavelengthUnitsID]);
GO

-- Creating foreign key on [TaxonomicClassifierID] in table 'TaxonomicClassifierExternalIdentifiers'
ALTER TABLE [dbo].[TaxonomicClassifierExternalIdentifiers]
ADD CONSTRAINT [fk_TaxonomicClassifierExtIDs_TaxonomicClassifiers]
    FOREIGN KEY ([TaxonomicClassifierID])
    REFERENCES [dbo].[TaxonomicClassifiers]
        ([TaxonomicClassifierID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TaxonomicClassifierExtIDs_TaxonomicClassifiers'
CREATE INDEX [IX_fk_TaxonomicClassifierExtIDs_TaxonomicClassifiers]
ON [dbo].[TaxonomicClassifierExternalIdentifiers]
    ([TaxonomicClassifierID]);
GO

-- Creating foreign key on [ParentTaxonomicClassifierID] in table 'TaxonomicClassifiers'
ALTER TABLE [dbo].[TaxonomicClassifiers]
ADD CONSTRAINT [fk_ParentTaxon_Taxon]
    FOREIGN KEY ([ParentTaxonomicClassifierID])
    REFERENCES [dbo].[TaxonomicClassifiers]
        ([TaxonomicClassifierID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ParentTaxon_Taxon'
CREATE INDEX [IX_fk_ParentTaxon_Taxon]
ON [dbo].[TaxonomicClassifiers]
    ([ParentTaxonomicClassifierID]);
GO

-- Creating foreign key on [IntendedTimeSpacingUnitsID] in table 'TimeSeriesResults'
ALTER TABLE [dbo].[TimeSeriesResults]
ADD CONSTRAINT [fk_TimeSeriesResults_TUnits]
    FOREIGN KEY ([IntendedTimeSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResults_TUnits'
CREATE INDEX [IX_fk_TimeSeriesResults_TUnits]
ON [dbo].[TimeSeriesResults]
    ([IntendedTimeSpacingUnitsID]);
GO

-- Creating foreign key on [XLocationUnitsID] in table 'TimeSeriesResults'
ALTER TABLE [dbo].[TimeSeriesResults]
ADD CONSTRAINT [fk_TimeSeriesResults_XUnits]
    FOREIGN KEY ([XLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResults_XUnits'
CREATE INDEX [IX_fk_TimeSeriesResults_XUnits]
ON [dbo].[TimeSeriesResults]
    ([XLocationUnitsID]);
GO

-- Creating foreign key on [YLocationUnitsID] in table 'TimeSeriesResults'
ALTER TABLE [dbo].[TimeSeriesResults]
ADD CONSTRAINT [fk_TimeSeriesResults_YUnits]
    FOREIGN KEY ([YLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResults_YUnits'
CREATE INDEX [IX_fk_TimeSeriesResults_YUnits]
ON [dbo].[TimeSeriesResults]
    ([YLocationUnitsID]);
GO

-- Creating foreign key on [ZLocationUnitsID] in table 'TimeSeriesResults'
ALTER TABLE [dbo].[TimeSeriesResults]
ADD CONSTRAINT [fk_TimeSeriesResults_ZUnits]
    FOREIGN KEY ([ZLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResults_ZUnits'
CREATE INDEX [IX_fk_TimeSeriesResults_ZUnits]
ON [dbo].[TimeSeriesResults]
    ([ZLocationUnitsID]);
GO

-- Creating foreign key on [ResultID] in table 'TimeSeriesResultValues'
ALTER TABLE [dbo].[TimeSeriesResultValues]
ADD CONSTRAINT [fk_TimeSeriesResultValues_TimeSeriesResults]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[TimeSeriesResults]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResultValues_TimeSeriesResults'
CREATE INDEX [IX_fk_TimeSeriesResultValues_TimeSeriesResults]
ON [dbo].[TimeSeriesResultValues]
    ([ResultID]);
GO

-- Creating foreign key on [ValueID] in table 'TimeSeriesResultValueAnnotations'
ALTER TABLE [dbo].[TimeSeriesResultValueAnnotations]
ADD CONSTRAINT [fk_TimeSeriesResultValueAnnotations_TimeSeriesResultValues]
    FOREIGN KEY ([ValueID])
    REFERENCES [dbo].[TimeSeriesResultValues]
        ([ValueID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResultValueAnnotations_TimeSeriesResultValues'
CREATE INDEX [IX_fk_TimeSeriesResultValueAnnotations_TimeSeriesResultValues]
ON [dbo].[TimeSeriesResultValueAnnotations]
    ([ValueID]);
GO

-- Creating foreign key on [TimeAggregationIntervalUnitsID] in table 'TimeSeriesResultValues'
ALTER TABLE [dbo].[TimeSeriesResultValues]
ADD CONSTRAINT [fk_TimeSeriesResultValues_AIUnits]
    FOREIGN KEY ([TimeAggregationIntervalUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TimeSeriesResultValues_AIUnits'
CREATE INDEX [IX_fk_TimeSeriesResultValues_AIUnits]
ON [dbo].[TimeSeriesResultValues]
    ([TimeAggregationIntervalUnitsID]);
GO

-- Creating foreign key on [IntendedTrajectorySpacingUnitsID] in table 'TrajectoryResults'
ALTER TABLE [dbo].[TrajectoryResults]
ADD CONSTRAINT [fk_TrajectoryResults_TSUnits]
    FOREIGN KEY ([IntendedTrajectorySpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResults_TSUnits'
CREATE INDEX [IX_fk_TrajectoryResults_TSUnits]
ON [dbo].[TrajectoryResults]
    ([IntendedTrajectorySpacingUnitsID]);
GO

-- Creating foreign key on [IntendedTimeSpacingUnitsID] in table 'TrajectoryResults'
ALTER TABLE [dbo].[TrajectoryResults]
ADD CONSTRAINT [fk_TrajectoryResults_TUnits]
    FOREIGN KEY ([IntendedTimeSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResults_TUnits'
CREATE INDEX [IX_fk_TrajectoryResults_TUnits]
ON [dbo].[TrajectoryResults]
    ([IntendedTimeSpacingUnitsID]);
GO

-- Creating foreign key on [ResultID] in table 'TrajectoryResultValues'
ALTER TABLE [dbo].[TrajectoryResultValues]
ADD CONSTRAINT [fk_TrajectoryResultValues_TrajectoryResults]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[TrajectoryResults]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResultValues_TrajectoryResults'
CREATE INDEX [IX_fk_TrajectoryResultValues_TrajectoryResults]
ON [dbo].[TrajectoryResultValues]
    ([ResultID]);
GO

-- Creating foreign key on [ValueID] in table 'TrajectoryResultValueAnnotations'
ALTER TABLE [dbo].[TrajectoryResultValueAnnotations]
ADD CONSTRAINT [fk_TrajectoryResultValueAnnotations_TrajectoryResultValues]
    FOREIGN KEY ([ValueID])
    REFERENCES [dbo].[TrajectoryResultValues]
        ([ValueID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResultValueAnnotations_TrajectoryResultValues'
CREATE INDEX [IX_fk_TrajectoryResultValueAnnotations_TrajectoryResultValues]
ON [dbo].[TrajectoryResultValueAnnotations]
    ([ValueID]);
GO

-- Creating foreign key on [TimeAggregationIntervalUnitsID] in table 'TrajectoryResultValues'
ALTER TABLE [dbo].[TrajectoryResultValues]
ADD CONSTRAINT [fk_TrajectoryResultValues_AIUnits]
    FOREIGN KEY ([TimeAggregationIntervalUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResultValues_AIUnits'
CREATE INDEX [IX_fk_TrajectoryResultValues_AIUnits]
ON [dbo].[TrajectoryResultValues]
    ([TimeAggregationIntervalUnitsID]);
GO

-- Creating foreign key on [TrajectoryDistanceUnitsID] in table 'TrajectoryResultValues'
ALTER TABLE [dbo].[TrajectoryResultValues]
ADD CONSTRAINT [fk_TrajectoryResultValues_DistanceUnits]
    FOREIGN KEY ([TrajectoryDistanceUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResultValues_DistanceUnits'
CREATE INDEX [IX_fk_TrajectoryResultValues_DistanceUnits]
ON [dbo].[TrajectoryResultValues]
    ([TrajectoryDistanceUnitsID]);
GO

-- Creating foreign key on [XLocationUnitsID] in table 'TrajectoryResultValues'
ALTER TABLE [dbo].[TrajectoryResultValues]
ADD CONSTRAINT [fk_TrajectoryResultValues_XUnits]
    FOREIGN KEY ([XLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResultValues_XUnits'
CREATE INDEX [IX_fk_TrajectoryResultValues_XUnits]
ON [dbo].[TrajectoryResultValues]
    ([XLocationUnitsID]);
GO

-- Creating foreign key on [YLocationUnitsID] in table 'TrajectoryResultValues'
ALTER TABLE [dbo].[TrajectoryResultValues]
ADD CONSTRAINT [fk_TrajectoryResultValues_YUnits]
    FOREIGN KEY ([YLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResultValues_YUnits'
CREATE INDEX [IX_fk_TrajectoryResultValues_YUnits]
ON [dbo].[TrajectoryResultValues]
    ([YLocationUnitsID]);
GO

-- Creating foreign key on [ZLocationUnitsID] in table 'TrajectoryResultValues'
ALTER TABLE [dbo].[TrajectoryResultValues]
ADD CONSTRAINT [fk_TrajectoryResultValues_ZUnits]
    FOREIGN KEY ([ZLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TrajectoryResultValues_ZUnits'
CREATE INDEX [IX_fk_TrajectoryResultValues_ZUnits]
ON [dbo].[TrajectoryResultValues]
    ([ZLocationUnitsID]);
GO

-- Creating foreign key on [IntendedTimeSpacingUnitsID] in table 'TransectResults'
ALTER TABLE [dbo].[TransectResults]
ADD CONSTRAINT [fk_TransectResults_TMUnits]
    FOREIGN KEY ([IntendedTimeSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResults_TMUnits'
CREATE INDEX [IX_fk_TransectResults_TMUnits]
ON [dbo].[TransectResults]
    ([IntendedTimeSpacingUnitsID]);
GO

-- Creating foreign key on [IntendedTransectSpacingUnitsID] in table 'TransectResults'
ALTER TABLE [dbo].[TransectResults]
ADD CONSTRAINT [fk_TransectResults_TSUnits]
    FOREIGN KEY ([IntendedTransectSpacingUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResults_TSUnits'
CREATE INDEX [IX_fk_TransectResults_TSUnits]
ON [dbo].[TransectResults]
    ([IntendedTransectSpacingUnitsID]);
GO

-- Creating foreign key on [ZLocationUnitsID] in table 'TransectResults'
ALTER TABLE [dbo].[TransectResults]
ADD CONSTRAINT [fk_TransectResults_Units]
    FOREIGN KEY ([ZLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResults_Units'
CREATE INDEX [IX_fk_TransectResults_Units]
ON [dbo].[TransectResults]
    ([ZLocationUnitsID]);
GO

-- Creating foreign key on [ResultID] in table 'TransectResultValues'
ALTER TABLE [dbo].[TransectResultValues]
ADD CONSTRAINT [fk_TransectResultValues_TransectResults]
    FOREIGN KEY ([ResultID])
    REFERENCES [dbo].[TransectResults]
        ([ResultID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResultValues_TransectResults'
CREATE INDEX [IX_fk_TransectResultValues_TransectResults]
ON [dbo].[TransectResultValues]
    ([ResultID]);
GO

-- Creating foreign key on [ValueID] in table 'TransectResultValueAnnotations'
ALTER TABLE [dbo].[TransectResultValueAnnotations]
ADD CONSTRAINT [fk_TransectResultValueAnnotations_TransectResultValues]
    FOREIGN KEY ([ValueID])
    REFERENCES [dbo].[TransectResultValues]
        ([ValueID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResultValueAnnotations_TransectResultValues'
CREATE INDEX [IX_fk_TransectResultValueAnnotations_TransectResultValues]
ON [dbo].[TransectResultValueAnnotations]
    ([ValueID]);
GO

-- Creating foreign key on [TimeAggregationIntervalUnitsID] in table 'TransectResultValues'
ALTER TABLE [dbo].[TransectResultValues]
ADD CONSTRAINT [fk_TransectResultValues_AIUnits]
    FOREIGN KEY ([TimeAggregationIntervalUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResultValues_AIUnits'
CREATE INDEX [IX_fk_TransectResultValues_AIUnits]
ON [dbo].[TransectResultValues]
    ([TimeAggregationIntervalUnitsID]);
GO

-- Creating foreign key on [TransectDistanceUnitsID] in table 'TransectResultValues'
ALTER TABLE [dbo].[TransectResultValues]
ADD CONSTRAINT [fk_TransectResultValues_DistanceUnits]
    FOREIGN KEY ([TransectDistanceUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResultValues_DistanceUnits'
CREATE INDEX [IX_fk_TransectResultValues_DistanceUnits]
ON [dbo].[TransectResultValues]
    ([TransectDistanceUnitsID]);
GO

-- Creating foreign key on [XLocationUnitsID] in table 'TransectResultValues'
ALTER TABLE [dbo].[TransectResultValues]
ADD CONSTRAINT [fk_TransectResultValues_XUnits]
    FOREIGN KEY ([XLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResultValues_XUnits'
CREATE INDEX [IX_fk_TransectResultValues_XUnits]
ON [dbo].[TransectResultValues]
    ([XLocationUnitsID]);
GO

-- Creating foreign key on [YLocationUnitsID] in table 'TransectResultValues'
ALTER TABLE [dbo].[TransectResultValues]
ADD CONSTRAINT [fk_TransectResultValues_YUnits]
    FOREIGN KEY ([YLocationUnitsID])
    REFERENCES [dbo].[Units]
        ([UnitsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_TransectResultValues_YUnits'
CREATE INDEX [IX_fk_TransectResultValues_YUnits]
ON [dbo].[TransectResultValues]
    ([YLocationUnitsID]);
GO

-- Creating foreign key on [VariableID] in table 'VariableExtensionPropertyValues'
ALTER TABLE [dbo].[VariableExtensionPropertyValues]
ADD CONSTRAINT [fk_VariableExtensionPropertyValues_Variables]
    FOREIGN KEY ([VariableID])
    REFERENCES [dbo].[Variables]
        ([VariableID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_VariableExtensionPropertyValues_Variables'
CREATE INDEX [IX_fk_VariableExtensionPropertyValues_Variables]
ON [dbo].[VariableExtensionPropertyValues]
    ([VariableID]);
GO

-- Creating foreign key on [VariableID] in table 'VariableExternalIdentifiers'
ALTER TABLE [dbo].[VariableExternalIdentifiers]
ADD CONSTRAINT [fk_VariableExternalIdentifiers_Variables]
    FOREIGN KEY ([VariableID])
    REFERENCES [dbo].[Variables]
        ([VariableID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_VariableExternalIdentifiers_Variables'
CREATE INDEX [IX_fk_VariableExternalIdentifiers_Variables]
ON [dbo].[VariableExternalIdentifiers]
    ([VariableID]);
GO

-- Creating foreign key on [DerivationEquation_DerivationEquationID] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [FK_ResultDerivationEquations]
    FOREIGN KEY ([DerivationEquation_DerivationEquationID])
    REFERENCES [dbo].[DerivationEquations]
        ([DerivationEquationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ResultDerivationEquations'
CREATE INDEX [IX_FK_ResultDerivationEquations]
ON [dbo].[Results]
    ([DerivationEquation_DerivationEquationID]);
GO

-- Creating foreign key on [ReferenceMaterialValue_ReferenceMaterialValueID] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [FK_ResultNormalizationValues]
    FOREIGN KEY ([ReferenceMaterialValue_ReferenceMaterialValueID])
    REFERENCES [dbo].[ReferenceMaterialValues]
        ([ReferenceMaterialValueID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ResultNormalizationValues'
CREATE INDEX [IX_FK_ResultNormalizationValues]
ON [dbo].[Results]
    ([ReferenceMaterialValue_ReferenceMaterialValueID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------