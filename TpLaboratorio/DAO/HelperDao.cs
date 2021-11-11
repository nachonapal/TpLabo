using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TpLaboratorio.DAO
{
    class HelperDao
    {
        private static HelperDao instancia;
        private SqlConnection connection;
        private HelperDao() {
            connection = new SqlConnection(@"Data Source=NBAR15229\SQLEXPRESS;Initial Catalog=SistemaAcademico;Integrated Security=True");
        }

        public static HelperDao GetInstancia() {
            if (instancia is null) {
                instancia = new HelperDao();
            }
            return instancia;
        }

        public DataTable GetTable(string nombreSp,Dictionary<string,object> parametros)
        {
            try
            {
                SqlCommand command = new SqlCommand(nombreSp, connection);
                command.CommandType = CommandType.StoredProcedure;
                foreach (KeyValuePair<string, object> parametro in parametros)
                {
                    if (parametro.Value is null)
                    {
                        command.Parameters.AddWithValue(parametro.Key, DBNull.Value);
                    }
                    command.Parameters.AddWithValue(parametro.Key, parametro.Value);
                }
                DataTable table = new DataTable();
                connection.Open();
                table.Load(command.ExecuteReader());
                return table;
            }
            catch (Exception)
            {
                return null;
            }
            finally {
                if(connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
                
            }
            
            
        }
    }
}
