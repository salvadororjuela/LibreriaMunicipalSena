using System;
using System.Data.SqlClient;
using System.Windows;

namespace LibreriaMunicipal2
{
    public partial class nuevoUsuario : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-N1B69B5N\SQLSALVADOR;Initial Catalog=LibreriaMunicipal;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnNuevoUsuario_Click(object sender, EventArgs e)
        {
            try
                {
                    conexion.Open();
                    SqlCommand comando = new SqlCommand("INSERT INTO [Usuarios] (usuDocumento, usuNombre, usuDireccion, usuTelefono, usuCorreo, usuEstado) VALUES (@usuDocumento, @usuNombre, @usuDireccion, @usuTelefono, @usuCorreo, @usuEstado)", conexion);
                    comando.Parameters.AddWithValue("@usuDocumento", TxtusuDocumento.Text);
                    comando.Parameters.AddWithValue("@usuNombre", TxtusuNombre.Text);
                    comando.Parameters.AddWithValue("@usuDireccion", TxtusuDireccion.Text);
                    comando.Parameters.AddWithValue("@usuTelefono", TxtusuTelefono.Text);
                    comando.Parameters.AddWithValue("@usuCorreo", TxtusuCorreo.Text);
                    comando.Parameters.AddWithValue("@usuEstado", TxtusuEstado.Text);
                    comando.ExecuteNonQuery();
                    MessageBox.Show("Usuario Creado Exitosamente!");
                    conexion.Close();
            }
            catch
                {
                    MessageBox.Show("El Usuario ya Existe!");
                }
            }
    }
}