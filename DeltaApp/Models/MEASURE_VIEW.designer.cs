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
    
    public partial class MEASURE_VIEW
    {
        public int MSR_ID { get; set; }
        public int PDT_ID { get; set; }
        public string PDT_NAME { get; set; }
        public string PDT_SIGLA { get; set; }
        public string PDT_RAST_CODE { get; set; }
        public int USR_ID { get; set; }
        public string USR_NAME { get; set; }
        public Nullable<int> REPROCES_COUNT { get; set; }
        public int AREA_ID { get; set; }
        public string AREA_NAME { get; set; }
        public Nullable<int> DIV_N1_ID { get; set; }
        public string DIV_N1_NAME { get; set; }
        public Nullable<int> DIV_N2_ID { get; set; }
        public string DIV_N2_NAME { get; set; }
        public Nullable<int> DIV_N3_ID { get; set; }
        public string DIV_N3_NAME { get; set; }
        public Nullable<bool> PDT_DELIVERY_OPT { get; set; }
        public Nullable<int> MSR_DAYS { get; set; }
        public Nullable<int> MSR_HOUR { get; set; }
        public Nullable<int> MSR_MINUTES { get; set; }
        public Nullable<bool> MSR_OK { get; set; }
        public Nullable<int> MSR_PERTINENCES_OK { get; set; }
        public Nullable<System.DateTime> MSR_DATE { get; set; }
    }
}
