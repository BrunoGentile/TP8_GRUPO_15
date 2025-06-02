using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarSucursales();
            }

        }
        protected void btnElminar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtIDSucursal.Text.Trim());  // Asumo que siempre es un número válido

            NegocioSucursales negocio = new NegocioSucursales();

            if (negocio.VerificarExistenciaSucursal(id))
            {
                if (negocio.EliminarSucursal(id))
                {
                    lblMensaje.Text = "se elimino correctamente";
                    lblMensaje.ForeColor = System.Drawing.Color.Green;
                    txtIDSucursal.BackColor = System.Drawing.Color.White;

                    CargarSucursales();

                }
               
                 else
                 {
                    lblMensaje.Text = "no se pudo eliminar la sucursal";
                 }
            }
            else
            {
                lblMensaje.Text = "La sucursal NO existe.";
                txtIDSucursal.BackColor = System.Drawing.Color.Red;
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                return;
            }

            txtIDSucursal.Text = string.Empty;
            lblMensaje.Text = string.Empty;
            txtIDSucursal.BackColor = System.Drawing.Color.White;
            lblMensaje.ForeColor = System.Drawing.Color.Black;
        }

        private void CargarSucursales()
        {
            NegocioSucursales negocio = new NegocioSucursales();
            DataTable dt = negocio.ObtenerSucursales();

            ddlSucursalesDisponibles.Items.Clear();
            ddlSucursalesDisponibles.Items.Add(new ListItem("-- Seleccionar sucursal --", "0"));

            foreach (DataRow row in dt.Rows)
            {
                string texto = row["Id_Sucursal"].ToString() + " - " + row["NombreSucursal"].ToString();
                string valor = row["Id_Sucursal"].ToString();
                ddlSucursalesDisponibles.Items.Add(new ListItem(texto, valor));
            }
        }


    }
}