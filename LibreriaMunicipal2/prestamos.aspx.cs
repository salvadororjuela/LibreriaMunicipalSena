using System;
using System.Data.SqlClient;

namespace LibreriaMunicipal2
{
    public partial class prestamos : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection(@"Data Source=LAPTOP-N1B69B5N\SQLSALVADOR;Initial Catalog=LibreriaMunicipal;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void BtnPrestamo_Click(object sender, EventArgs e)
        {
            conexion.Open();
            SqlCommand comando = new SqlCommand("INSERT INTO [DetallePrestamos] (dtpPrestamo, dtpLibro, dtpUsuario, dtpCantidad, dtpFechaFin, dtpFechaDev) VALUES (@dtpPrestamo, @dtpLibro, @dtpUsuario, @dtpCantidad, @dtpFechaFin, @dtpFechaDev)", conexion);
            comando.Parameters.AddWithValue("@dtpPrestamo", TxtdtpPrestamo.Text);
            comando.Parameters.AddWithValue("@dtpLibro", TxtdtpLibro.Text);
            comando.Parameters.AddWithValue("@dtpUsuario", TxtdtpUsuario.Text);
            comando.Parameters.AddWithValue("@dtpCantidad", TxtdtpCantidad.Text);
            comando.Parameters.AddWithValue("@dtpFechaFin", TxtdtpFechaFin.Text);
            comando.Parameters.AddWithValue("@dtpFechaDev", TxtdtpFechaDev.Text);
            comando.ExecuteNonQuery();
            conexion.Close();

        }
    }
}