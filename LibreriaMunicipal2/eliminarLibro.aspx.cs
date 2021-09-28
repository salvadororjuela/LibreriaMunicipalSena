using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace LibreriaMunicipal2
{
    public partial class eliminarLibro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
    public class ClsEliminarLibro : ClsConexion
    {
        string tabla = "Libros";
        protected string nombre, autor, editorial;
        protected int codigo, paginas, area;
        public ClsEliminarLibro(int codigo, string nombre, int paginas, string autor, string editorial, int area)
        {
            this.codigo = codigo;
            this.nombre = nombre;
            this.paginas = paginas;
            this.autor = autor;
            this.editorial = editorial;
            this.area = area;
        }
        public int Documento
        {
            set { codigo = value; }
            get { return codigo; }
        }
        public string Nombre
        {
            set { nombre = value; }
            get { return nombre; }
        }
        public int Paginas
        {
            set { paginas = value; }
            get { return paginas; }
        }
        public string Autor
        {
            set { autor = value; }
            get { return autor; }
        }
        public string Editorial
        {
            set { editorial = value; }
            get { return editorial; }
        }
        public int Area
        {
            set { Area = value; }
            get { return Area; }
        }
        public void agregar()
        {
            conectar(tabla);
            DataRow fila;
            fila = Data.Tables[tabla].NewRow();
            fila["libCodigo"] = codigo;
            fila["libNombre"] = nombre;
            fila["ligNumPag"] = paginas;
            fila["libAutor"] = autor;
            fila["libEditorial"] = editorial;
            fila["libArea"] = area;
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