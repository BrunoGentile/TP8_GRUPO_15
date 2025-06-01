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
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_MostrarTodo_Click(object sender, EventArgs e)
        {

            NegocioSucursales negocioSucursales = new NegocioSucursales();

            // OBTENGO DATA TABLE CON TODAS LAS SUCURSALES
            gvSucursales.DataSource = negocioSucursales.ObtenerSucursales();
            // ACTUALIZO EL GRID VIEW CON LOS DATOS OBTENIDOS
            gvSucursales.DataBind();

        }
    }
}