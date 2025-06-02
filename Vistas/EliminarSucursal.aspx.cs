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
           NegocioSucursales neg = new NegocioSucursales();
            if (neg.EliminarSucursal(int.Parse(TextBox1.Text)))
            {
                lblMensaje.Text = "se elimino correctamente";
            }
            else
            {
                lblMensaje.Text = "no se pudo eliminar la sucursal";
            }
        }
    }
}