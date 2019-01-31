using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BikeClubLib.Entities
{
    public partial class Club
    {
        private double quotapartial;
        private Payment p;

        public Club()
        {
            Members = new List<Member>();
            Vocals = new List<Member>();
            Elections = new List<Election>();
        }
        public Club(String name, double quota, Member treasurer, Member actualPresident)
        {
            Name = name;
            Quota = quota;
            Treasurer = treasurer;
            ActualPresident = actualPresident;
            Members = new List<Member>();
            Vocals = new List<Member>();
            Elections = new List<Election>();

        }
        public Club(String name, double quota)
        {
            Name = name;
            Quota = quota;
            Members = new List<Member>();
            Vocals = new List<Member>();
            Elections = new List<Election>();

        }
        public double addMember(Member m1)
        {
            Members.Add(m1);
            quotapartial = (13 - m1.EnrollmentDate.Month) * Quota / 12;
            if ((m1.BirthDate.Year - DateTime.Today.Year) < 18)
            {
                quotapartial = quotapartial / 2;
            }
            p = new Payment(m1.EnrollmentDate, "Primera cuota", quotapartial);
            m1.addPayment(p);
            return quotapartial;

        }

   

        internal void nuevoPresi(Member m)
        {
            this.ActualPresident = m;
            //throw new NotImplementedException();
        }

        internal void anadirmiembro(Member m1)
        {
            Members.Add(m1);
        }
    }
}
