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
    
    public partial class PERSONA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PERSONA()
        {
            this.DETALLEDEPERSONAs = new HashSet<DETALLEDEPERSONA>();
            this.USUARIOs = new HashSet<USUARIO>();
        }
    
        public string IDPERSONA { get; set; }
        public Nullable<int> IDMUNICIPIO { get; set; }
        public string NOMBRE { get; set; }
        public string APELLIDO { get; set; }
        public Nullable<System.DateTime> FECHANACIMIENTO { get; set; }
        public string GENERO { get; set; }
        public string DIRECCION { get; set; }
        public string TELEFONO { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DETALLEDEPERSONA> DETALLEDEPERSONAs { get; set; }
        public virtual MUNICIPIO MUNICIPIO { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<USUARIO> USUARIOs { get; set; }
    }
}
