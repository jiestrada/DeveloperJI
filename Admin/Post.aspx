<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/admin.Master" EnableEventValidation="false" CodeBehind="Post.aspx.vb" Inherits="DeveloperJI.Post1" %>

<%@ Register Assembly="DeveloperJI" TagPrefix="htm" Namespace="DeveloperJI.Editor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../Scripts/general.js"></script>
    <link href="tags/jquery.tagsinput.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.8.2.min.js"></script>
    <script src="tags/jquery.tagsinput.js"></script>
    <script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/jquery-ui.min.js'></script>
    <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/themes/start/jquery-ui.css" />
    <script src="ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
        function validarCampos() {
            //alert('Hola');
            var campo1 = document.getElementById("<%=txtTitulo.ClientID%>")
            var lista1 = document.getElementById("<%=listCat2.ClientID%>")
            var campo2 = document.getElementById("<%=textArea1.ClientID%>")
            var mensaje = document.getElementById("<%=panelMensaje.ClientID%>")
            var fecha =document.getElementById("<%=txtFecha.ClientId%>")
            var editorcontent = CKEDITOR.instances['<%=textArea1.ClientID%>'].getData().replace(/<[^>]*>/gi, '');

            if (campo1.value == '' || editorcontent == '' || lista1.length < 1 || fecha.value=='') {
                mensaje.style.backgroundColor = '#D90000'
                mensaje.style.padding = "8px";
                document.getElementById("<%=lblMensaje.ClientID%>").innerHTML = "Tiene que llenar todos los campos"
                document.getElementById("<%=btnAdd.ClientID%>").focus()
                return false
            } else {
                return true
            }

        }

        function onAddTag(tag) {
            alert("Added a tag: " + tag);
        }
        function onRemoveTag(tag) {
            alert("Removed a tag: " + tag);
        }

        function onChangeTag(input, tag) {
            alert("Changed a tag: " + tag);
        }

        $(function () {

            $('#<%=txtTags.clientID%>').tagsInput({ width: '550px' });

            // Uncomment this line to see the callback functions in action
            //			$('input.tags').tagsInput({onAddTag:onAddTag,onRemoveTag:onRemoveTag,onChange: onChangeTag});		

            // Uncomment this line to see an input with no interface for adding new tags.
            //			$('input.tags').tagsInput({interactive:false});
        });


    </script>
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<%--<script src="http://code.jquery.com/jquery-1.9.1.js"></script>--%>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
     <script>
         $(function () {
             $("#<%=txtFecha.ClientID%>").datepicker({ dateFormat: 'dd-mm-yy' });
         });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard">
        <img src="images/post.png" />
        <h1>Post</h1>
    </div>
    <div class="contAdm">
        <div class="dibBackForm">
            <p class="tituloTabl">
                <asp:Button ID="btnHistorial" CssClass="btTab" runat="server" Text="Administrar Posts" />
                <asp:Button ID="btnAdd" CssClass="btTab" runat="server" Text="Agregar Post" />
                <asp:Button ID="btnEliminados" CssClass="btTab" runat="server" Text="Posts Eliminados" />
            </p>
            <div class="divisor"></div>
            <asp:MultiView ID="mltViewPost" runat="server">
                <asp:View ID="vHistorial" runat="server">
                    <asp:GridView ID="gridPost" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" CssClass="grid" AllowPaging="True" PageSize="20">
                        <Columns>
                            <asp:BoundField DataField="PostID" HeaderText="#" ItemStyle-Width="40px" ReadOnly="True" SortExpression="PostID">
                                <ItemStyle Width="40px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PostTitle" HeaderText="Titulo" ReadOnly="False" SortExpression="PostTitle" />
                            <asp:BoundField DataField="PostDateModificado" HeaderText="Fecha" ReadOnly="False" SortExpression="PostDateModificado" ItemStyle-Width="100px">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PostCommentCount" HeaderText="Coment." ReadOnly="False" SortExpression="PostCommentCount" ItemStyle-Width="50px">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>

                            <asp:TemplateField ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Button ID="AddButton" runat="server" OnClick="EliminarPost" CssClass="buttonEnviarNO"
                                        CommandName="EliminarPost"
                                        CommandArgument="<%# CType(Container,GridViewRow).RowIndex %>"
                                        Text="Eliminar" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle Font-Bold="False" CssClass="hederGrid" />
                        <PagerStyle CssClass="GridPager" />
                        <RowStyle ForeColor="#333333" CssClass="itemGrid" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        <EmptyDataTemplate>
                            <h3>No hay post cargados</h3>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" OrderBy="PostDateModificado desc" Select="new (PostID, PostDateModificado, PostTitle, PostCommentCount, PostStatus)" TableName="JIPosts" Where="PostStatus == @PostStatus">
                        <WhereParameters>
                            <asp:Parameter DefaultValue="True" Name="PostStatus" Type="Boolean" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                </asp:View>
                <asp:View ID="vAddPost" runat="server">
                    <asp:HiddenField ID="hidPost" runat="server" />
                    <div class="camposTexto formCaptura">
                        <asp:Panel ID="panelMensaje" CssClass="alert" runat="server">
                            <asp:Label ID="lblMensaje" runat="server" Text="" Style="color: #FFFFFF; font-weight: 700"></asp:Label>
                        </asp:Panel>
                        <p>
                            <label>Título:</label>
                            <br />
                            <asp:TextBox ID="txtTitulo" runat="server" Width="500px"></asp:TextBox>
                            <br />
                        </p>
                        <p>
                            <label>Fecha:</label>
                            <br />
                            <asp:TextBox ID="txtFecha" runat="server" Width="150px"></asp:TextBox>
                        </p>
                        <p>
                            <label>Tipo de entrada</label><br />
                            <asp:DropDownList ID="drpTipo" runat="server" DataSourceID="LinqDataSource3" DataTextField="Etiqueta" Width="250px" DataValueField="Clave"></asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" Select="new (Clave, Etiqueta)" TableName="JICatalogoGenerals" Where="Tipo == @Tipo">
                                <WhereParameters>
                                    <asp:Parameter DefaultValue="1" Name="Tipo" Type="Int32" />
                                </WhereParameters>
                            </asp:LinqDataSource>
                            <br />
                        </p>

                        <p>
                            <label>Categorías </label>
                            <br />
                            <table style="width: 500px;">
                                <tr>
                                    <td>
                                        <asp:ListBox ID="listCat1" runat="server" DataSourceID="LinqDataSource2" DataTextField="Name" DataValueField="CategoriaID" Height="166px" Width="258px"></asp:ListBox>
                                        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" Select="new (CategoriaID, Name)" TableName="JICategorias">
                                        </asp:LinqDataSource>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnSeleccionar" CssClass="buttonEnviar" runat="server" Text=">" Width="30px" Font-Bold="True" />
                                        <asp:Button ID="btnQuitar" CssClass="buttonEnviar" runat="server" Text="<" Width="30px" Font-Bold="True" />
                                    </td>
                                    <td>
                                        <asp:ListBox ID="listCat2" runat="server" Height="166px" Width="258px"></asp:ListBox>
                                    </td>
                                </tr>

                            </table>

                            <br />

                        </p>
                        <p>
                            <label>Tags (separados por comas ",")</label><br />
                            <asp:TextBox ID="txtTags" runat="server" TextMode="MultiLine" Height="47px" Width="453px"></asp:TextBox>
                            <br />
                        </p>
                        <p>
                            <label>Contenido:</label><br />
                        </p>
                        <htm:Ckeditor ID="textArea1" runat="server" BaseHref="~/Ckeditor/" Height="400" />
                        <p style="margin-top: 20px;">
                            <asp:Button ID="btnSubmit" OnClientClick="return validarCampos();" runat="server" Text="Publicar" Width="150px" />
                            <asp:Button ID="btnModificar" OnClientClick="return validarCampos();" runat="server" Visible="false" Text="Modificar" Width="150px" />

                        </p>
                    </div>
                    <div class="divisor"></div>
                </asp:View>
                <asp:View ID="View1" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource4" CssClass="grid" AllowPaging="True" PageSize="20">
                        <Columns>
                            <asp:BoundField DataField="PostID" HeaderText="#" ItemStyle-Width="40px" ReadOnly="True" SortExpression="PostID">
                                <ItemStyle Width="40px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PostTitle" HeaderText="Titulo" ReadOnly="False" SortExpression="PostTitle" />
                            <asp:BoundField DataField="PostDateModificado" HeaderText="Fecha" ReadOnly="False" SortExpression="PostDateModificado" ItemStyle-Width="100px">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PostCommentCount" HeaderText="Coment." ReadOnly="False" SortExpression="PostCommentCount" ItemStyle-Width="50px">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>

                            <asp:TemplateField ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Button ID="AddButton" runat="server" CssClass="buttonEnviarOK" OnClick="ActivarPost"
                                        CommandName="ActivarPost"
                                        CommandArgument="<%# CType(Container,GridViewRow).RowIndex %>"
                                        Text="Activar" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle Font-Bold="False" CssClass="hederGrid" />
                        <PagerStyle CssClass="GridPager" />
                        <RowStyle ForeColor="#333333" CssClass="itemGrid" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        <EmptyDataTemplate>
                            <h3>No hay post cargados</h3>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:LinqDataSource ID="LinqDataSource4" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" OrderBy="PostDateModificado desc" Select="new (PostID, PostDateModificado, PostTitle, PostCommentCount, PostStatus)" TableName="JIPosts" Where="PostStatus == @PostStatus">
                        <WhereParameters>
                            <asp:Parameter DefaultValue="False" Name="PostStatus" Type="Boolean" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
    <link href="../dp.SyntaxHighlighter/Styles/SyntaxHighlighter.css" rel="stylesheet" />
    <script src="../dp.SyntaxHighlighter/Scripts/shCore.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushCpp.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushCSharp.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushCss.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushDelphi.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushJava.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushJScript.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushPhp.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushPython.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushRuby.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushSql.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushVb.js"></script>
    <script src="../dp.SyntaxHighlighter/Scripts/shBrushXml.js"></script>
    <script type="text/javascript">
        dp.SyntaxHighlighter.ClipboardSwf = '../dp.SyntaxHighlighter/Scripts/clipboard.swf';
        dp.SyntaxHighlighter.HighlightAll()
        //dp.SyntaxHighlighter.Brushes.Vb() 
</script>
</asp:Content>
