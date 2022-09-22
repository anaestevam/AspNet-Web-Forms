<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TesteEsig.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Menu runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" OnMenuItemClick="Unnamed1_MenuItemClick" Orientation="Horizontal" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#B5C7DE" />
        <DynamicSelectedStyle BackColor="#507CD1" />
        <Items>
            <asp:MenuItem NavigateUrl="~/funcionarios.aspx" Text="Funcionários" Value="Funcionários"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/cargo.aspx" Text="Cargos" Value="Cargos"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/index.aspx" Text="Home" Value="Home"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#507CD1" />
    </asp:Menu>
    <asp:Image ID="Image1" runat="server" Height="214px" ImageUrl="~/images/iconepage.png" Width="215px" />
</asp:Content>
