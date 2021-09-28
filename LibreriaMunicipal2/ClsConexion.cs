using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LibreriaMunicipal2
{
    public class ClsConexion
    {
        protected SqlDataReader reader;
        protected SqlDataAdapter AdaptadorDatos;
        protected DataSet data;
        protected SqlConnection oconecccion = new SqlConnection();
        public ClsConexion()
        {
        
        }
        public void conectar(string tabla)
        {
            string strConeccion =
            ConfigurationManager.ConnectionStrings["LibreriaMunicipalConnectionString"].ConnectionString;
            oconecccion.ConnectionString = strConeccion;
            oconecccion.Open();
            AdaptadorDatos = new SqlDataAdapter("select * from " + tabla, oconecccion);
            SqlCommandBuilder ejecutacomandos = new SqlCommandBuilder(AdaptadorDatos);
            Data = new DataSet();
            AdaptadorDatos.Fill(Data, tabla); oconecccion.Close();
        }
        public DataSet Data
        {
            set { data = value; }
            get { return data; }
        }
        public SqlDataReader Datareader
        {
            set { reader = value; }
            get { return reader; }
        }
    }
}