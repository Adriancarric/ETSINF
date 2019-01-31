using BikeClubLib.BusinessLogic.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BikeClubLib.Entities
{
    public partial class Route
    {
        private IBikeClubService service;

        public Route() { }
        public Route(IBikeClubService service)
        {
            this.service = service;
   
            SomeDaysEvent = new List<SomeDaysEvent>();
        }
        public Route(Difficulty difficulty, int distance, string end, string name, int ramp, string start)
        {  
            Name = name;
            Start = start;
            End = end;
            Distance = distance;
            Ramp = ramp;
            Difficulty = difficulty;
            SomeDaysEvent = new List<SomeDaysEvent>();
        }
        public Route(string name, string start, string end, int ramp, int distance, Difficulty difficulty)
        {
            Name = name;
            Start = start;
            End = end;
            Distance = distance;
            Ramp = ramp;
            Difficulty = difficulty;
            SomeDaysEvent = new List<SomeDaysEvent>();
        }
    }
}
