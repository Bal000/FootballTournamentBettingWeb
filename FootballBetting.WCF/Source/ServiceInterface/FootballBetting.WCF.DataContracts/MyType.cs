using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;

namespace FootballBetting.WCF.DataContracts
{

    [DataContract]
    public class MyType
    {
        string _name = "Daniel";
        DateTime _dob = new DateTime(1985, 03, 22);

        [DataMember]
        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        [DataMember]
        public DateTime DataOfBirth
        {
            get { return _dob; }
            set { _dob = value; }
        }
    }
}
