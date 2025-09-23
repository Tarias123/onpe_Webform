using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace onpe_Webform.Controllers
{
    public class Onpe_controller
    {

        Db db = new Db("cnOnpe");

        internal object getActaByNumero(string nroMesa)
        {
            db.Sentencia(string.Format("usp_getGrupoVotacion '{0}'", nroMesa));
            return db.getDataTable();
        }
    }
}