using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BikeClubLib.Entities
{
    public partial class Votes
    {
        public Votes() { }
        
        public Votes(int numberOfVotesReceived, bool hasVoted, Member member, Election election)
        {
            NumberOfVotesReceived = numberOfVotesReceived;
            HasVoted = hasVoted;
            Member = member;
            Election = election;
        }
        

        
    }
}
