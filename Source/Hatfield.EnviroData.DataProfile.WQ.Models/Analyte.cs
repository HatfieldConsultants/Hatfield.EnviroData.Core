﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hatfield.EnviroData.DataProfile.WQ.Models
{
    public class Analyte
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Unit StandardUnit { get; set; }
        public AnalyteCategory Category { get; set; }
    }
}
