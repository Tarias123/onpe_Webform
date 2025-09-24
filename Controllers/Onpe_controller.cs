using System;
using System.Collections.Generic;
using System.Data;
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
            if (ambito == "1") 
            {
                db.Sentencia("usp_getDepartamentos '1','25'");
            }
            else if (ambito == "2") 
            {
                db.Sentencia("usp_getDepartamentos '26','30'");
            }

            DataTable dt = db.getDataTable();
            DataRow dr = dt.NewRow();
            dr["idDepartamento"] = 0;
            dr["Detalle"] = "--SELECCIONE--";
            dt.Rows.InsertAt(dr, 0);

            return dt;
        }

        internal object getProvincias(string idDepartamento)
        {
            db.Sentencia(string.Format("usp_getProvincias '{0}'", idDepartamento));
            DataTable dt = db.getDataTable();
            DataRow dr = dt.NewRow();
            dr["idProvincia"] = 0;
            dr["Detalle"] = "--SELECCIONE--";
            dt.Rows.InsertAt(dr, 0);
            return dt;
        }
    

        internal object getDistritos(string idProvincia)
        {
            db.Sentencia(string.Format("usp_getDistritos '{0}'", idProvincia));
            DataTable dt = db.getDataTable();
            DataRow dr = dt.NewRow();
            dr["idDistrito"] = 0;
            dr["Detalle"] = "--SELECCIONE--";
            dt.Rows.InsertAt(dr, 0);
            return dt;
        }

        internal object getLocales(string idDistrito)
        {
            db.Sentencia(string.Format("usp_getLocalesVotacion '{0}'", idDistrito));
            DataTable dt = db.getDataTable();
            DataRow dr = dt.NewRow();
            dr["idLocalVotacion"] = 0;
            dr["RazonSocial"] = "--SELECCIONE--";
            dt.Rows.InsertAt(dr, 0);
            return dt;
        }
    }


        
}