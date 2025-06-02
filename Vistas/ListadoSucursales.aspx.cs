using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using Entidades;
using Negocio;
using static System.Collections.Specialized.BitVector32;
using System.Data.SqlClient;

namespace Vistas
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NegocioSucursales negocioSucursales = new NegocioSucursales();
                // OBTENGO DATA TABLE CON TODAS LAS SUCURSALES
                gvSucursales.DataSource = negocioSucursales.ObtenerSucursales();
                // ACTUALIZO EL GRID VIEW CON LOS DATOS OBTENIDOS
                gvSucursales.DataBind();


                DataTable dt = new DataTable();

                negocioSucursales.ObtenerProvincias(dt);

                DDL_FiltrarProvincia.DataSource = dt;
                DDL_FiltrarProvincia.DataTextField = "DescripcionProvincia";
                DDL_FiltrarProvincia.DataValueField = "Id_Provincia";
                DDL_FiltrarProvincia.DataBind();

                DDL_FiltrarProvincia.Items.Insert(0, new ListItem("-- Seleccione una provincia --", "0")); // Opcional
            }




        }
        

        protected void btn_MostrarTodo_Click(object sender, EventArgs e)
        {

            NegocioSucursales negocioSucursales = new NegocioSucursales();

            // OBTENGO DATA TABLE CON TODAS LAS SUCURSALES
            gvSucursales.DataSource = negocioSucursales.ObtenerSucursales();
            // ACTUALIZO EL GRID VIEW CON LOS DATOS OBTENIDOS
            gvSucursales.DataBind();

        }

<<<<<<< HEAD
        protected void btn_FiltrarDesc_Click(object sender, EventArgs e)
        {

            Session["ordenSucursales"] = "DESC";
            NegocioSucursales neg = new NegocioSucursales();
            gvSucursales.DataSource = neg.OrdenDescendente(Session["ordenSucursales"].ToString());
            gvSucursales.DataBind();
        }

    }
}
=======
    } 
}

    

    
>>>>>>> .
