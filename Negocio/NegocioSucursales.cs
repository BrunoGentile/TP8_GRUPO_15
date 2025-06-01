using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Datos;

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

        public void ObtenerProvincias(DataTable DTProvincia )
        {

          //  DataTable DTProvincia = new DataTable();

            gestionSucursales.ObtenerProvincias(DTProvincia);

          //  return DTProvincia;

        }
    }
}
