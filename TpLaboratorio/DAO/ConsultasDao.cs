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

        public List<Examen> GetExamenes(string nombreSp)
        {
            List<Examen> examenes = new List<Examen>();
            DataTable table = HelperDao.GetInstancia().GetTable(nombreSp,new Dictionary<string, object>());
            foreach (DataRow row in table.Rows)
            {
                Examen examen = new Examen();
                examen.IdExamen = Convert.ToInt32(row["IdExamen"]);
                examen.NombreMateria = row["Materia"].ToString();
                examen.Instancia = row["Instancia"].ToString();

                examenes.Add(examen);
            }

            return examenes;
        }

        public List<Alumno> GetAlumnos(string nombreSp) {

            DataTable table = HelperDao.GetInstancia().GetTable(nombreSp, new Dictionary<string, object>());
            List<Alumno> alumnos = new List<Alumno>();

            foreach (DataRow row in table.Rows)
            {
                Alumno alumno = new Alumno();
                alumno.Legajo = Convert.ToInt32(row["Legajo"]);
                alumno.Nombre = row["Alumno"].ToString();

                alumnos.Add(alumno);
            }

            return alumnos;
        }

        public void InsertarDetalle(string nombreSp,Dictionary<string,object> parametros)
        {
            HelperDao.GetInstancia().GetTable(nombreSp,parametros);
        }

    }
}
