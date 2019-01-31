using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BikeClubLib.Entities
{
    public partial class Event
    {
        public Event()
        {
            Members = new List<Member>();

        }

        public Event(DateTime startDate, string description, Member responsible)
        {
            StartDate = startDate;
            Description = description;
            Responsible = responsible;
            Members = new List<Member>();

        }
        
    }
}

