using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FootballBetting.WCF.DataContracts;
using FootballBetting.WCF.ServiceContracts;



namespace FootballBetting.WCF.ServiceImplementation
{
    public class FootballBettingService : IFootballBettingService
    {

        public string GetData(int value)
        {
            var myType = new MyType();
            return string.Format("My name is {0}, and i am {1} years old!", myType.Name, myType.DataOfBirth);
        }


        public string GetDataUsingDataContract()
        {
            MyType myType = new MyType();
            return string.Format("My name is {0} and I am {1} years old", myType.Name, myType.DataOfBirth);
        }
    }
}