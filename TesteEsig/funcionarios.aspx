<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="funcionarios.aspx.cs" Inherits="TesteEsig.funcionarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Lista de Funcionários</h3>

        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#B5C7DE" />
        <DynamicSelectedStyle BackColor="#507CD1" />
        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#507CD1" />
    </asp:Menu>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                </td>
                <td>
                    <asp:Label ID="cidadeLabel" runat="server" Text='<%# Eval("cidade") %>' />
                </td>
                <td>
                    <asp:Label ID="cepLabel" runat="server" Text='<%# Eval("cep") %>' />
                </td>
                <td>
                    <asp:Label ID="enderecoLabel" runat="server" Text='<%# Eval("endereco") %>' />
                </td>
                <td>
                    <asp:Label ID="paisLabel" runat="server" Text='<%# Eval("pais") %>' />
                </td>
                <td>
                    <asp:Label ID="usuarioLabel" runat="server" Text='<%# Eval("usuario") %>' />
                </td>
                <td>
                    <asp:Label ID="telefoneLabel" runat="server" Text='<%# Eval("telefone") %>' />
                </td>
                <td>
                    <asp:Label ID="data_nascimentoLabel" runat="server" Text='<%# Eval("data_nascimento") %>' />
                </td>
                <td>
                    <asp:Label ID="cargo_idLabel" runat="server" Text='<%# Eval("cargo_id") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #008A8C; color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                </td>
                <td>
                    <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cidadeTextBox" runat="server" Text='<%# Bind("cidade") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cepTextBox" runat="server" Text='<%# Bind("cep") %>' />
                </td>
                <td>
                    <asp:TextBox ID="enderecoTextBox" runat="server" Text='<%# Bind("endereco") %>' />
                </td>
                <td>
                    <asp:TextBox ID="paisTextBox" runat="server" Text='<%# Bind("pais") %>' />
                </td>
                <td>
                    <asp:TextBox ID="usuarioTextBox" runat="server" Text='<%# Bind("usuario") %>' />
                </td>
                <td>
                    <asp:TextBox ID="telefoneTextBox" runat="server" Text='<%# Bind("telefone") %>' />
                </td>
                <td>
                    <asp:TextBox ID="data_nascimentoTextBox" runat="server" Text='<%# Bind("data_nascimento") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cargo_idTextBox" runat="server" Text='<%# Bind("cargo_id") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>Nenhum dado foi retornado.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
                </td>
                <td>
                    <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cidadeTextBox" runat="server" Text='<%# Bind("cidade") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cepTextBox" runat="server" Text='<%# Bind("cep") %>' />
                </td>
                <td>
                    <asp:TextBox ID="enderecoTextBox" runat="server" Text='<%# Bind("endereco") %>' />
                </td>
                <td>
                    <asp:TextBox ID="paisTextBox" runat="server" Text='<%# Bind("pais") %>' />
                </td>
                <td>
                    <asp:TextBox ID="usuarioTextBox" runat="server" Text='<%# Bind("usuario") %>' />
                </td>
                <td>
                    <asp:TextBox ID="telefoneTextBox" runat="server" Text='<%# Bind("telefone") %>' />
                </td>
                <td>
                    <asp:TextBox ID="data_nascimentoTextBox" runat="server" Text='<%# Bind("data_nascimento") %>' />
                </td>
                <td>
                    <asp:TextBox ID="cargo_idTextBox" runat="server" Text='<%# Bind("cargo_id") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #DCDCDC; color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                </td>
                <td>
                    <asp:Label ID="cidadeLabel" runat="server" Text='<%# Eval("cidade") %>' />
                </td>
                <td>
                    <asp:Label ID="cepLabel" runat="server" Text='<%# Eval("cep") %>' />
                </td>
                <td>
                    <asp:Label ID="enderecoLabel" runat="server" Text='<%# Eval("endereco") %>' />
                </td>
                <td>
                    <asp:Label ID="paisLabel" runat="server" Text='<%# Eval("pais") %>' />
                </td>
                <td>
                    <asp:Label ID="usuarioLabel" runat="server" Text='<%# Eval("usuario") %>' />
                </td>
                <td>
                    <asp:Label ID="telefoneLabel" runat="server" Text='<%# Eval("telefone") %>' />
                </td>
                <td>
                    <asp:Label ID="data_nascimentoLabel" runat="server" Text='<%# Eval("data_nascimento") %>' />
                </td>
                <td>
                    <asp:Label ID="cargo_idLabel" runat="server" Text='<%# Eval("cargo_id") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                <th runat="server"></th>
                                <th runat="server">nome</th>
                                <th runat="server">cidade</th>
                                <th runat="server">cep</th>
                                <th runat="server">endereco</th>
                                <th runat="server">pais</th>
                                <th runat="server">usuario</th>
                                <th runat="server">telefone</th>
                                <th runat="server">data_nascimento</th>
                                <th runat="server">cargo_id</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                </td>
                <td>
                    <asp:Label ID="cidadeLabel" runat="server" Text='<%# Eval("cidade") %>' />
                </td>
                <td>
                    <asp:Label ID="cepLabel" runat="server" Text='<%# Eval("cep") %>' />
                </td>
                <td>
                    <asp:Label ID="enderecoLabel" runat="server" Text='<%# Eval("endereco") %>' />
                </td>
                <td>
                    <asp:Label ID="paisLabel" runat="server" Text='<%# Eval("pais") %>' />
                </td>
                <td>
                    <asp:Label ID="usuarioLabel" runat="server" Text='<%# Eval("usuario") %>' />
                </td>
                <td>
                    <asp:Label ID="telefoneLabel" runat="server" Text='<%# Eval("telefone") %>' />
                </td>
                <td>
                    <asp:Label ID="data_nascimentoLabel" runat="server" Text='<%# Eval("data_nascimento") %>' />
                </td>
                <td>
                    <asp:Label ID="cargo_idLabel" runat="server" Text='<%# Eval("cargo_id") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Pessoa] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Pessoa] ([Id], [nome], [cidade], [cep], [endereco], [pais], [usuario], [telefone], [data_nascimento], [cargo_id]) VALUES (@Id, @nome, @cidade, @cep, @endereco, @pais, @usuario, @telefone, @data_nascimento, @cargo_id)" SelectCommand="SELECT [Id], [nome], [cidade], [cep], [endereco], [pais], [usuario], [telefone], [data_nascimento], [cargo_id] FROM [Pessoa]" UpdateCommand="UPDATE [Pessoa] SET [nome] = @nome, [cidade] = @cidade, [cep] = @cep, [endereco] = @endereco, [pais] = @pais, [usuario] = @usuario, [telefone] = @telefone, [data_nascimento] = @data_nascimento, [cargo_id] = @cargo_id WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="cidade" Type="String" />
            <asp:Parameter Name="cep" Type="String" />
            <asp:Parameter Name="endereco" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="usuario" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
            <asp:Parameter DbType="Date" Name="data_nascimento" />
            <asp:Parameter Name="cargo_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="cidade" Type="String" />
            <asp:Parameter Name="cep" Type="String" />
            <asp:Parameter Name="endereco" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="usuario" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
            <asp:Parameter DbType="Date" Name="data_nascimento" />
            <asp:Parameter Name="cargo_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/index.aspx">Voltar</asp:LinkButton>
</asp:Content>
