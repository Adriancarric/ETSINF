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
    using System.Linq;
    using System.Text;

    public partial class Votes
	{
		public int NumberOfVotesReceived
		{
			get;
			set;
		}

		public bool HasVoted
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

		public virtual Member Member
		{
			get;
			set;
		}

		public virtual Election Election
		{
			get;
			set;
		}

	}
}

