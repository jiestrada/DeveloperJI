<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="Suscribete.aspx.vb" Inherits="DeveloperJI.Suscribete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenBody" runat="server">
    <div id="tituloCatDetalle"> 
                <label>Suscribete:</label>   <br />    
                <h1>
                    Newsletter
                </h1>                
            </div>  
    <div id="ContenidoPre" class="BlogPaginaDetalle contenido">
        <asp:Panel ID="pnlMensaje" Visible="false" CssClass="pnlMensaje" runat="server">
                <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
        <div class="camposTexto" style="width:550px;">
        <p>
         Suscríbete al newsletter.<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSuscribirme" ErrorMessage="*" ValidationGroup="sus" style="color: #CC0000"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmailID" runat="server"
ControlToValidate="txtSuscribirme"  ValidationGroup="sus"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">email no valido</asp:RegularExpressionValidator> 
        <br />
        <asp:TextBox ID="txtSuscribirme" Width="400px"  placeholder="e-mail" runat="server" TextMode="Email"></asp:TextBox><asp:Button ID="btnModificar" runat="server"  ValidationGroup="sus" Text="Enviar" Width="140px" />
            </p>
            <p>
            <asp:CheckBox ID="CheckBox1" runat="server"  TextAlign="Left" Text="Cancelar mi suscripción" />
                .<br />
        &nbsp;</p></div>
        </div>  
</asp:Content>
