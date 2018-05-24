using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1enviardados_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            /* Salvando dados do formulário em uma instância de Empresa para futuramente enviar os dados ao BD */
            Status status = new Status();
            status.cdStatus = 1;  // Valor para teste
            status.cdStatus = Convert.ToInt32(TextStatus.Text);
            Empresa empresa = new Empresa();
            empresa.cdEmpresa = 1 ; // Valor para teste
            empresa.dsRazaoSocial = textRS.Text;
            empresa.dsEmail = TextEmail.Text;
            empresa.dsCNPJ = TextCNPJ.Text;
            empresa.status = status;
            empresa.idAtivo = true;

            LabelMenssagem.ForeColor = System.Drawing.Color.Green;
            LabelMenssagem.Text = "Dados enviados com sucesso.";

            
        }
    }

    protected void Validate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = true;
        if (!Validacao.IsCnpj(TextCNPJ.Text))
        {
            args.IsValid = false;
        }
    }
}