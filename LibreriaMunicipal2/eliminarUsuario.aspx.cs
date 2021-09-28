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
    public partial class eliminarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        public class ClsUsuario : ClsConexion
        {
            string tabla = "Usuarios";
            protected string nombre, direccion, correo;
            protected int documento, telefono, estado;
            public ClsUsuario(int documento, string nombre, string direccion, int telefono, string correo, int estado)
            {
                this.documento = documento;
                this.nombre = nombre;
                this.direccion = direccion;
                this.telefono = telefono;
                this.correo = correo;
                this.estado = estado;
            }
            public int Documento
            {
                set { documento = value; }
                get { return documento; }
            }
            public string Nombre
            {
                set { nombre = value; }
                get { return nombre; }
            }
            public string Direccion
            {
                set { direccion = value; }
                get { return direccion; }
            }
            public int Telefono
            {
                set { telefono = value; }
                get { return telefono; }
            }
            public string Correo
            {
                set { correo = value; }
                get { return correo; }
            }
            public int Estado
            {
                set { estado = value; }
                get { return estado; }
            }
            public void agregar()
            {
                conectar(tabla);
                DataRow fila;
                fila = Data.Tables[tabla].NewRow();
                fila["usuDocumento"] = documento;
                fila["usuNombre"] = nombre;
                fila["usuDireccion"] = direccion;
                fila["usuTelefono"] = telefono;
                fila["usuCorreo"] = correo;
                fila["usuEstado"] = estado;
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
                    if (int.Parse(fila["usuDocumento"].ToString()) == valor)
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
}