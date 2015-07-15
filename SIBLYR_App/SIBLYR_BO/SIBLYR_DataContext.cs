using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace SIBLYR_BO
{
   public partial class SIBLYR_ModelDataContext
    {
        public SIBLYR_ModelDataContext() :
            base(ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString, mappingSource)
        {
            OnCreated();
        }
    }
}
