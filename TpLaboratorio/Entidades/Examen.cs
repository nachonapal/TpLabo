using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TpLaboratorio.Entidades
{
    class Examen
    {
        public int IdExamen { get; set; }
        public string NombreMateria { get; set; }
        public string Instancia { get; set; }

        public override string ToString()
        {
            return $"{IdExamen}- {Instancia} de {NombreMateria}";
        }
    }
}
