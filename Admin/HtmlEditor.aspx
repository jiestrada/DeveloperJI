<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HtmlEditor.aspx.vb" Inherits="DeveloperJI.HtmlEditor" %>

<%@ Register Assembly="DeveloperJI" TagPrefix="htm" Namespace="DeveloperJI.Editor" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="ckeditor/ckeditor.js"></script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
   <htm:CkEditor ID="textArea1" runat="server"  BaseHref="~/Ckeditor/" Height="400" />   
        <table style="width: 100%; border-bottom-style: dashed; border-right-style: dashed; border-right-width: 2px; border-bottom-width: 2px; border-right-color: #003366; border-bottom-color: #003366;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
        
    </form>
</body>
</html>
