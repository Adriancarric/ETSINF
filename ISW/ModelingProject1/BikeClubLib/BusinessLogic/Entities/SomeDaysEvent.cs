using BikeClubLib.BusinessLogic.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BikeClubLib.Entities
{
    public partial class SomeDaysEvent : Event
    {
        public SomeDaysEvent()
        {
            Members = new List<Member>();
            Routes = new List<Route>();
        }
        public SomeDaysEvent(DateTime startDate, string description, Member responsible, DateTime finishDate)
        {
            StartDate = startDate;
            Description = description;
            Responsible = responsible;
            FinishDate = finishDate;
            Members = new List<Member>();
            Routes = new List<Route>();
        }
        public SomeDaysEvent(string description, DateTime startDate, Member responsible, DateTime finishDate)
        {
            StartDate = startDate;
            Description = description;
            Responsible = responsible;
            FinishDate = finishDate;
            Members = new List<Member>();
            Routes = new List<Route>();
        }
        public void addRoute(Route r1)
        {
            Routes.Add(r1);
        }
        public void registerMember(Member m1)
        {
            bool profesional = false;
            bool dificil = false;
            bool medio = false;

            foreach(Route r in this.Routes)
            {
                if (r.Difficulty.Equals(Difficulty.pro)) { profesional = true; }
                if (r.Difficulty.Equals(Difficulty.hard)) { dificil = true; }
                if (r.Difficulty.Equals(Difficulty.medium)) { medio = true; }
            }

            DateTime hoy = DateTime.Today.AddDays(2);
            if (hoy <= this.StartDate.Date)
            {
                if (m1.BirthDate.AddYears(18).Date > this.StartDate && profesional)
                {
                    throw new ServiceException("Si eres menor de 18 no puedes hacer rutas pro");
                }
                else if (m1.BirthDate.AddYears(18).Date > this.StartDate && medio || dificil)
                {
                    if (this.Members.Contains(m1.Parent))
                    {
                        this.Members.Add(m1);
                    }
                    else { throw new ServiceException("Para poder apuntarte a este evento, antes tiene que apuntarse tu padre"); }
                }
                else { this.Members.Add(m1); }

            }
            else { throw new ServiceException("Solo puedes apuntarte hasta 2 días antes del evento"); }
        }
        }
    }

