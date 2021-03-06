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
    
    public partial class CategoricalResult
    {
        public CategoricalResult()
        {
            this.CategoricalResultValues = new HashSet<CategoricalResultValue>();
        }
    
        public long ResultID { get; set; }
        public Nullable<double> XLocation { get; set; }
        public Nullable<int> XLocationUnitsID { get; set; }
        public Nullable<double> YLocation { get; set; }
        public Nullable<int> YLocationUnitsID { get; set; }
        public Nullable<double> ZLocation { get; set; }
        public Nullable<int> ZLocationUnitsID { get; set; }
        public Nullable<int> SpatialReferenceID { get; set; }
        public string QualityCodeCV { get; set; }
    
        public virtual CV_QualityCode CV_QualityCode { get; set; }
        public virtual Result Result { get; set; }
        public virtual SpatialReference SpatialReference { get; set; }
        public virtual ICollection<CategoricalResultValue> CategoricalResultValues { get; set; }
    }
}
