<%@ Page Title="Cadastrar Empresa" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Empresa_Status</h1>
    <h2>Cadastrar Empresa</h2>
    <form id="form1" runat="server">
        <div>
 
            <table style="width: 100%; height: 237px;">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="LabelMenssagem" runat="server" Text="Entre com os dados abaixo:"></asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Razão Social:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="textRS" runat="server" MaxLength="150" Width="240px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textRS" ErrorMessage="Razão Social é obrigatória." ForeColor="Red" ValidationGroup="AllValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="CNPJ:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextCNPJ" runat="server" MaxLength="14" Width="142px"></asp:TextBox>
                    </td>
                    <td>
                        <!-- Campo Obrigatório pois não pode receber valor NULL no banco de dados -->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextCNPJ" ErrorMessage="CNPJ é obrigatório." ForeColor="Red" ValidationGroup="AllValidator"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextCNPJ" ErrorMessage="CNPJ Inválido" OnServerValidate="Validate" ForeColor="Red" ValidationGroup="AllValidator"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:TextBox ID="TextEmail" runat="server" MaxLength="150" Width="142px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextEmail" ErrorMessage="Email é obrigatório." ForeColor="Red" ValidationGroup="AllValidator"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="Email Inválido" ForeColor="Red" ValidationGroup="AllValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Status:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextStatus" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextStatus" ErrorMessage="Status é obrigatório. " ForeColor="Red" ValidationGroup="AllValidator"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="TextStatus" ErrorMessage="Status deve ser um número" ForeColor="Red" ValidationGroup="AllValidator"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1enviardados" runat="server" Text="Enviar Dados" ValidationGroup="AllValidator" OnClick="Button1enviardados_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
 
        </div>
        <p>
            &nbsp;</p>
        <p>
                        &nbsp;</p>
    </form>
</body>
</html>