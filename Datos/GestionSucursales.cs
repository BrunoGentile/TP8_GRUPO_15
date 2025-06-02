using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;
using Entidades;
using System.Web.UI.WebControls;

namespace Datos
{
    public class GestionSucursales
    {

        // CONEXION A LA BASE DE DATOS
        private string Conexion = @"Data Source=localhost\SQLEXPRESS; Initial Catalog=BDSucursales;Integrated Security = True";
        // OBJETO DE LA CLASE SUCURSALES
        Sucursales Sucursal = new Sucursales();

        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(Conexion);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        // CONSTRUCTOR VACÍO
        public GestionSucursales() { 
            
        }

        // CONSTRUCTOR CON PARÁMETROS
        public GestionSucursales( Sucursales Sucursal )
        {
            this.Sucursal = Sucursal;
        }

        // MÉTODO PARA AGREGAR UNA NUEVA SUCURSAL UTILIZANDO LA CLASE SUCURSALES
        public int AgregarSucursal( Sucursales NuevaSucursal )
        {
            int filasAfectadas;
            SqlConnection conexion = new SqlConnection(Conexion);

            conexion.Open();

            string ConsultaSQL = "INSERT INTO Sucursales (IdSucursal, NombreSucursal, DescripcionSucursal, id_provinciaSucursal, DireccionSucursal) " + 
                "VALUES (@IdSucursal, @Nombre, @Descripcion, @IdProvincia, @Direccion)";
            SqlCommand comando = new SqlCommand(ConsultaSQL, conexion);

            comando.Parameters.AddWithValue("IdSucursal", ObtenerMaximo()+1);
            comando.Parameters.AddWithValue("@Nombre", NuevaSucursal.getNombreSucursal());
            comando.Parameters.AddWithValue("@Descripcion", NuevaSucursal.getDescripcionSucursal());
            comando.Parameters.AddWithValue("@IdProvincia", NuevaSucursal.getIdProvinciaSucursal());
            comando.Parameters.AddWithValue("@Direccion", NuevaSucursal.getDireccionSucursal());
            
            filasAfectadas = comando.ExecuteNonQuery();
            conexion.Close();
            return filasAfectadas;
        }

        public void CargarDropDownList(string consultaSql, DropDownList ddl, string campoTexto, string campoValor)
        {
            SqlConnection sqlConnection = new SqlConnection(Conexion);

            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSql, sqlConnection);
            SqlDataReader reader = sqlCommand.ExecuteReader();

            ddl.DataSource = reader;
            ddl.DataTextField = campoTexto;
            ddl.DataValueField = campoValor;
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem("--Seleccionar--", "0"));

            reader.Close();
            sqlConnection.Close();
        }

        public Boolean existeSucursal(Sucursales sucursal)
        {
            String consulta = "Select * from Sucursales where NombreSucursal='" + sucursal.getNombreSucursal() + "'";
            return existe(consulta);
        }

        public Boolean existe(String consulta)
        {
            Boolean estado = false;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                estado = true;
            }
            return estado;
        }

        public int ObtenerMaximo()
        {
            int max = 0;
            string consulta = "SELECT max(idSucursal) FROM Sucursales)";
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                max = Convert.ToInt32(datos[0].ToString());
            }
            return max;
        }


        public void ObtenerSucursales( DataTable DTSucursales )
        {
            
            SqlConnection conexion = new SqlConnection(Conexion);
            conexion.Open();

            string ConsultaSQL = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, DescripcionProvincia , DireccionSucursal " +
                "FROM Sucursal INNER JOIN Provincia ON Id_Provincia = Id_ProvinciaSucursal";
            
            SqlCommand comando = new SqlCommand(ConsultaSQL, conexion);
            SqlDataAdapter adaptador = new SqlDataAdapter(comando);
            adaptador.Fill(DTSucursales);

            conexion.Close();
        }


        public void ObtenerProvincias(DataTable dtProvincias)
        {
            SqlConnection conexion = new SqlConnection(Conexion);
            conexion.Open();

            string consultaSQL = "SELECT Id_Provincia, DescripcionProvincia FROM Provincia";

            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            SqlDataAdapter adaptador = new SqlDataAdapter(comando);
            adaptador.Fill(dtProvincias);

            conexion.Close();
        }


        //existencia de id de sucursal para eliminarla
        public bool ExisteSucursal(int idSucursal)
        {
            using (SqlConnection conexion = new SqlConnection(Conexion))
            {
                string consulta = "SELECT COUNT(*) FROM Sucursal WHERE Id_Sucursal = @id";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                comando.Parameters.AddWithValue("@id", idSucursal);

                conexion.Open();
                int cantidad = (int)comando.ExecuteScalar();
                return cantidad > 0;
            }
        }
    }




    }

