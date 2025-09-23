using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace onpe_Webform.Controllers
{

    public class Db

    {
        SqlConnection cn = null;
        SqlCommand cmd = null;
        SqlDataAdapter da = null;

        public Db(string cnn)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings[cnn].ConnectionString);
            cmd = new SqlCommand("", cn);
            da = new SqlDataAdapter(cmd);
        }

        internal void Sentencia(string sql)
        {
            cmd.Parameters.Clear();
            cmd.CommandText = sql;
        }

        internal DataSet getDataSet()
        {
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        internal DataTable getDataTable()
        {
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

    }

}