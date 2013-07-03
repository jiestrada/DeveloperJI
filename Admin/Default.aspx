<%@ Page Title="" Language="vb" AutoEventWireup="false" EnableEventValidation="false" MasterPageFile="~/Admin/admin.Master" CodeBehind="Default.aspx.vb" Inherits="DeveloperJI._Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/general.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard">
        <img src="images/dash.png" />
        <h1>Dashboard</h1>
    </div>
    <div class="contAdm">
        <div class="contenedorL">
            <h6 class="comentariosR">Comentarios recientes</h6>
            <div class="contentAp">
                <asp:Panel ID="pnlMensaje" Visible="false" CssClass="pnlMensaje" runat="server">
                    <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
                </asp:Panel>
                <asp:ListView ID="listComentarios" runat="server" DataSourceID="LinqDataSource1" DataKeyNames="CommentID">
                    <LayoutTemplate>
                        <table cellpadding="2" runat="server" id="tblEmployees"
                            style="width: 460px">
                            <tr runat="server" id="itemPlaceholder">
                            </tr>
                        </table>
                        <asp:DataPager runat="server" ID="DataPager" PageSize="5">
                            <Fields>
                                <asp:NumericPagerField
                                    ButtonCount="5"
                                    PreviousPageText="<--"
                                    NextPageText="-->" />
                            </Fields>
                        </asp:DataPager>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <h3><%# Eval("Author")%> <%# Eval("AuthorEmail")%></h3>
                        <%# Eval("CommentContent")%><br />
                        <asp:TextBox ID="txtResponder" runat="server" TextMode="MultiLine" Width="80%" Height="50px"></asp:TextBox><br />
                        <asp:Button ID="btnComentarios" CssClass="buttonEnviar" runat="server" OnClick="Comentarios" Text="Responder" CommandName="addComentario" CommandArgument='<%# Eval("CommentID") & "|" & Eval("AuthorEmail") & "|" & Eval("PostID")%>' />
                    </ItemTemplate>
                    <ItemSeparatorTemplate>
                        <hr />
                    </ItemSeparatorTemplate>
                    <EmptyItemTemplate>
                        <h3>No hay comentarios</h3>
                    </EmptyItemTemplate>
                </asp:ListView>

                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="JI.DBClassDataContext" EntityTypeName="" TableName="JIComments" OrderBy="CommentDate desc">
                </asp:LinqDataSource>

            </div>

        </div>
        <div class="contenedorR">
            <h6 class="comentariosR">Post más comentados</h6>
            <div class="contentAp">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="LinqDataSource2" Width="100%" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="PostID" HeaderText="#" ReadOnly="True" SortExpression="PostID" />
                        <asp:BoundField DataField="PostTitle" HeaderText="Titulo" ReadOnly="True" SortExpression="PostTitle" />
                        <asp:BoundField DataField="PostDateModificado" HeaderText="Fecha" ReadOnly="True" SortExpression="PostDateModificado" />
                        <asp:BoundField DataField="PostCommentCount" HeaderText="Coment." ReadOnly="True" SortExpression="PostCommentCount" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle Font-Bold="False" CssClass="hederGrid" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#333333" CssClass="itemGrid" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" OrderBy="PostCommentCount desc" Select="new (PostID, PostDateModificado, PostTitle, PostCommentCount)" TableName="JIPosts" Where="PostStatus == true">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="true" Name="PostStatus" Type="Boolean" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </div>
        </div>
        <div class="separadorGeneral"></div>
        <asp:HiddenField ID="hidUp" runat="server" />
    </div>
</asp:Content>
