using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using System.Runtime.Serialization;

namespace FootballBetting.WCF.ServiceContracts
{
    [ServiceContract]
    public interface IFootballBettingService
    {

        [OperationContract]
        string GetData(int value);

        [OperationContract]
        string GetDataUsingDataContract();

    }
}
