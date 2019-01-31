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

    public partial class Member
	{
		public string Name
		{
			get;
			set;
		}

		public string IBAN
		{
			get;
			set;
		}

		[Key]
        public string ID
		{
			get;
			set;
		}

		public DateTime EnrollmentDate
		{
			get;
			set;
		}

		public DateTime? CancellationDate
		{
			get;
			set;
		}

		public DateTime BirthDate
		{
			get;
			set;
		}

		public string Login
		{
			get;
			set;
		}

		public string Password
		{
			get;
			set;
		}

		public virtual ICollection<Payment> Payments
		{
			get;
			set;
		}
        [InverseProperty("Children")]
		public virtual Member Parent
		{
			get;
			set;
		}
        [InverseProperty("Parent")]
		public virtual ICollection<Member> Children
		{
			get;
			set;
		}

		public virtual ICollection<Votes> Votes
		{
			get;
			set;
		}

        
        public virtual ICollection<Event> Events
		{
			get;
			set;
		}

        
        public virtual ICollection<Event> ProposedEvents
		{
			get;
			set;
		}

	}
}

