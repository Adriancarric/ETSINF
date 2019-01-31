using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BikeClubLib.Persistence;
using BikeClubLib.Entities;
using BikeClubLib.BusinessLogic.Services;
using BikeClubLib.Persistence.EntityFramework;

namespace BusinessLogicTest
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                IBikeClubService service = new BikeClubService(new EntityFrameworkDAL(new BikeClubDbContext()));

                new Program(service);
            }
            catch (Exception e)
            {
                printError(e);
                Console.WriteLine("Press any key.");
                Console.ReadLine();
            }

        }

        private IBikeClubService service;

        Program(IBikeClubService service)
        {
            this.service = service;

            service.removeAllData();

            // Adding Club
            addClub();
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();

            // Adding Members
            addMembers();
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();

            // Testing login
            testLogin();
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();

            // More login testing
            testLogin2();
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();


            // Adding Routes
            addRoutes();
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();

            // Adding Events
            addEvents();
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();

            // Adding event registrations
            addEventRegistrations();
            Console.WriteLine("FINISH - Press any key to continue...");
            Console.ReadKey();

        }


        static void printError(Exception e)
        {
            while (e != null)
            {
                Console.WriteLine("ERROR: " + e.Message);
                e = e.InnerException;
            }
        }

        void addClub()
        {
            Console.WriteLine();
            Console.WriteLine("ADDING CLUB...");

            try
            {
                // public Club(String Name, Double Quota)
                Club c = new Club("BikeClub de L'Horta Nord", 24);
                service.addClub(c);

                foreach (Club cl in service.getAllClubs())
                {
                    Console.WriteLine(clubToString(cl));
                }

            }
            catch (Exception e)
            {
                printError(e);
            }
        }

        String clubToString(Club c)
        {
            return "  Club name: " + c.Name + ", quota = " + c.Quota;
        }

        void addMembers()
        {
            Console.WriteLine();
            Console.WriteLine("ADDING MEMBERS...");

            try
            {
                Club c = service.getAllClubs().First();
                double quota;

                // public Member(String ID, String Name, String Login, String Password, String IBAN, DateTime BirthDate, DateTime EnrollmentDate)
                Member m1 = new Member("12345678A", "Eddy Merckx", "emerckx", "xkcreme", "ES123456789012345678", Convert.ToDateTime("17/06/1945"), Convert.ToDateTime("20/05/2001"));
                quota = service.addMember(c, m1);
                Member m2 = new Member("23456789B", "Bernard Hinault", "bhinault", "tluanihb", "ES234567890123456789", Convert.ToDateTime("14/11/1954"), Convert.ToDateTime("10/01/2010"));
                quota = service.addMember(c, m2);
                Member m3 = new Member("34567890C", "Miguel Indurain", "mindurain", "niarudnim", "ES345678901234567890", Convert.ToDateTime("16/07/1964"), Convert.ToDateTime("23/08/2013"));
                quota = service.addMember(c, m3);
                Member m4 = new Member("45678901D", "Rafa Nadal", "rnadal", "ladanr", "ES456789012345678901", Convert.ToDateTime("03/06/1986"), Convert.ToDateTime("20/05/2016"));
                quota = service.addMember(c, m4);
                // Mayor de 18 años
                Member m5 = new Member("56789012E", "Hijo de Eddy Merckx", "hijodeeddy", "yddeedojih", "ES123456789012345678", Convert.ToDateTime("17/06/1965"), Convert.ToDateTime("20/05/2001"));
                quota = service.addSon(c, m1, m5);
                // Mayor de 18 años
                Member m6 = new Member("67890123B", "Hijo de Bernard Hinault", "hijodebhinault", "tluanihbedojih", "ES234567890123456789", Convert.ToDateTime("14/11/1974"), Convert.ToDateTime("10/01/2010"));
                quota = service.addSon(c, m2, m6);
                // Menor de 18 años
                Member m7 = new Member("78901234C", "Hijo de Miguel Indurain", "hijodemindurain", "niarudnimedojih", "ES345678901234567890", Convert.ToDateTime("16/07/2004"), Convert.ToDateTime("23/10/2018"));
                quota = service.addSon(c, m3, m7);

                foreach (Member m in service.getAllMembers())
                {
                    Console.WriteLine(memberToString(m));
                    if (m.Children.Count() > 0)
                        foreach (Member s in m.Children)
                            Console.WriteLine("     Son" + memberToString(s));

                    if (m.Parent != null)
                        Console.WriteLine("     Parent" + memberToString(m.Parent));

                    foreach (Payment p in m.Payments)
                        Console.WriteLine("         " + p.Description + ", date: " + p.Date.ToString("dd/MM/yyyy") + ", quantity: " + p.Quantity);
                }

                service.definePresident(c, m1);

                Console.WriteLine();
                Console.WriteLine("  ACTUAL PRESIDENT: " + c.ActualPresident.Name);
            }
            catch (Exception e)
            {
                printError(e);
            }
        }

        String memberToString(Member m)
        {
            return "  Name: " + m.Name + ", login: " + m.Login + ", password: " + m.Password;
        }

        void testLogin()
        {
            Member m;
            Console.WriteLine();
            Console.WriteLine("TESTING LOGIN...");

            try
            {
                m = service.login("mindurain", "niarudnim");
                if (m != null)
                    Console.WriteLine("  Login " + m.Name);
                else
                    Console.WriteLine("  NOLOGIN");

                m = service.login("mindurain", "niarubnim");
                if(m != null)
                    Console.WriteLine("  Login " + m.Name);
                else
                    Console.WriteLine("  NOLOGIN");

                m = service.login("mind", "dnim");
                if(m != null)
                    Console.WriteLine("  Login " + m.Name );
                else
                    Console.WriteLine("  NOLOGIN");

            }
            catch (Exception e)
            {
                printError(e);
            }
        }


        void testLogin2()
        {
            Member m;
            Console.WriteLine();
            Console.WriteLine("TESTING MORE ABOUT LOGIN...");

            try
            {
                m = service.lastLogin();
                if (m != null)
                    Console.WriteLine("  Logged " + m.Name);
                else
                    Console.WriteLine("  NOLOGIN");

                service.logout();

                m = service.lastLogin();
                if (m != null)
                    Console.WriteLine("  Logged " + m.Name);
                else
                    Console.WriteLine("  NOLOGGED");

            }
            catch (Exception e)
            {
                printError(e);
            }
        }

        void addRoutes()
        {
            Console.WriteLine();
            Console.WriteLine("ADDING ROUTES...");

            try
            {
                // public Route(String Name, String Start, String End, int Ramp, int Distance, Difficulty dif)
                Route r1 = new Route("Valencia 1", "Parque de Cabecera", "Bioparc", 0, 20, Difficulty.easy);
                service.addRoute(r1);
                Route r2 = new Route("Valencia 2", "Estació del Nord", "Puerto", 0, 25, Difficulty.easy);
                service.addRoute(r2);
                Route r3 = new Route("Valencia 3", "Pinedo", "Palmar", 0, 25, Difficulty.medium);
                service.addRoute(r3);
                Route r4 = new Route("Camino Santiago", "Roncesvalles", "Santiago", 1079, 762, Difficulty.pro);
                service.addRoute(r4);

                foreach (Route r in service.getAllRoutes())
                    Console.WriteLine(routeToString(r));
            }
            catch (Exception e)
            {
                printError(e);
            }
        }

        String routeToString(Route r)
        {
            return "  Name: " + r.Name + ", Start: " + r.Start + ", End: " + r.End + ", Ramp: " +  r.Ramp + ", Distance: " + r.Distance + ", Difficulty: " + r.Difficulty;
        }


        void addEvents()
        {
            Console.WriteLine();
            Console.WriteLine("ADDING EVENTS...");

            try
            {
                Member m1 = service.login("emerckx", "xkcreme");
                Route r1 = service.findRouteByName("Valencia 1");
                // public OneDayEvent(String description, DateTime startDate, Member resp, Route route)
                OneDayEvent e1 = new OneDayEvent("Paseito por el rio Turia", Convert.ToDateTime("27/10/2018"), m1, r1);
                service.addOneDayEvent(e1);
                service.logout();

                Member m2 = service.login("bhinault", "tluanihb");
                Route r2 = service.findRouteByName("Valencia 2"); ;
                OneDayEvent e2 = new OneDayEvent("Paseito por el centro", DateTime.Today.AddDays(1), m2, r2); 
                service.addOneDayEvent(e2);
                service.logout();

                Member m3 = service.login("mindurain", "niarudnim");
                Route r3 = service.findRouteByName("Valencia 3"); ;
                OneDayEvent e3 = new OneDayEvent("Paseito por la playa", Convert.ToDateTime("26/12/2018"), m3, r3);
                service.addOneDayEvent(e3);

                Route r4 = service.findRouteByName("Camino Santiago"); ;
                OneDayEvent e4 = new OneDayEvent("Paseito por el norte", Convert.ToDateTime("28/12/2018"), m3, r4); 
                service.addOneDayEvent(e4);
                service.logout();

                Member m6 = service.login("hijodebhinault", "tluanihbedojih");
                // public SomeDaysEvent(String description, DateTime startDate, Member resp, DateTime finishDate)
                SomeDaysEvent e5 = new SomeDaysEvent("Vuelta a España", Convert.ToDateTime("01/01/2019"), m6, Convert.ToDateTime("05/01/2019"));
                e5.addRoute(r1);
                e5.addRoute(r2);
                e5.addRoute(r3);
                e5.addRoute(r4);
                service.addSomeDaysEvent(e5);

                SomeDaysEvent e6 = new SomeDaysEvent("Vuelta a España 2", Convert.ToDateTime("02/02/2019"), m6, Convert.ToDateTime("06/02/2019"));
                e6.addRoute(r1);
                e6.addRoute(r2);
                e6.addRoute(r3);
                e6.addRoute(r4);
                service.addSomeDaysEvent(e6);


                service.logout();

                foreach (Event e in service.getAllEvents())
                    if(e is OneDayEvent )
                        Console.WriteLine(eventToString((OneDayEvent)e));
                    else
                        Console.WriteLine(eventToString((SomeDaysEvent)e));

            }
            catch (Exception e)
            {
                printError(e);
            }
        }

        String eventToString(OneDayEvent ode)
        {
            return "  Description: " + ode.Description + ", Route: " + ode.Route.Name + ", StartDate: " + ode.StartDate.ToString("dd/MM/yyyy");
        }

        String eventToString(SomeDaysEvent sde)
        {
            return "  Description: " + sde.Description + ", Routes: " + sde.Routes.Count() + ", StartDate: " + sde.StartDate.ToString("dd/MM/yyyy") + ", FinishDate: " + sde.FinishDate.ToString("dd/MM/yyyy");
        }

        void addEventRegistrations()
        {
            Console.WriteLine();
            Console.WriteLine("ADDING EVENT REGISTRATIONS...");

            try
            {
                OneDayEvent e1 = service.findOneDayEventByDescription("Paseito por el rio Turia");

                Member m1 = service.findMemberById("12345678A");
                e1.registerMember(m1);
                service.saveChanges();

                foreach (Member m in e1.Members)
                    Console.WriteLine("  " + m.Name + " registered to " + e1.Description);
            }
            catch (Exception e)
            {
                printError(e);
            }

            try
            {
                OneDayEvent e2 = service.findOneDayEventByDescription("Paseito por el centro");

                Member m2 = service.findMemberById("23456789B"); ; 
                e2.registerMember(m2);
                service.saveChanges();

                Member m3 = service.findMemberById("34567890B"); ;                          
                e2.registerMember(m3);
                service.saveChanges();

                foreach (Member m in e2.Members)
                    Console.WriteLine("  " + m.Name + " registered to " + e2.Description);
            }
            catch (Exception e)
            {
                printError(e);
            }

            try
            {
                OneDayEvent e3 = service.findOneDayEventByDescription("Paseito por la playa"); 

                Member m2 = service.findMemberById("23456789B");
                e3.registerMember(m2);
                service.saveChanges();
                Member m7 = service.findMemberById("78901234C");                
                e3.registerMember(m7);
                service.saveChanges();

                foreach (Member m in e3.Members)
                    Console.WriteLine("  " + m.Name + " registered to " + e3.Description);

            }
            catch (Exception e)
            {
                printError(e);
            }

            try
            {
                OneDayEvent e3 = service.findOneDayEventByDescription("Paseito por la playa");

                Member m3 = service.findMemberById("34567890C");
                e3.registerMember(m3);
                service.saveChanges();

                Member m7 = service.findMemberById("78901234C");
                e3.registerMember(m7);
                service.saveChanges();

                foreach (Member m in e3.Members)
                    Console.WriteLine("  " + m.Name + " registered to " + e3.Description);  

            }
            catch (Exception e)
            {
                printError(e);
            }

            try
            {
                OneDayEvent e4 = service.findOneDayEventByDescription("Paseito por el norte");
                Member m3 = service.findMemberById("34567890C");                                                                                                   
                e4.registerMember(m3);
                service.saveChanges();

                Member m7 = service.findMemberById("78901234C");       
                e4.registerMember(m7);
                service.saveChanges();

                foreach (Member m in e4.Members)
                    Console.WriteLine("  " + m.Name + " registered to " + e4.Description);

            }
            catch (Exception e)
            {
                printError(e);
            }


            try
            {
                SomeDaysEvent e5 = service.findSomeDaysEventByDescription("Vuelta a España");
                Member m6 = service.findMemberById("67890123B");
                e5.registerMember(m6);
                Member m3 = service.findMemberById("34567890C");
                e5.registerMember(m3);
                Member m7 = service.findMemberById("78901234C");
                e5.registerMember(m7);

            }
            catch (Exception e)
            {
                printError(e);
            }
        }

        void mas()
        {
        }


    }
}
