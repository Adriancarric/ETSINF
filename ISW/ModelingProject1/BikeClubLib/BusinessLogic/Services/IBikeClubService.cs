using BikeClubLib.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BikeClubLib.BusinessLogic.Services
{
    public interface IBikeClubService
    {
        void removeAllData();
        void addClub(Club c);
        double addMember(Club c, Member m1);
        IEnumerable<Club> getAllClubs();
        double addSon(Club c, Member m2, Member m6);
        IEnumerable<Member> getAllMembers();
        void definePresident(Club c, Member m1);
        Member login(string v1, string v2);
        Member lastLogin();
        Member logout();
        void addRoute(Route r1);
        IEnumerable<Route> getAllRoutes();
        IEnumerable<Event> getAllEvents();
        Route findRouteByName(String name);
        void addOneDayEvent(Event evnt);
        void addSomeDaysEvent(SomeDaysEvent e5);
        OneDayEvent findOneDayEventByDescription(String eventdescription);
        void saveChanges();
        Member findMemberById(string dni);
        SomeDaysEvent findSomeDaysEventByDescription(String eventdescription);
        Club returnClub();
        Member findMemberUsername(string username);
        void removeMember(Member m);
    }


}
