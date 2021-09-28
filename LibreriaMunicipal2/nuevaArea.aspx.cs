using System;
using System.Data.SqlClient;
using System.Windows;

namespace LibreriaMunicipal2
{
    public partial class nuevaArea : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-N1B69B5N\SQLSALVADOR;Initial Catalog=LibreriaMunicipal;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnNuevaArea_Click(object sender, EventArgs e)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("INSERT INTO [Areas] (areCodigo, areNombre, areTiempo) VALUES (@areCodigo, @areNombre, @areTiempo)", conexion);
                comando.Parameters.AddWithValue("@areCodigo", TxtareCodigo.Text);
                comando.Parameters.AddWithValue("@areNombre", TxtareNombre.Text);
                comando.Parameters.AddWithValue("@areTiempo", TxtareTiempo.Text);
                comando.ExecuteNonQuery();
                MessageBox.Show("Area Creada Exitosamente!");
                conexion.Close();
            }
            catch
            {
                MessageBox.Show("El Área ya Existe!");
            }
        }
    }
}