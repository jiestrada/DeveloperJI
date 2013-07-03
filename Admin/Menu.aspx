<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/admin.Master" CodeBehind="Menu.aspx.vb" Inherits="DeveloperJI.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard">
        <img src="images/menuB.png" />
        <h1>Administrar el menú</h1>

    </div>
    <div class="contAdm" style="font-family: TitilliumText22L, sans-serif">
        <div class="contenedorL" >
             <h6>Menú</h6>
            <div class="contentAp" >
                <asp:Panel ID="panelMensaje" CssClass="alert" runat="server">
                            <asp:Label ID="lblMensaje" runat="server" Text="" Style="color: #FFFFFF; font-weight: 700"></asp:Label>
                        </asp:Panel>
               <p> <label>Título del Menú <asp:RequiredFieldValidator ValidationGroup="Menu" ID="RequiredFieldValidator1" 
                    runat="server" ErrorMessage="Requerido" Text="*" ControlToValidate="txtMenu" style="color: #CC0000"></asp:RequiredFieldValidator></label><br />
                <asp:TextBox ID="txtMenu" CssClass="textBoxOpc" runat="server" Width="320px" placeholder="Nombre del menú"></asp:TextBox>
                </p>
                <p>   <label>
                
                Selecciona si es una página o un blog el menú</label><br />
                <asp:DropDownList ID="drpTipo" runat="server"  CssClass="textBoxOpc" Width="250px" DataSourceID="LinqDataSource1" DataTextField="Clave" DataValueField="Etiqueta" ></asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" Select="new (Clave, Etiqueta)" TableName="JICatalogoGenerals" Where="Tipo == @Tipo">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="2" Name="Tipo" Type="Int32" />
                    </WhereParameters>
                </asp:LinqDataSource></p>
                <p><label>
                Imagen</label><br />
                <asp:FileUpload ID="FileUploadControl" runat="server"  />
              </p> <p> <label>
                  
                Es página de contacto?</label><br />
                <asp:RadioButtonList ID="rdCOntacto" runat="server" RepeatDirection="Horizontal" Width="120px">
                    <asp:ListItem Selected="True" Value="False">No</asp:ListItem>
                    <asp:ListItem Value="True">Si</asp:ListItem>                    
                </asp:RadioButtonList></p>
                            <p>&nbsp;</p>
                <p><asp:Button ID="btnAddMenu" CssClass="buttonEnviar" runat="server" ValidationGroup="Menu" Text="Agregar Menú" /></p>
                <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#CC9966"  DataKeyNames="MenuID"
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="LinqDataSource2" Width="95%" >
                <Columns>                    
                    <asp:BoundField DataField="MenuID" HeaderText="ID" ReadOnly="True" SortExpression="MenuID" />                    
                    <asp:BoundField DataField="Name" HeaderText="Menú" ReadOnly="False" SortExpression="Name" />
                    <asp:BoundField DataField="Orden" HeaderText="Orden" ReadOnly="False" SortExpression="Orden" />
                    <asp:CheckBoxField DataField="Contacto" HeaderText="Pag.contacto" ReadOnly="False" SortExpression="Contacto" />
                    <asp:CheckBoxField DataField="MenuStatus" HeaderText="Status" ReadOnly="False" SortExpression="MenuStatus" />
                    <asp:CommandField ShowEditButton ="true" />
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
            
                <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" TableName="JIMenu" EnableUpdate="True" >
                    <UpdateParameters>
                        <asp:Parameter Name="Name" DefaultValue="Test" />
                        <asp:Parameter Name="Orden" DefaultValue="1" />
                        <asp:Parameter Name="Contacto" DefaultValue="False" />
                        <asp:Parameter Name="MenuStatus" DefaultValue="True" />
                    </UpdateParameters>
                </asp:LinqDataSource>
            
            </div>
        </div>
         <div class="contenedorR">
             <h6>Categorías</h6>

            <div class="contentAp">
                <asp:Panel ID="panelMensaje2" CssClass="alert" runat="server">
                            <asp:Label ID="lblMensaje2" runat="server" Text="" Style="color: #FFFFFF; font-weight: 700"></asp:Label>
                        </asp:Panel>
                <p><label> Categoría 
                    <asp:RequiredFieldValidator ValidationGroup="Categoria" ID="RequiredFieldValidator2" 
                    runat="server" ErrorMessage="Requerido" Text="*" ControlToValidate="txtName" style="color: #CC0000"></asp:RequiredFieldValidator></label><br />
                <asp:TextBox ID="txtName" CssClass="textBoxOpc" runat="server" Width="320px" placeholder="Nombre de la categoría"></asp:TextBox></p>
               <p> <label> Descripción 
                    <asp:RequiredFieldValidator ValidationGroup="Categoria" ID="RequiredFieldValidator3" 
                    runat="server" ErrorMessage="Requerido" Text="*" ControlToValidate="txtDescripcion" style="color: #CC0000"></asp:RequiredFieldValidator></label><br />
                <asp:TextBox ID="txtDescripcion" CssClass="textBoxOpc" runat="server" Width="320px" placeholder="Descripción de la categoría" Height="50px" TextMode="MultiLine"></asp:TextBox></p>
                <p> <label> Descripción</label><br />
                    <asp:DropDownList ID="drpMenu" runat="server" DataSourceID="LinqDataSource3"  CssClass="textBoxOpc" DataTextField="Name" DataValueField="MenuID"></asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" Select="new (MenuID, Name)" TableName="JIMenu" Where="MenuStatus == @MenuStatus">
                        <WhereParameters>
                            <asp:Parameter DefaultValue="true" Name="MenuStatus" Type="Boolean" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                    </p>
                <p> <asp:Button ID="btnAddCat" CssClass="buttonEnviar" runat="server" ValidationGroup="Categoria" Text="Agregar Categoría" />
                    </p>
                <p> &nbsp;</p>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BorderColor="#CC9966" DataKeyNames="CategoriaID"
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="LinqDataSource4" Width="95%" >
                <Columns>                    
                    <asp:BoundField DataField="CategoriaID" HeaderText="ID" ReadOnly="True" SortExpression="CategoriaID" />                    
                    <asp:BoundField DataField="Name" HeaderText="Categoría" ReadOnly="False" SortExpression="Name" />
                    <asp:CheckBoxField DataField="Visible" HeaderText="Visible" ReadOnly="False" SortExpression="Visible" />
                    <asp:CommandField ShowEditButton ="true" />
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
            
                <asp:LinqDataSource ID="LinqDataSource4" runat="server" ContextTypeName="DeveloperJI.DBClassDataContext" EntityTypeName="" TableName="JICategorias" EnableUpdate="True">
                    <UpdateParameters>
                        <asp:Parameter Name="Name" DefaultValue="Test" />
                        <asp:Parameter Name="Visible" DefaultValue="True" />
                    </UpdateParameters>
                </asp:LinqDataSource>
                </div>
             </div>

        <div class="separadorGeneral"></div>
    </div>
</asp:Content>
