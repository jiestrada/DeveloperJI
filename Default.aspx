<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="Default.aspx.vb" Inherits="DeveloperJI._Default" %>

<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>

<%@ Import Namespace="Controlador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="Slide/themes/default/default.css" rel="stylesheet" />
    <link href="Slide/nivo-slider.css" rel="stylesheet" />
    <link href="Slide/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenBody" runat="server">
    <div id="slidePrincipal">
        <div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
                <%
                    Dim myList As New List(Of _JIPost)
                    myList = Controlador.SqlGenerico.GetPost(DeveloperJI.db.coneccion.getDataBase)
                    Dim Lista As _JIPost
                    Dim Menu As String = ""
                    Dim i As Integer = 0
                    Dim strTransiscion As String = "data-transition=""slideInLeft"""
                    For Each Lista In myList
                        i = i + 1
                %>                
                <a href="<%=FriendlyUrl.Href("~/Post/", Lista.PostTitle, Lista.PostID)%>">
                    <img src="<%=Lista.PostImage.Substring(1)%>" data-thumb="<%=Lista.PostImage%>" alt="" title="#htmlcaption<%=i%>"
                        <%= IIf(DeveloperJI.tools.IsPair(i), strTransiscion, "")%> /></a>
                <% If i = 7 Then Exit For
                Next
                %>
            </div>
            <%i = 0
                For Each Lista In myList
                    i = i + 1
                    %>
            <div id="htmlcaption<%Response.Write(i)%>" class="nivo-html-caption">
                <div class="slaidCat">
                    <%Response.Write(Lista.CategoriaPrincipal)%>
                </div>
                <div class="slaidDate">
                    <%Response.Write(Lista.PostDateModificado)%>
                </div>
                <div class="slideDescipcion">
                    <div class="titulo">
                        <a style="border-style:none;" href="<%Response.Write(FriendlyUrl.Href("~/Post/", Lista.PostTitle, Lista.PostID))%>">
                        <% Response.Write(Lista.PostTitle)%></a>
                    </div>
                <% Response.Write(Left(DeveloperJI.tools.getSinHTML(Lista.PostContent), 150))%>
                </div>
            </div>
            <% Session("ultimo") = Lista.PostID
                If i = 7 Then Exit For
                
                Next
                %>
            <div class="divisor"></div>
        </div>
    </div>
    <script src="Slide/scripts/jquery-1.9.0.min.js"></script>
    <script src="Slide/jquery.nivo.slider.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
    <div>
        <asp:ListView ID="ListView1" runat="server" GroupItemCount="2" DataSourceID="LinqPost" GroupPlaceholderID="groupPlaceholder"  ItemPlaceholderID="itemPlaceholder">
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
                        <img alt="<%# Eval("PostTitle")%>" src="<%# Eval("PostImage").ToString.Substring(1)%>" /></a>
                        <div class="imgPostVA" style="background-image: url('App_Themes/Principal/Images/<%# Eval("Clave")%>.png');">

                        </div>
                        <div class="contadorIMG">
                            <a href="<%# FriendlyUrl.Href("~/Post/", Eval("PostTitle"), Eval("PostID"))%>">
                            <%# Eval("PostCommentCount")%></a>
                        </div>
                    </div>
                    <div class="BlogDescripcion">
                    <h3>
                         <a href="<%# FriendlyUrl.Href("~/Post/", Eval("PostTitle"), Eval("PostID"))%>">
                        <%# Eval("PostTitle")%>
                             </a>
                    </h3>
                    <span><%# Left(DeveloperJI.tools.getSinHTML(Eval("PostContent")), 150)%></span>
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
        <asp:LinqDataSource ID="LinqPost" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" OrderBy="PostDateModificado desc" TableName="JIPosts" Where="PostStatus == @PostStatus">
            <WhereParameters>
                <asp:Parameter DefaultValue="True" Name="PostStatus" Type="Boolean" />
            </WhereParameters>
        </asp:LinqDataSource>
    </div>
</asp:Content>
