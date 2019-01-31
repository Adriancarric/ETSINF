using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BikeClubLib.Entities
{
    public partial class Election
    {
        public Election()
        {
            Votes = new List<Votes>();
        }
        public Election(DateTime startDate, Member president)
        {
            StartDate = startDate;
            President = president;
            Votes = new List<Votes>();
        }
    }
}
