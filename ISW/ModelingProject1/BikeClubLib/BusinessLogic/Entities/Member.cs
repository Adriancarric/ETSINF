using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BikeClubLib.Entities
{
    public partial class Member
    {
        public Member()
        {
            Payments = new List<Payment>();
            Children = new List<Member>();
            Votes = new List<Votes>();
            Events = new List<Event>();
            ProposedEvents = new List<Event>();
        }

        public Member(string iD, string name, string login, string password, string iBAN, DateTime enrollmentDate, DateTime? cancellationDate, DateTime birthDate,  Member parent)
        {
            ID = iD;
            Name = name;
            IBAN = iBAN;
            EnrollmentDate = enrollmentDate;
            CancellationDate = cancellationDate;
            BirthDate = birthDate;
            Login = login;
            Password = password;
            Parent = parent;
            Payments = new List<Payment>();
            Children = new List<Member>();
            Votes = new List<Votes>();
            Events = new List<Event>();
            ProposedEvents = new List<Event>();
        }
       
       
        public Member(string iD, string name, string login, string password, string iBAN, DateTime birthDate, DateTime enrollmentDate)
        {
            ID = iD;
            Name = name;
            IBAN = iBAN;
            EnrollmentDate = enrollmentDate;            
            BirthDate = birthDate;
            Login = login;
            Password = password;           
            Payments = new List<Payment>();
            Children = new List<Member>();
            Votes = new List<Votes>();
            Events = new List<Event>();
            ProposedEvents = new List<Event>();
        }
        public void addSon(Member p, Member h)
        {
            p.Children.Add(h);
            h.Parent = p;

        }
        public void addPayment(Payment p)
        {
            Payments.Add(p);
        }
    }
}
