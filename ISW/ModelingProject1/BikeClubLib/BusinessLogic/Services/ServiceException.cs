using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BikeClubLib.BusinessLogic.Services
{
    public class ServiceException : Exception
    {
        public ServiceException()
        {
        }

        public ServiceException(String message)
        : base(message)
        {
        }

        public ServiceException(String message, Exception inner)
        : base(message, inner)
        {
        }
    }
}
