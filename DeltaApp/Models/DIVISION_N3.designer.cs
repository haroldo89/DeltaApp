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
    
    public partial class DIVISION_N3
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DIVISION_N3()
        {
            this.MEASURE_PRODUCT = new HashSet<MEASURE_PRODUCT>();
        }
    
        public int DIV_N3_ID { get; set; }
        public string DIV_N3_NAME { get; set; }
        public int DIV_N2_ID { get; set; }
    
        public virtual DIVISION_N2 DIVISION_N2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MEASURE_PRODUCT> MEASURE_PRODUCT { get; set; }
    }
}