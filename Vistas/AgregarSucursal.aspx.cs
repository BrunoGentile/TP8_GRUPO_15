using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using Entidades;
using Negocio;
using System.Configuration;
using System.Data.SqlClient;

namespace Vistas
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                NegocioSucursales negocioSucursales = new NegocioSucursales();
                DataTable dt = new DataTable();

                negocioSucursales.ObtenerProvincias(dt);

                DropDownList2.DataSource = dt;
                DropDownList2.DataTextField = "DescripcionProvincia";
                DropDownList2.DataValueField = "Id_Provincia";
                DropDownList2.DataBind();

                DropDownList2.Items.Insert(0, new ListItem("-- Seleccione una provincia --", "0")); // Opcional
            }
        }

        protected void BTN_Aceptar_Click(object sender, EventArgs e)
        {
            lblSucursalAgregada.Text = "La sucursal se ha agregado con éxito";
        }
    }
}
        
    