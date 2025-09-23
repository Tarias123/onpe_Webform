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

        internal object getDepartamentos(string ambito)
        {
            db.Sentencia(string.Format("usp_getDepartamentos '{0}','{1}'", ambito == "PERÚ" ? 1 : 26, ambito == "PERÚ" ? 25 : 30 ));
            return db.getDataTable();
        }
    }
}