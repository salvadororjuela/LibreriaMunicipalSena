using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LibreriaMunicipal2
{
    public partial class editarAreas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
    public class ClsAreas : ClsConexion
    {
        string tabla = "Areas";
        protected string nombre;
        protected int codigo, tiempo;
        public ClsAreas(int codigo, string nombre, int tiempo)
        {
            this.codigo = codigo;
            this.nombre = nombre;
            this.tiempo = tiempo;
        }
        public int Codigo
        {
            set { codigo = value; }
            get { return codigo; }
        }
        public string Nombre
        {
            set { nombre = value; }
            get { return nombre; }
        }
        public int Tiempo
        {
            set { tiempo = value; }
            get { return tiempo; }
        }
        public void agregar()
        {
            conectar(tabla);
            DataRow fila;
            fila = Data.Tables[tabla].NewRow();
            fila["areCodigo"] = codigo;
            fila["areNombre"] = nombre;
            fila["areTiempo"] = tiempo;
            Data.Tables[tabla].Rows.Add(fila);
            AdaptadorDatos.Update(Data, tabla);
        }
        public bool eliminar(int valor)
        {
            conectar(tabla);
            DataRow fila;
            int x = Data.Tables[tabla].Rows.Count - 1;
            for (int i = 0; i <= x; i++)
            {
                fila = Data.Tables[tabla].Rows[i];
                if (int.Parse(fila["libCodigo"].ToString()) == valor)
                {
                    fila = Data.Tables[tabla].Rows[i];
                    fila.Delete();
                    DataTable tablaborrados;
                    tablaborrados = Data.Tables[tabla].GetChanges(DataRowState.Deleted);
                    AdaptadorDatos.Update(tablaborrados); Data.Tables[tabla].AcceptChanges();
                    return true;
                }
            }
            return false;
        }
    }
}