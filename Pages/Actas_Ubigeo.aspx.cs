using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using onpe_Webform.Controllers;

namespace onpe_Webform.Pages
{
    
    
    public partial class Actas_Ubigeo : System.Web.UI.Page
    {
        Onpe_controller controller = new Onpe_controller();
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlAmbito_SelectedIndexChanged(sender, e);
        }

        protected void ddlAmbito_SelectedIndexChanged(object sender, EventArgs e)
        {
            DDLDepartamento.Items.Clear();
            DDLDepartamento.DataSource = controller.getDepartamentos(ddlAmbito.SelectedValue);
            DDLDepartamento.DataBind();

            DDLDepartamento.DataValueField = "idDepartamento";
            DDLDepartamento.DataTextField = "Detalle";
                
                
        }
    }
}