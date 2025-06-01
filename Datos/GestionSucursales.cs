using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;
using Entidades;

namespace Datos
{
    public class GestionSucursales
    {

        // CONEXION A LA BASE DE DATOS
        private string Conexion = "Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales;Integrated Security = True";
        // OBJETO DE LA CLASE SUCURSALES
        Sucursales Sucursal = new Sucursales();

        // CONSTRUCTOR VACÍO
        public GestionSucursales() { 
            
        }

        // CONSTRUCTOR CON PARÁMETROS
        public GestionSucursales( Sucursales Sucursal )
        {
            this.Sucursal = Sucursal;
        }

        // MÉTODO PARA AGREGAR UNA NUEVA SUCURSAL UTILIZANDO LA CLASE SUCURSALES
        public void AgregarSucursal( Sucursales NuevaSucursal )
        {

            SqlConnection conexion = new SqlConnection(Conexion);

            conexion.Open();

            string ConsultaSQL = "INSERT INTO Sucursales (NombreSucursal, DescripcionSucursal, id_provinciaSucursal, DireccionSucursal) " + 
                "VALUES (@Nombre, @Descripcion, @IdProvincia, @Direccion)";
            SqlCommand comando = new SqlCommand(ConsultaSQL, conexion);
              
            comando.Parameters.AddWithValue("@Nombre", NuevaSucursal.getNombreSucursal());
            comando.Parameters.AddWithValue("@Descripcion", NuevaSucursal.getDescripcionSucursal());
            comando.Parameters.AddWithValue("@IdProvincia", NuevaSucursal.getIdProvinciaSucursal());
            comando.Parameters.AddWithValue("@Direccion", NuevaSucursal.getDireccionSucursal());
            
            comando.ExecuteNonQuery();
            conexion.Close();
        }

        public void ObtenerSucursales( DataTable DTSucursales )
        {
            
            SqlConnection conexion = new SqlConnection(Conexion);
            conexion.Open();

            string ConsultaSQL = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, DescripcionProvincia , DireccionSucursal FROM Sucursal INNER JOIN Provincia ON Id_Provincia = Id_ProvinciaSucursal";
            
            SqlCommand comando = new SqlCommand(ConsultaSQL, conexion);
            SqlDataAdapter adaptador = new SqlDataAdapter(comando);
            adaptador.Fill(DTSucursales);

            conexion.Close();
        }

    }
}
