using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Empresa
{
    public int cdEmpresa { get; set; }
    public string dsRazaoSocial { get; set; }
    public string dsEmail { get; set; }
    public string dsCNPJ { get; set; }
    public bool idAtivo { get; set; }
    public Status status { get; set; }
}