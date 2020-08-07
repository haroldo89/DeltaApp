//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DeltaApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PRODUCT
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PRODUCT()
        {
            this.MEASURE_PRODUCT = new HashSet<MEASURE_PRODUCT>();
            this.ROL = new HashSet<ROL>();
        }
    
        public int PDT_ID { get; set; }
        public string PDT_NAME { get; set; }
        public string PDT_SIGLA { get; set; }
        public bool PDT_HASCODE { get; set; }
        public Nullable<int> PROC_N0_ID { get; set; }
        public Nullable<int> PROC_N1_ID { get; set; }
        public Nullable<int> PROC_N2_ID { get; set; }
        public Nullable<int> PROC_N3_ID { get; set; }
        public string PDT_DESC { get; set; }
        public int PDT_OPORTUNITY_TYPE { get; set; }
        public Nullable<System.DateTime> PDT_OPORTUNITY_DATE_ACCORDED { get; set; }
        public string PDT_OPORTUNITY_PTO_REF { get; set; }
        public Nullable<int> PDT_OPORTUNITY_DAYS { get; set; }
        public Nullable<int> PDT_OPORTUNITY_HOURS { get; set; }
        public Nullable<int> PDT_OPORTUNITY_MINUTES { get; set; }
        public int GOAL_TYPE_ID { get; set; }
        public string GOAL_QUANTITY_MONTH { get; set; }
        public string GOAL_POBLATION { get; set; }
        public Nullable<int> GOAL_CONFIABILITY_INDEX { get; set; }
        public Nullable<int> GOAL_SAMPLES { get; set; }
    
        public virtual GOAL_CONFIABILITY_INDEX GOAL_CONFIABILITY_INDEX1 { get; set; }
        public virtual PROCESS_N0 PROCESS_N0 { get; set; }
        public virtual PROCESS_N1 PROCESS_N1 { get; set; }
        public virtual PROCESS_N2 PROCESS_N2 { get; set; }
        public virtual PROCESS_N3 PROCESS_N3 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MEASURE_PRODUCT> MEASURE_PRODUCT { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ROL> ROL { get; set; }
    }
}
