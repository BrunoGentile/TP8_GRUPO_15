using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Configuration;
using System.Data.SqlClient;

namespace Vistas
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        NegocioSucursales neg = new NegocioSucursales();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                NegocioSucursales negocioSucursales = new NegocioSucursales();
                DataTable dt = new DataTable();

                negocioSucursales.ObtenerProvincias(dt);

                ddlProvincia.DataSource = dt;
                ddlProvincia.DataTextField = "DescripcionProvincia";
                ddlProvincia.DataValueField = "Id_Provincia";
                ddlProvincia.DataBind();

                ddlProvincia.Items.Insert(0, new ListItem("-- Seleccione una provincia --", "0")); // Opcional
            }
        }

        protected void BTN_Aceptar_Click(object sender, EventArgs e)
        {
            Boolean estado = false;
            estado = neg.AgregarSucursal(TB_NombreSucursal.Text,TB_Descripcion.Text , int.Parse(ddlProvincia.SelectedValue),TB_Direccion.Text);
            if (estado == true)
            {
            lblSucursalAgregada.Text = "La sucursal se ha agregado con éxito";
            }
            else
            {
                lblSucursalAgregada.Text = "La sucursal no se pudo agregar";
            }
        }

        public void limpiarLosCampos()
        {
            TB_NombreSucursal.Text = string.Empty;
            TB_Direccion.Text= string.Empty;
            TB_Descripcion.Text= string.Empty;
            ddlProvincia.SelectedIndex = 0;
        }
    }
}
        
    