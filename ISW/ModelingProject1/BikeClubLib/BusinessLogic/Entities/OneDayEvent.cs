using BikeClubLib.BusinessLogic.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BikeClubLib.Entities
{
    public partial class OneDayEvent : Event
    {
        public OneDayEvent()
        {
            Members = new List<Member>();
        }

        public OneDayEvent(Route route, DateTime startDate, string description, Member responsible)
        {
            Route = route;
            StartDate = startDate;
            Description = description;
            Responsible = responsible;
            Members = new List<Member>();
        }
        public OneDayEvent(string description, DateTime startDate, Member responsible,Route route)
        {
            Route = route;
            StartDate = startDate;
            Description = description;
            Responsible = responsible;
            Members = new List<Member>();
        }
        public void registerMember(Member m1)
        {
            DateTime hoy = DateTime.Today.AddDays(2);
            if(hoy <= this.StartDate.Date)
            {
                if (m1.BirthDate.AddYears(18).Date > DateTime.Today && this.Route.Difficulty.Equals(Difficulty.pro))
                {
                    throw new ServiceException("Si eres menor de 18 no puedes hacer rutas pro");
                }
                else if(m1.BirthDate.AddYears(18).Date > DateTime.Today && (this.Route.Difficulty.Equals(Difficulty.medium) || this.Route.Difficulty.Equals(Difficulty.hard)))
                {
                    if (this.Members.Contains(m1.Parent))
                    {
                        this.Members.Add(m1);
                    }
                    else { throw new ServiceException("Para poder apuntarte a este evento, antes tiene que apuntarse tu padre"); }
                } else { this.Members.Add(m1); }

            }
            else { throw new ServiceException("Solo puedes apuntarte hasta 2 días antes del evento"); }
        }
    }
}
