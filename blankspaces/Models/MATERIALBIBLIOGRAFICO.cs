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
    
    public partial class MATERIALBIBLIOGRAFICO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MATERIALBIBLIOGRAFICO()
        {
            this.PRESTAMOes = new HashSet<PRESTAMO>();
        }
    
        public decimal IDMATBIBLIO { get; set; }
        public Nullable<decimal> IDLOCALIDAD { get; set; }
        public Nullable<decimal> IDCATEGORIA { get; set; }
        public Nullable<decimal> IDTIPO { get; set; }
        public string IDUSUARIO { get; set; }
        public Nullable<decimal> REL_IDAUTOR { get; set; }
        public string NOMBRE { get; set; }
        public string DESCRIPCION { get; set; }
        public string SINOPSIS { get; set; }
        public Nullable<System.DateTime> FECHA { get; set; }
        public Nullable<int> VOLUMEN { get; set; }
        public string UNIDADES { get; set; }
        public string EDITORIAL { get; set; }
        public string LENGUAJE { get; set; }
        public string FOTO { get; set; }
        public Nullable<int> IDAUTOR { get; set; }
    
        public virtual CATERGORIA CATERGORIA { get; set; }
        public virtual DOCUMENTOLOCALIDAD DOCUMENTOLOCALIDAD { get; set; }
        public virtual TIPODOCUMENTO TIPODOCUMENTO { get; set; }
        public virtual RELATIONSHIP_15 RELATIONSHIP_15 { get; set; }
        public virtual USUARIO USUARIO { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PRESTAMO> PRESTAMOes { get; set; }
    }
}
