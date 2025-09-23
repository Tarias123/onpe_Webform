using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onpe_Webform.Pages
{
    public partial class Actas_Numero : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMensaje.Visible = fvActa.Visible = false;

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            fvActa.DataSource = new Controllers.Onpe_controller().getActaByNumero(nroMesa.Text);
            fvActa.DataBind();
            fvActa.Visible = true;
            
        }
    }
}