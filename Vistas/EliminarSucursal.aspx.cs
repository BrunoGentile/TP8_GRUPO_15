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

        }
        protected void btnElminar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtIDSucursal.Text.Trim());  // Asumo que siempre es un número válido

            NegocioSucursales negocio = new NegocioSucursales();

            if (negocio.VerificarExistenciaSucursal(id))
            {
                lblMensaje.Text = "La sucursal existe.";
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                txtIDSucursal.BackColor = System.Drawing.Color.White;
            }
            else
            {
                lblMensaje.Text = "La sucursal NO existe.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                txtIDSucursal.BackColor = System.Drawing.Color.Red;
            }

        }
    }
}