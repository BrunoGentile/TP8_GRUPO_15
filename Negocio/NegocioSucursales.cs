using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Datos;
using Entidades;

namespace Negocio
{
    public class NegocioSucursales
    {

        // INSTANCIA DE LA CLASE GESTION SUCURSALES
        GestionSucursales gestionSucursales = new GestionSucursales();

        public DataTable ObtenerSucursales()
        {

            DataTable DTSucursales = new DataTable();

            gestionSucursales.ObtenerSucursales(DTSucursales);

            return DTSucursales;
        }

        public bool AgregarSucursal(string NombreSucursal,string descripcion,int idProvincia, string direccion)
        {
            int cantidadFilas=0;
            
            Sucursales sucursal = new Sucursales();
            sucursal.setNombreSucursal(NombreSucursal);
            sucursal.setDescripcionSucursal(descripcion);
            sucursal.setIdProvinciaSucursal(idProvincia);
            sucursal.setDireccionSucursal(direccion);
            if (gestionSucursales.existeSucursal(sucursal))
            {
                cantidadFilas = gestionSucursales.AgregarSucursal(sucursal);
            }

            if (cantidadFilas == 1)
                return true;
            else 
                return false;
        
        }

        //existencia de id para eliminarlo
        public bool VerificarExistenciaSucursal(int idSucursal)
        {
            return gestionSucursales.ExisteSucursal(idSucursal);
        }

    }
}
