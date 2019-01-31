﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó mediante una herramienta.
//     Los cambios del archivo se perderán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------
namespace BikeClubLib.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using System.Text;

    public partial class Event
	{

        public DateTime StartDate
		{
			get;
			set;
		}

		[Key]
        
        public int ID
		{
			get;
			set;
		}

		public string Description
		{
			get;
			set;
		}
        
        public virtual ICollection<Member> Members
		{
			get;
			set;
		}

        [InverseProperty("ProposedEvents")]
        public virtual Member Responsible
		{
			get;
			set;
		}

	}
}
