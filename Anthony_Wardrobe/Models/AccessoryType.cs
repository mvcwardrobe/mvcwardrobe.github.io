//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Anthony_Wardrobe.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class AccessoryType
    {
        public AccessoryType()
        {
            this.MyAccessories = new HashSet<MyAccessory>();
        }
    
        public int AccessoryID { get; set; }
        public string AccessoryType1 { get; set; }
    
        public virtual ICollection<MyAccessory> MyAccessories { get; set; }
    }
}
