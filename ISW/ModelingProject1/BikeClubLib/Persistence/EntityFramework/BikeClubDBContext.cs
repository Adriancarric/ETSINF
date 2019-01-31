using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using BikeClubLib.Entities;

namespace BikeClubLib.Persistence
{
    public class BikeClubDbContext : DbContext
    {
        public BikeClubDbContext() : base("Name=BikeClubDbConnection") //this is the connection string name
        {
            /*
            See DbContext.Configuration documentation
            */
            Configuration.ProxyCreationEnabled = true;
            Configuration.LazyLoadingEnabled = true;
        }

        static BikeClubDbContext()
        {
            //Database.SetInitializer<BikeClubDbContext>(new CreateDatabaseIfNotExists<BikeClubDbContext>());
            Database.SetInitializer<BikeClubDbContext>(new DropCreateDatabaseIfModelChanges<BikeClubDbContext>());
            //Database.SetInitializer<BikeClubDbContext>(new DropCreateDatabaseAlways<BikeClubDbContext>());
            //Database.SetInitializer<BikeClubDbContext>(new VehicleRentalDbInitializer());
            //Database.SetInitializer(new NullDatabaseInitializer<BikeClubDbContext>());
        }

        public IDbSet<Club> Clubs { get; set; }
        public IDbSet<Election> Elections { get; set; }
        public IDbSet<Event> Events { get; set; }
        public IDbSet<Member> Members { get; set; }
        public IDbSet<OneDayEvent> OneDayEvents { get; set; }
        public IDbSet<Payment> Payments { get; set; }
        public IDbSet<Route> Routes { get; set; }
        public IDbSet<SomeDaysEvent> SomeDaysEvents { get; set; }
        public IDbSet<Votes> Votes { get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            // Primary keys with non conventional name
            /*
            modelBuilder.Entity<Person>().HasKey(p => p.Dni);
            modelBuilder.Entity<Customer>().HasKey(c => c.Dni);
            modelBuilder.Entity<CreditCard>().HasKey(c => c.Digits);
            */
            // Classes with more than one relationship
            /*
            modelBuilder.Entity<Reservation>().HasRequired(r => r.PickUpOffice).WithMany(o => o.PickUpReservations).WillCascadeOnDelete(false);
            modelBuilder.Entity<Reservation>().HasRequired(r => r.ReturnOffice).WithMany(o => o.ReturnReservations).WillCascadeOnDelete(false);
            */
        }

    }
}
