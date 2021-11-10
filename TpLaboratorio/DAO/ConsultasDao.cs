using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TpLaboratorio.Entidades;

namespace TpLaboratorio.DAO
{
    class ConsultasDao
    {
        public DataTable GetConsulta(string nombreSp,Dictionary<string, object> parametros) {
            return HelperDao.GetInstancia().GetTable(nombreSp, parametros);
        }

        public List<Materia> GetMaterias() {
            DataTable table = HelperDao.GetInstancia().GetTable("OBTENER_MATERIAS",new Dictionary<string, object>());
            List < Materia >  materias = new List<Materia>();
            foreach (DataRow row in table.Rows)
            {
                Materia materia = new Materia();
                materia.IdMateria = Convert.ToInt32(row["idMateria"]);
                materia.Nombre = row["Materia"].ToString();
                materias.Add(materia);
            }
            return materias;
        }
    }
}
