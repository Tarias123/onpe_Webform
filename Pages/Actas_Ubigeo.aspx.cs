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
            if (!IsPostBack) 
            {
                ddlAmbito_SelectedIndexChanged(sender, e);
            }

        }

        protected void ddlAmbito_SelectedIndexChanged(object sender, EventArgs e)
        {
            DDLDepartamento.Items.Clear();
            DDLDepartamento.DataSource = controller.getDepartamentos(ddlAmbito.SelectedValue);
            DDLDepartamento.DataValueField = "idDepartamento";
            DDLDepartamento.DataTextField = "Detalle";
            DDLDepartamento.DataBind();

        }
        protected void DDLDepartamento_SelectedIndexChanged(object sender, EventArgs e)
        {
                DDLProvincia.Items.Clear();
                DDLProvincia.DataSource = controller.getProvincias(DDLDepartamento.SelectedValue);
                DDLProvincia.DataValueField = "idProvincia";
                DDLProvincia.DataTextField = "Detalle";
                DDLProvincia.DataBind();
        }

        protected void DDLProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            DDLDistrito.Items.Clear();
            DDLDistrito.DataSource = controller.getDistritos(DDLProvincia.SelectedValue);
            DDLDistrito.DataValueField = "idDistrito";
            DDLDistrito.DataTextField = "Detalle";
            DDLDistrito.DataBind();
        }

        protected void DDLDistrito_SelectedIndexChanged(object sender, EventArgs e)
        {
            DDLLocales.Items.Clear();
            DDLLocales.DataSource = controller.getLocales(DDLDistrito.SelectedValue);
            DDLLocales.DataValueField = "idLocalVotacion";
            DDLLocales.DataTextField = "RazonSocial";
            DDLLocales.DataBind();
        }
    }
}