<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="Post.aspx.vb" Inherits="DeveloperJI.Post" %>

<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenBody" runat="server">
    <link href="../../dp.SyntaxHighlighter/Styles/SyntaxHighlighter.css" rel="stylesheet" />
    <script src="../../dp.SyntaxHighlighter/Scripts/shCore.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushCpp.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushCSharp.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushCss.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushDelphi.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushJava.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushJScript.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushPhp.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushPython.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushRuby.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushSql.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushVb.js"></script>
    <script src="../../dp.SyntaxHighlighter/Scripts/shBrushXml.js"></script>
    <link href="../../dp.SyntaxHighlighter/Styles/shCore.css" rel="stylesheet" />
    <link href="../../dp.SyntaxHighlighter/Styles/shThemeDefault.css" rel="stylesheet" />

    <script type="text/javascript">var switchTo5x = true;</script>
    <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
    <script type="text/javascript">stLight.options({ publisher: "d153a33f-9c7c-4437-afe1-669002f38dcd", doNotHash: false, doNotCopy: false, hashAddressBar: false });</script>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="LinqDataSource1">
        <ItemTemplate>
            <div id="tituloPostDetalle">
                <h1><%# Eval("PostTitle")%></h1>
                <div class="contadorIMGb">
                    <%# Eval("PostCommentCount")%>
                </div>
                <div id="titGenerales">
                    <div class="usuario">
                        <%# Eval("NicName")%>
                    </div>
                    <div class="fecha fBlog"><%# Eval("PostDateModificado")%></div>
                    <div class="categoria cBlog">
                        <a href="<%# FriendlyUrl.Href("~/Categoria", Eval("CategoriaPrincipal"))%>"><%# Eval("CategoriaPrincipal")%></a>
                    </div>
                </div>

            </div>
            <div style="background-color: #E1E1E1; padding: 10px 0px 10px 20px;">
                <span class='st_sharethis_large' displaytext='ShareThis'></span>
                <span class='st_facebook_large' displaytext='Facebook'></span>
                <span class='st_twitter_large' displaytext='Tweet'></span>
                <span class='st_linkedin_large' displaytext='LinkedIn'></span>
                <span class='st_googleplus_large' displaytext='Google +'></span>
                <span class='st_pinterest_large' displaytext='Pinterest'></span>
                <span class='st_email_large' displaytext='Email'></span>
                <span class='st_fblike_large' displaytext='Facebook Like'></span>
            </div>
            <div id="ContenidoPre" class="BlogPaginaDetalle contenido">
                <%# Eval("PostContent")%>
            </div>
        </ItemTemplate>
    </asp:FormView>

    <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="" ContextTypeName="DeveloperJI.DBClassDataContext" TableName="vPosts" Where="PostID == @PostID">
        <WhereParameters>
            <asp:ControlParameter ControlID="IDPost" DefaultValue="0" Name="PostID" PropertyName="Value" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    <asp:HiddenField ID="IDPost" runat="server" />
    <div id="tags">
        <asp:ListView ID="rptTags" runat="server">
            <ItemTemplate>
                <a href="<%# FriendlyUrl.Href("~/tag", Eval("metakey"))%>"><%# Eval("metakey") %></a>
            </ItemTemplate>
        </asp:ListView>
    </div>
    <br style="clear: both;" />
    <div class="separadorGeneral">
    </div>
    <div class="PostaRelacionados">
        <h1>Post Relacionados</h1>
        <asp:ListView ID="PostRelacionados" runat="server">
            <ItemTemplate>
                <a href="<%# FriendlyUrl.Href("~/Post/", Eval("PostTitle"), Eval("PostID"))%>">
                    <img alt="<%# Eval("PostTitle")%>" src="../../<%# Eval("PostImage")%>" />
                </a>
            </ItemTemplate>
        </asp:ListView>
    </div>

    <div class="separadorGeneral">
    </div>

    <div class="comentarios">

        <h1>Comentarios</h1>
        <br />
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>

    </div>
    <div class="separarComm"></div>
    <div class='separarComm'></div>
    <div class="formularioComentario">
        <h1>Envía tu comentario</h1>
        <br />
        <div class="camposTexto">
            Nombre (requerido)<asp:RequiredFieldValidator
                ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="*" ValidationGroup="coment"
                ControlToValidate="txtNombre" Style="color: #CC0000">
            </asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <br />
            <br />
            Email (requerido)<asp:RequiredFieldValidator
                ID="RequiredFieldValidator2" runat="server"
                ErrorMessage="*" ValidationGroup="coment"
                ControlToValidate="txtEmail" Style="color: #CC0000">

            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server"
                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ValidationGroup="coment" ErrorMessage="Email invalido" Style="color: #CC0000"></asp:RegularExpressionValidator><br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <br />
            Website
            <br />
            <asp:TextBox ID="txtWebSite" runat="server"></asp:TextBox>
        </div>
        <div class="camposDescripcion">
            Comentario
            (requerido)<asp:RequiredFieldValidator
                ID="RequiredFieldValidator3" runat="server"
                ErrorMessage="*" ValidationGroup="coment"
                ControlToValidate="txtComentario" Style="color: #CC0000">
            </asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtComentario" runat="server" TextMode="MultiLine" Height="133px" Width="338px"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" ValidationGroup="coment" CssClass="button" Text="Enviar Comentario" />
    </div>

    <script type="text/javascript">
        
        
        dp.SyntaxHighlighter.ClipboardSwf = '../../dp.SyntaxHighlighter/Scripts/clipboard.swf';
        
        //if (myDiv != null){
        //    var myPre = myDiv.getElementsByTagName('pre')
        //    for (i = 0; i < myPre.length; i++) {
        //        dp.SyntaxHighlighter.HighlightAll(myPre[i].name)
        //    }

        //}
        var a =false ;
        var i=0;
        while (a==false){
            i=i+1;
            var myDiv = document.getElementById("codigo" + i)
            if (myDiv != null) {
                dp.SyntaxHighlighter.HighlightAll('codigo' + i)
            } else {
                a=true
            }
            
        }
        
        
        //dp.SyntaxHighlighter.Brushes.Xml()
    </script>
</asp:Content>
