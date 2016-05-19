﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar Usuario.aspx.cs" Inherits="SCE_Project.Mantenimiento_usuario.Modificar_Usuario" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
     <header class="headercr">
        <h2>Modificar usuarios</h2></header>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="etIdUsu" runat="server" Text="Id usuario a modificar"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txIdUsu" runat="server" Width="200px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="btBuscar" runat="server" Text="Buscar" OnClick="Button1_Click" ValidationGroup="idVal" />
         <asp:RequiredFieldValidator ID="rfvIdUsu" runat="server" ControlToValidate="txIdUsu" Display="Dynamic" ErrorMessage="ID vacio" ValidationGroup="idVal"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revIdUsu" runat="server" ControlToValidate="txIdUsu" Display="Dynamic" ErrorMessage="El ID es numerico" ValidationExpression="^\d+$" ValidationGroup="idVal"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="etNom" runat="server" Text="Nombre"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txNom" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNom" runat="server" ControlToValidate="txNom" Display="Dynamic" ErrorMessage="Nombre vacio"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revNom" runat="server" ControlToValidate="txNom" Display="Dynamic" ErrorMessage="Solo caracteres" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="etTipoUsu" runat="server" Text="Tipo de usuarios"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlTipoUsu" runat="server" Width="200px">
            <asp:ListItem>Tipo de usuario</asp:ListItem>
            <asp:ListItem Value="1">Supervisor</asp:ListItem>
            <asp:ListItem Value="2">Chofer</asp:ListItem>
            
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvTipoUsu" runat="server" ControlToValidate="ddlTipoUsu" Display="Dynamic" ErrorMessage="Selecione un tipo de usuario" InitialValue="Tipo de usuario"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="etContra" runat="server" Text="Contraseña"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txContra" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvContra" runat="server" ControlToValidate="txContra" Display="Dynamic" ErrorMessage="pass vacio"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revContra" runat="server" ControlToValidate="txContra" Display="Dynamic" ErrorMessage="minimo 8 caracteres" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="btModificar" runat="server" Text="Modificar" OnClick="Button2_Click" style="height: 26px" />
        <asp:Button ID="btCancelar" runat="server" CausesValidation="False" OnClick="Button3_Click" Text="Cancelar" />
        <br />
    
    </div>
    </form>
</body>
</html>
