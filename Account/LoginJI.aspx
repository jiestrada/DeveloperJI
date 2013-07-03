<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginJI.aspx.vb" Inherits="DeveloperJI.LoginJI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>DeveloperJI - Login</title>
    <style type="text/css">
        .auto-style1 {
            width: 227px;
            height: 34px;
        }
    </style>
    <script type="text/javascript">
        function validar() {
            
            var u = document.getElementById('txtUserName').value;
            var p = document.getElementById('txtPassword').value;
            if (u == '' || p == '') {                
                document.getElementById('loginalert').style.display = 'block';
                return false;
            }
            return true
        }

        
    </script>
</head>
<body style="background-color: #0866C6; color: #FFFFFF; font-family: TitilliumText22L, sans-serif;">
    <form id="form1" runat="server">
        <div class="login">
            <img alt="DeveloperJI" class="auto-style1" src="../App_Themes/Principal/Images/header/logo.png" />
            <div class="loginCampos">
                <div id="loginalert" runat="server" style="display:none;">
                    <div  class="alertEr" style="font-size:12px; ">
                        Usuario/password incorrecto
                    </div>
                </div>
                
                <asp:TextBox ID="txtUserName" runat="server" placeholder="Usuario"></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:Button ID="btnEntrar" runat="server" OnClientClick="return validar()" Text="Entrar" />
            </div>
        </div>
    </form>
</body>
</html>
