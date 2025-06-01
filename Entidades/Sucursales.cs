using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Entidades
{
    internal class Sucursales
    {
            //Atributos privados
            private int id_sucursal;
            private string NombreSucursal;
            private string DescripcionSucursal;
            private int id_provinciaSucursal;
            private string DireccionSucursal;

            //Constructor vacío
            public Sucursales()
            {
            }

            //parámetros
            public Sucursales(int idSucursal, string nombreSucursal, string descripcionSucursal, 
                int idProvinciaSucursal, string direccionSucursal)
            {
                id_sucursal = idSucursal;
                NombreSucursal = nombreSucursal;
                DescripcionSucursal = descripcionSucursal;
                DireccionSucursal = direccionSucursal;
                id_provinciaSucursal = idProvinciaSucursal;
            }

            //getters y setters

            public int getIdSucursal()
            {
                return id_sucursal;
            }
            public void setIdSucursal(int idSucursal)
            {
                id_sucursal = idSucursal;
            }

            public string getNombreSucursal()
            {
                return NombreSucursal;
            }
            public void setNombreSucursal(string nombreSucursal)
            {
                NombreSucursal = nombreSucursal;
            }

            public string getDescripcionSucursal()
            {
                return DescripcionSucursal;
            }
            public void setDescripcionSucursal(string descripcionSucursal)
            {
                DescripcionSucursal = descripcionSucursal;
            }

            public int getIdProvinciaSucursal()
            {
                return id_provinciaSucursal;
            }
            public void setIdProvinciaSucursal(int idProvinciaSucursal)
            {
                id_provinciaSucursal = idProvinciaSucursal;
            }

            public string getDireccionSucursal()
            {
                return DireccionSucursal;
            }
            public void setDireccionSucursal(string direccionSucursal)
            {
                DireccionSucursal = direccionSucursal;
            }
        }
    }
