using BikeClubLib.Entities;
using BikeClubLib.Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BikeClubLib.BusinessLogic.Services
{
    public class BikeClubService : IBikeClubService
    {
        private readonly IDAL dal;
        private double returned;
        protected Member lastlogin;
        private double returnedhijo;
        private Club clubs;


        public BikeClubService(IDAL dal)
        {
            this.dal = dal;
        }
        public void removeAllData()
        {
            if (dal.GetAll<Club>().Any())
            {
                Club c = dal.GetAll<Club>().First();

                Member president = c.ActualPresident;
                c.ActualPresident = null;

                Member treasurer = c.Treasurer;
                c.Treasurer = null;

                dal.Commit();
            }
            dal.Clear<Club>();
            dal.Clear<Member>();
            dal.Clear<Election>();
            dal.Clear<Event>();
            dal.Clear<Payment>();
            dal.Clear<OneDayEvent>();
            dal.Clear<Route>();
            dal.Clear<SomeDaysEvent>();
            dal.Clear<Votes>();

            dal.Commit();


        }

        public Club returnClub()
        {
            return dal.GetAll<Club>().First<Club>();
        }

        public void addClub(Club c)
        {
            dal.Insert<Club>(c);
            clubs = c;
            dal.Commit();
            //throw new NotImplementedException();
        }

        public double addMember(Club c, Member m1) 
        {
            
            //returned = c.addMember(m1);
            returned = cuota(m1);
                dal.Insert<Member>(m1);
                dal.Commit();
            c.anadirmiembro(m1);
                return returned;
            throw new NullReferenceException();


            //throw new NotImplementedException();
        }

        public double cuota(Member m1)
        {
            double quotapartial;
            Payment p;
            Club c1 = dal.GetAll<Club>().First<Club>();
            quotapartial = (13 - m1.EnrollmentDate.Month) * c1.Quota  / 12;
            if ((DateTime.Today.Year - m1.BirthDate.Year  ) < 18)
            {
                quotapartial = quotapartial / 2;
            }
            p = new Payment(m1.EnrollmentDate, "Primera cuota", quotapartial);
            m1.addPayment(p);
            return quotapartial;
        }

        public IEnumerable<Club> getAllClubs()
        {
           return dal.GetAll<Club>();
        }

        public double addSon(Club c, Member m2, Member m6)
        {
            if (m2.IBAN.Equals(m6.IBAN)) { 
            //returnedhijo = c.addMember(m6);
                returnedhijo = cuota(m6);
                
                dal.Insert<Member>(m6);
                
                dal.Commit();
                m2.addSon(m2, m6);
                return returnedhijo;
        } else { throw new ServiceException("El IBAN del padre ha de coincidir con el IBAN del hijo"); }
            //throw new NotImplementedException();
        }

        public IEnumerable<Member> getAllMembers()
        {
            return dal.GetAll<Member>();
            throw new NotImplementedException();
        }

        public void definePresident(Club c, Member m)
        {
            c.nuevoPresi(m);

        }

        public Member login(string v1, string v2)
        {
            List<Member> miembros = dal.GetAll<Member>().ToList();
            foreach (Member m1 in miembros)
            {
                if (m1.Login == v1 && m1.Password == v2)
                {
                    lastlogin = m1;
                    return m1;
                }
            }
            return null;
            //throw new NotImplementedException();
        }

        public Member lastLogin()
        {
            return lastlogin;
            //throw new NotImplementedException();
        }

        public Member logout()
        {
            lastlogin = null;
            return null;
            //throw new NotImplementedException();
        }

        public void addRoute(Route r1)
        {
            dal.Insert<Route>(r1);
            dal.Commit();
            //throw new NotImplementedException();
        }

        public IEnumerable<Route> getAllRoutes()
        {
            return dal.GetAll<Route>();
            //throw new NotImplementedException();
        }

        public IEnumerable<Event> getAllEvents()
        {
            return dal.GetAll<Event>();
            //throw new NotImplementedException();
        }
        public Route findRouteByName(string name)
        {
            return dal.GetById<Route>(name);
        }
        public void addOneDayEvent(Event evnt)
        {
            dal.Insert<Event>(evnt);
            dal.Commit();
            //throw new NotImplementedException();
        }

        public void saveChanges()
        {
            dal.Commit();
        }
        public Member findMemberById(string dni)
        {
            if (dal.GetById<Member>(dni) != null)
            {
                return dal.GetById<Member>(dni);
            }
            else {
                return null;
            }
        }

        public void addSomeDaysEvent(SomeDaysEvent e5)
        {

            dal.Insert<Event>(e5);
            dal.Commit();
        }
        public void registerMember(Member m1)
        {
            //añadir miembro a evento
            dal.Insert<Member>(m1);
        }
        public OneDayEvent findOneDayEventByDescription(string eventdescription)
         {
             List<OneDayEvent> onedayevnts = dal.GetAll<OneDayEvent>().ToList();
             foreach (OneDayEvent od1 in onedayevnts)
             {
                 if (od1.Description == eventdescription)
                 {
                     return od1;
                 }
             }
             return null;
             //throw new NotImplementedException();
         }

        public SomeDaysEvent findSomeDaysEventByDescription(string eventdescription)
        {
            List<SomeDaysEvent> somedayevnts = dal.GetAll<SomeDaysEvent>().ToList();
            foreach (SomeDaysEvent sd1 in somedayevnts)
            {
                if (sd1.Description == eventdescription)
                {
                    return sd1;
                }
            }
            return null;
            //throw new NotImplementedException();
        }

        public Member findMemberUsername(string username)
        {
            foreach(Member m in dal.GetAll<Member>())
            {
                if (m.Login.Equals(username))
                {
                    return m;
                } else { return null; }
            }
            return null;
        }

        public void removeMember(Member m)
        {
            dal.Delete<Member>(m);
            dal.Commit();
            //throw new NotImplementedException();
        }
    }
}

    //Comentario añadido para hacer el ultimo Commit llamado "Entregable 1"

