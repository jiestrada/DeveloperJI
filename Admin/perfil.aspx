<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/admin.Master" CodeBehind="perfil.aspx.vb" Inherits="DeveloperJI.perfil1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard">
        <img src="images/perfil.png" />
        <h1>Perfil</h1>
    </div>
    <div class="contAdm">
        <%--<div class="configOcL">
            <h6>Foto</h6>
            <div class="contentAp">
                <asp:Image ID="imgLogo" CssClass="imgLogo" runat="server" ImageUrl="~/App_Themes/Principal/Images/header/logo.png" />
                <asp:FileUpload ID="FileUploadControl" runat="server" Width="220" />
                <asp:Button ID="btnModificar" CssClass="textBoxOpc" runat="server" Text="Subir" Width="150px" /><br />
                <br />
                </div>
        </div>--%>
        <div>
            <h6>Información de usuario</h6>
            <div class="contentAp">
                <p>
                <asp:TextBox ID="txtEmail" CssClass="textBoxOpc" runat="server" Width="250px" placeholder="Email"></asp:TextBox></p>
                <p><asp:TextBox ID="txtUrl" CssClass="textBoxOpc" runat="server" Width="450px" placeholder="Url Web"></asp:TextBox></p>
               <p> <asp:TextBox ID="txtDisplayName" CssClass="textBoxOpc" runat="server" Width="350px" placeholder="Display Name"></asp:TextBox></p>
               <p> <asp:TextBox ID="txtPass" CssClass="textBoxOpc" runat="server" Width="250px" placeholder="Password"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtPass" 
                       runat="server" ErrorMessage="Requerido" style="color: #CC0000" ValidationGroup="usuario"></asp:RequiredFieldValidator></p>
                </div>
        </div>
        <div class="separador"></div>
        <br />
        <asp:Button ID="Button2" CssClass="btnAl" runat="server" Text="Guardar" Width="250px"  ValidationGroup="usuario"/>
        <div class="divisor"></div>
    </div>
    
</asp:Content>
