//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace blankspaces.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class MUNICIPIO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MUNICIPIO()
        {
            this.DEPARTAMENTOes = new HashSet<DEPARTAMENTO>();
        }
    
        public int IDMUNICIPIO { get; set; }
        public string DUI { get; set; }
        public string NOMMUN { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DEPARTAMENTO> DEPARTAMENTOes { get; set; }
        public virtual PERSONA PERSONA { get; set; }
    }
}
