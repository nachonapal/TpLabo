using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TpLaboratorio.Entidades
{
    class DetalleExamen
    {
        public int IdExamen { get; set; }
        public int Legajo { get; set; }
        public bool Presente { get; set; }
        public int Nota { get; set; }
        
    }
}
