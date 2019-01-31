using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using BikeClubLib.Entities;
using BikeClubLib.Persistence;
using BikeClubLib.Persistence.EntityFramework;
//esto es una prueba jeje


namespace DBTest
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                IDAL dal = new EntityFrameworkDAL(new BikeClubDbContext());

                createSampleDB(dal);
                Console.WriteLine("\n\n\n");
                displayData(dal);

            }catch(Exception e)
            {
                printError(e);
                Console.ReadLine();
            }

        }

        static void printError(Exception e)
        {
            while (e != null)
            {
                Console.WriteLine("ERROR: " + e.Message);
                e = e.InnerException;
            }
        }

        static void createSampleDB(IDAL dal)
        {
            // Remove all data from DB
            removeAllData(dal);

        

            Member Javi = new Member("04787559E", "Javi", "jagarme", "javieva", "EE1111111", Convert.ToDateTime("17/06/1945") , null, Convert.ToDateTime("17/06/1990"), null);
            dal.Insert<Member>(Javi);

            Member Eva = new Member("04787555E", "Eva", "evarme", "evayjavi", "EE11551111", Convert.ToDateTime("17/06/1945"), null, Convert.ToDateTime("17/06/1935"), null);
            dal.Insert<Member>(Eva);

            Club c = new Club("BikeClub de L'Horta Nord", 24, Javi, Eva);
            dal.Insert<Club>(c);

            dal.Commit();

            
            
            // Populate the database with the data described in lab 4 bulletin

        }

        static void clearRelationships(IDAL dal){

            if (dal.GetAll<Club>().Any())                
            {
                Club c = dal.GetAll<Club>().First();

                Member president = c.ActualPresident;   
                c.ActualPresident = null;

                Member treasurer = c.Treasurer;         
                c.Treasurer = null;

                dal.Commit();
            }

        }
        
        static void removeAllData(IDAL dal)
        {
            clearRelationships(dal);
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

        private static void displayData(IDAL dal)
        {
            Console.WriteLine("===================================");
            Console.WriteLine("         Club details              ");
            Console.WriteLine("===================================");

            Club c = dal.GetAll<Club>().First();
            Console.WriteLine("Club name: " + c.Name + ", quota = " + c.Quota);

            Console.WriteLine("Pres Key to exit...");
            Console.ReadKey();

            Console.WriteLine("===================================");
            Console.WriteLine("         Members details           ");
            Console.WriteLine("===================================");

            foreach (Member m in dal.GetAll<Member>())
            {
                Console.WriteLine(memberToString(m));
                if (m.Children.Count() > 0)
                    foreach (Member s in m.Children)
                        Console.WriteLine("   Son " + memberToString(s));

                 if (m.Parent != null)
                     Console.WriteLine("   Parent " + memberToString( m.Parent));

            }

            Console.WriteLine("Pres Key to exit...");
            Console.ReadKey();

        }

        public static String memberToString(Member m)
        {
            return "  Name: " + m.Name + " login: " + m.Login + " password: " + m.Password;
        }

    }
}
