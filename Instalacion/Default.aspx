<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="DeveloperJI._Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%; padding-top:50px;">
    <table style="border-color: #CCCCCC; width: 762px; height: 294px;margin: 0 auto 0 auto;" border="1" >
            <tr>
                <td colspan="3" style="padding: 15px; height: 26px; background-color: #CC0000;">
                    <strong><span style="font-family: TitilliumText22L, sans-serif; color: #FFFFFF;">Crear tablas en la Base de Datos (Cuando termine el asistente debe elminiar la carpeta "Instalacion") USUARIO ADMINISTRADOR DEL SISTEMA &quot;admin&quot; &quot;admin&quot;</span></strong></td>
            </tr>
            <tr>
                <td colspan="3" valign="top">
                    <asp:Wizard ID="Wizard1" runat="server" BackColor="#F7F6F3" BorderColor="#CCCCCC"
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em"
                        Height="145px" Width="738px" ActiveStepIndex="0">
                        <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                        <WizardSteps>
                            <asp:WizardStep ID="inicio" runat="server" Title="Database Configuration">
                                <table style="width: 362px;" height="200">
                                    <tr>
                                        <td style="width: 396px; height: 211px">
                                            <table style="width: 558px; height: 80px">
                                                <tr>
                                                    <td style="width: 146px">
                                                        <asp:Label ID="Label1" runat="server" Text="SQL Server"></asp:Label>
                                                    </td>
                                                    <td style="width: 74px">
                                                        <asp:TextBox ID="txtServer" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td style="width: 2px">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtServer" ErrorMessage="Database Server Required" Width="183px"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 146px">
                                                        <asp:Label ID="Label2" runat="server" Text="Database Name"></asp:Label>
                                                    </td>
                                                    <td style="width: 74px">
                                                        <asp:TextBox ID="txtDBName" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td style="width: 2px">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDBName" ErrorMessage="Database Name Required" Width="192px"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 146px">
                                                        <asp:Label ID="Label5" runat="server" Text="Authentication Mode"></asp:Label>
                                                    </td>
                                                    <td style="width: 74px">
                                                        <asp:DropDownList ID="ddlAuthenticationMode" runat="server" AutoPostBack="True">
                                                            <asp:ListItem Selected="True" Value="0">SQL Server</asp:ListItem>
                                                            <%--<asp:ListItem Value="1">Windows</asp:ListItem>--%>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="width: 2px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 146px">
                                                        <asp:Label ID="Label3" runat="server" Text="SQL User ID"></asp:Label>
                                                    </td>
                                                    <td style="width: 74px">
                                                        <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td style="width: 2px">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserID" ErrorMessage="Database User Name Required" Width="200px"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 146px">
                                                        <asp:Label ID="Label4" runat="server" Text="SQL Server Password"></asp:Label>
                                                    </td>
                                                    <td style="width: 74px">
                                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password">sa</asp:TextBox>
                                                    </td>
                                                    <td style="width: 2px">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="SQL Password Required" Width="175px"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 146px">
                                                    </td>
                                                    <td style="width: 74px">
                                                    </td>
                                                    <td style="width: 2px">
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep ID="WizardStep1" runat="server" Title="Run SQL Script"><table style="width: 362px;" height="200">
                                <tr>
                                    <td style="width: 358px; height: 211px" colspan="3" rowspan="5">
                                        <table style="width: 336px">
                                            <tr>
                                                <td style="height: 18px">
                                                    <asp:Label ID="Label6" runat="server" Text="SQL Script Path:"></asp:Label>
                                                </td>
                                                <td style="height: 18px">
                                                    <asp:TextBox ID="txtSQLPath" runat="server" Width="176px" ReadOnly="True">SQLQuery.sql</asp:TextBox>
                                                </td>
                                                <td style="width: 3px; height: 18px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td>
                                                </td>
                                                <td style="width: 3px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="Label7" runat="server" Text="Ex: Path Should be Server.Map Path           Click on Finish to Run SQL Script File" Height="50px" Width="244px"></asp:Label>
                                                </td>
                                                <td style="width: 3px">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                            </table>
                            </asp:WizardStep>
                        </WizardSteps>
                        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
                            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                        <SideBarStyle BackColor="#666666" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em"
                            ForeColor="White" HorizontalAlign="Left" />
                    </asp:Wizard>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
