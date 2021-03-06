//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Hatfield.EnviroData.Core
{
    using System;
    using System.Collections.Generic;
    
    public partial class CV_RelationshipType
    {
        public CV_RelationshipType()
        {
            this.DatasetCitations = new HashSet<DatasetCitation>();
            this.MethodCitations = new HashSet<MethodCitation>();
            this.RelatedActions = new HashSet<RelatedAction>();
            this.RelatedAnnotations = new HashSet<RelatedAnnotation>();
            this.RelatedCitations = new HashSet<RelatedCitation>();
            this.RelatedDatasets = new HashSet<RelatedDataset>();
            this.RelatedEquipments = new HashSet<RelatedEquipment>();
            this.RelatedFeatures = new HashSet<RelatedFeature>();
            this.RelatedModels = new HashSet<RelatedModel>();
            this.RelatedResults = new HashSet<RelatedResult>();
        }
    
        public string Term { get; set; }
        public string Name { get; set; }
        public string Definition { get; set; }
        public string Category { get; set; }
        public string SourceVocabularyURI { get; set; }
    
        public virtual ICollection<DatasetCitation> DatasetCitations { get; set; }
        public virtual ICollection<MethodCitation> MethodCitations { get; set; }
        public virtual ICollection<RelatedAction> RelatedActions { get; set; }
        public virtual ICollection<RelatedAnnotation> RelatedAnnotations { get; set; }
        public virtual ICollection<RelatedCitation> RelatedCitations { get; set; }
        public virtual ICollection<RelatedDataset> RelatedDatasets { get; set; }
        public virtual ICollection<RelatedEquipment> RelatedEquipments { get; set; }
        public virtual ICollection<RelatedFeature> RelatedFeatures { get; set; }
        public virtual ICollection<RelatedModel> RelatedModels { get; set; }
        public virtual ICollection<RelatedResult> RelatedResults { get; set; }
    }
}
