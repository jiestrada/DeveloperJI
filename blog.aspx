<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="blog.aspx.vb" Inherits="DeveloperJI.blog" %>

<%@ Import Namespace="Controlador" %>

<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<%@ Import Namespace="DeveloperJI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenBody" runat="server">
    <script type="text/javascript">var switchTo5x = true;</script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">stLight.options({ publisher: "d153a33f-9c7c-4437-afe1-669002f38dcd", doNotHash: false, doNotCopy: false, hashAddressBar: false });</script>
   
    <div id="titBlogMenu">
        <asp:Image CssClass="imagen_" ID="imgTitulo" runat="server" />
        <asp:Label ID="lblTituloMenu" CssClass="tituloMenuB" runat="server" Text="Label"></asp:Label>
    </div>
    <div style="background-color: #E1E1E1; padding: 10px 0px 10px 20px; width:634px;">
        <span class='st_sharethis_large' displaytext='ShareThis'></span>
        <span class='st_facebook_large' displaytext='Facebook'></span>
        <span class='st_twitter_large' displaytext='Tweet'></span>
        <span class='st_linkedin_large' displaytext='LinkedIn'></span>
        <span class='st_googleplus_large' displaytext='Google +'></span>
        <span class='st_pinterest_large' displaytext='Pinterest'></span>
        <span class='st_email_large' displaytext='Email'></span>
        <span class='st_fblike_large' displaytext='Facebook Like'></span>
    </div>
    <asp:Panel ID="pnlBlog" runat="server">
        <div style="margin-top: 30px;">
            <asp:ListView ID="listBlog" runat="server" GroupItemCount="2" DataSourceID="LinqPost" GroupPlaceholderID="groupPlaceholder" ItemPlaceholderID="itemPlaceholder">
                <LayoutTemplate>
                    <asp:PlaceHolder ID="groupPlaceholder" runat="server" />
                    <asp:DataPager runat="server" ID="DataPager" PageSize="8">
                        <Fields>
                            <asp:NumericPagerField ButtonCount="10" CurrentPageLabelCssClass="CurrentPage"
                                NumericButtonCssClass="PageNumbers"
                                NextPreviousButtonCssClass="PageNumbers"
                                NextPageImageUrl="~/App_Themes/Principal/Images/header/iconext.png"
                                PreviousPageImageUrl="~/App_Themes/Principal/Images/header/icoback.png" />
                        </Fields>
                    </asp:DataPager>
                </LayoutTemplate>
                <GroupTemplate>
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                </GroupTemplate>
                <ItemTemplate>
                    <div class="blogTwoCols">
                        <div class="imgBlock">
                            <a href="<%# FriendlyUrl.Href("~/Post/", Eval("PostTitle"), Eval("PostID"))%>">
                                <img alt="<%# Eval("PostTitle")%>" src="<%# "../" & Eval("PostImage")%>" /></a>
                            <div class="imgPostVA" style="background-image: url('../App_Themes/Principal/Images/<%# Eval("Clave")%>.png');">
                            </div>
                            <div class="contadorIMG">
                                <a href="<%# FriendlyUrl.Href("~/Post/", Eval("PostTitle"), Eval("PostID"), "#comments")%>">
                                    <%# Eval("PostCommentCount")%></a>
                            </div>
                        </div>
                        <div class="BlogDescripcion">
                            <h3>
                                <a href="<%# FriendlyUrl.Href("~/Post/", Eval("PostTitle"), Eval("PostID"))%>">
                                    <%# Eval("PostTitle")%>
                                </a>
                            </h3>
                            <span><%# Left(tools.getSinHTML(Eval("PostContent")), 150)%></span>
                        </div>
                        <div class="blogPie">
                            <div class="fecha"><%# Eval("PostDateModificado")%></div>
                            <div class="categoria">
                                <a href="<%# FriendlyUrl.Href("~/Categoria", Eval("CategoriaPrincipal"), SqlGenerico.GetCategorias(DeveloperJI.db.coneccion.getDataBase, Eval("CategoriaPrincipal")))%>">
                                    <%# Eval("CategoriaPrincipal")%>

                                </a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:LinqDataSource ID="LinqPost" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" OrderBy="PostDateModificado desc" TableName="vPostMenus" Where="PostStatus == @PostStatus &amp;&amp; Name == @Name">
                <WhereParameters>
                    <asp:Parameter DefaultValue="True" Name="PostStatus" Type="Boolean" />
                    <asp:SessionParameter DefaultValue="0" Name="Name" SessionField="menu" Type="String" />
                </WhereParameters>
            </asp:LinqDataSource>
            <asp:ListView ID="listPagina" runat="server" DataSourceID="LinqPost">
                <ItemTemplate>
                    <div class="BlogPaginaDetalle">
                        <p><%# Eval("PostContent")%></p>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlContacto" runat="server">
        <div class="formularioComentario">

            <div class="ContactoCont">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="LinqPost">
                    <ItemTemplate>

                        <p><%# Eval("PostContent")%></p>
                    </ItemTemplate>
                </asp:ListView>
            </div>
            <h1>Envíanos tu comentario</h1>
            <br />
            <asp:Panel ID="pnlMensaje" Visible="false" CssClass="pnlMensaje" runat="server">
                <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
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
    </asp:Panel>
    <asp:HiddenField ID="hidPost" runat="server" />
</asp:Content>
