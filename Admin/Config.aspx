<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/admin.Master" ValidateRequest="false" CodeBehind="Config.aspx.vb" Inherits="DeveloperJI.Config" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard">
        <img src="images/configuracion.fw.png" />
        <h1>Configuración</h1>
    </div>
    <div class="contAdm">
        <div class="configOcL">
            <h6>Nombre y logo</h6>
            <div class="contentAp">
                <asp:TextBox ID="txtTituloBlog" CssClass="textBoxOpc" runat="server" placeholder="Título"></asp:TextBox>
                <asp:Image ID="imgLogo" CssClass="imgLogo" runat="server" ImageUrl="~/App_Themes/Principal/Images/header/logo.png" />
                <asp:FileUpload ID="FileUploadControl" runat="server" Width="220" />
                
                <br />
                <br />
                <asp:Button ID="btnModificar" CssClass="textBoxOpc" runat="server" Text="Subir" Width="150px" />
            </div>
            <div class="divSeparadorRigth"></div>
            <h6>Cuentas</h6>
            <div class="contentAp">
                <asp:TextBox ID="txtTwitter" CssClass="textBoxOpc" runat="server" placeholder="Twitter"></asp:TextBox>
                <asp:TextBox ID="txtFacebook" CssClass="textBoxOpc" runat="server" placeholder="Facebook"></asp:TextBox>
                <asp:TextBox ID="txtLinKedin" CssClass="textBoxOpc" runat="server" placeholder="LinKedin"></asp:TextBox>
               
            </div>
        
            
            
        </div>
        <div class="configOpcR">
            <h6>Información de contacto</h6>
            <div class="contentAp">
                <asp:TextBox ID="txtDireccion" CssClass="textBoxOpc" runat="server" Width="90%" placeholder="Dirección"></asp:TextBox>
                <asp:TextBox ID="txtTelefono" CssClass="textBoxOpc" runat="server" Width="250px" placeholder="Teléfono"></asp:TextBox><br />
                <asp:TextBox ID="txtEmail" CssClass="textBoxOpc" runat="server" Width="250px" placeholder="Email"></asp:TextBox></div>
            <div class="divSeparadorRigth"></div>
            <h6>Email
            </h6>
            <div class="contentAp">
                <asp:Panel ID="pnlMensaje"  CssClass="pnlMensaje" runat="server" Visible ="false">
                    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                </asp:Panel>
                <table style="width: 90%">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtMailServer" CssClass="textBoxOpc" runat="server" Width="250px" placeholder="Mail Server ej: webmail.developerji.com"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMailServerLogin" CssClass="textBoxOpc" runat="server" Width="250px" placeholder="Mail Login ej: info@developerji.com"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtMailServerPassword" CssClass="textBoxOpc" runat="server" Width="250px" placeholder="Mail Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMailServerPort" CssClass="textBoxOpc" runat="server" Width="250px" placeholder="Puerto"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="btnModificar0" CssClass="textBoxOpc" runat="server" Text="Test email" Width="150px" />
            </div>
            <div class="divSeparadorRigth"></div>
            <h6>Anuncio Google
            </h6>
            <div class="contentAp">
                <asp:TextBox ID="txtGoogleRigth" CssClass="textBoxOpc" runat="server" Width="500px" placeholder="Anuncio Google" TextMode="MultiLine" Height="150px"></asp:TextBox>
                &nbsp;&nbsp;</div>
            <div class="divSeparadorRigth"></div>
            <h6>Widgets Twitter - Facebook
            </h6>
            <div class="contentAp">
                <asp:TextBox ID="txtTwitterW" CssClass="textBoxOpc" runat="server" Width="500px" placeholder="Widgets Twitter" TextMode="MultiLine" Height="150px"></asp:TextBox>
                <asp:TextBox ID="txtFaceboolW" CssClass="textBoxOpc" runat="server" Width="500px" placeholder="Widgets Facebook" TextMode="MultiLine" Height="150px"></asp:TextBox>
                </div>
        </div>
        <div class="separador"></div>
        <br />
        <asp:Button ID="Button2" CssClass="btnAl" runat="server" Text="Guardar" Width="250px" />
        <div class="divisor"></div>
        
    </div>
</asp:Content>
