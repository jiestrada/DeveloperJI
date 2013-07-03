<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="Categoria.aspx.vb" Inherits="DeveloperJI.Categoria" %>

<%@ Import Namespace="Controlador" %>

<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<%@ Import Namespace="DeveloperJI"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenBody" runat="server">    
            <div id="tituloCatDetalle"> 
                <label>Categoría:</label>       
                <h1>
                    <asp:Label ID="lblTitulo" runat="server" Text="Label"></asp:Label>
                </h1>                
            </div>    
    <div style="margin-top:30px;">
        <asp:ListView ID="listBlog" runat="server" GroupItemCount="2" DataSourceID="LinqPost" GroupPlaceholderID="groupPlaceholder"  ItemPlaceholderID="itemPlaceholder">
            <LayoutTemplate>
            <asp:Placeholder id="groupPlaceholder" runat="server" />
            <asp:DataPager runat="server" ID="DataPager" PageSize="8">
                <Fields>
                    <asp:NumericPagerField ButtonCount="10" CurrentPageLabelCssClass="CurrentPage" 
                        NumericButtonCssClass="PageNumbers"
                        NextPreviousButtonCssClass="PageNumbers"
                      NextPageImageUrl ="~/App_Themes/Principal/Images/header/iconext.png"
                       PreviousPageImageUrl="~/App_Themes/Principal/Images/header/icoback.png"
                        
                         />
                </Fields>
                </asp:DataPager>
        </LayoutTemplate>
        <GroupTemplate>
            <asp:Placeholder id="itemPlaceholder" runat="server" />
        </GroupTemplate>
            <ItemTemplate>
                <div class="blogTwoCols">
                    <div class="imgBlock" >
                        <a href="<%# FriendlyUrl.Href("~/Post/", Eval("PostTitle"), Eval("PostID"))%>">
                        <img alt="<%# Eval("PostTitle")%>" src="../..<%# Eval("PostImage")%>" /></a>
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
        <asp:LinqDataSource ID="LinqPost" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" OrderBy="PostDateModificado desc" TableName="vPostMenus" Where="PostStatus == @PostStatus &amp;&amp; CategoriaID == @Name">
            <WhereParameters>
                <asp:Parameter DefaultValue="True" Name="PostStatus" Type="Boolean" />
                <asp:SessionParameter DefaultValue="0" Name="Name" SessionField="categoria" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
        
    </div>  
</asp:Content>
