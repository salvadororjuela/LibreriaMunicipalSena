using System;
using System.Data.SqlClient;
using System.Windows;

namespace LibreriaMunicipal2
{
    public partial class nuevoLibro : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-N1B69B5N\SQLSALVADOR;Initial Catalog=LibreriaMunicipal;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnNuevoLibro_Click(object sender, EventArgs e)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("INSERT INTO [Libros] (libCodigo, libNombre, libNumPag, libAutor, libEditorial, libArea) VALUES (@libCodigo, @libNombre, @libNumPag, @libAutor, @libEditorial, @libArea)", conexion);
                comando.Parameters.AddWithValue("@libCodigo", TxtlibCodigo.Text);
                comando.Parameters.AddWithValue("@libNombre", TxtlibNombre.Text);
                comando.Parameters.AddWithValue("@libNumPag", TxtlibNumPag.Text);
                comando.Parameters.AddWithValue("@libAutor", TxtlibAutor.Text);
                comando.Parameters.AddWithValue("@libEditorial", TxtlibEditorial.Text);
                comando.Parameters.AddWithValue("@libArea", TxtlibArea.Text);
                comando.ExecuteNonQuery();
                MessageBox.Show("Nuevo Libro Ingresado Exitosamente!");
                conexion.Close();
            }
            catch
            {
                MessageBox.Show("El Libro ya Existe!");
            }
        }
    }
}