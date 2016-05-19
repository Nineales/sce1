﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="generarBit.aspx.cs" Inherits="SCE_Project.Mantenimienro_Bitacora.registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrar Bitácora</title>
    <link rel="stylesheet" href="../Styles/StyleSheet1.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="principal">

    
    <fieldset id="camion">
        <legend>Datos Papeleo</legend>
    <asp:Label ID="etNom" runat="server" Text="Nombre: "></asp:Label>
    <asp:DropDownList class="tx" ID="ddlNom" runat="server">
        <asp:ListItem Value="0">Selecciona tu nombre</asp:ListItem>
            </asp:DropDownList> 
    <br /><br />
    <asp:Label ID="etFecha" runat="server" Text="Fecha: "></asp:Label>
    <asp:TextBox class="tx" ID="txFecha" runat="server" type="date" required="required"></asp:TextBox>
    <br /><br /><br />
    <asp:Label ID="etNumRem" runat="server" Text="Número de remisión: "></asp:Label>
    <asp:TextBox class="tx" ID="txNumRem"  type="text" requiredField="required" placeholder="" runat="server" ValidateRequestMode="Inherit" ></asp:TextBox>
    <br /><br /><br />
    <asp:Label ID="etRev" runat="server" Text="Revisión papeleo:"></asp:Label>
            <asp:DropDownList ID="ddlRev" runat="server">
                <asp:ListItem>Mañana</asp:ListItem>
                <asp:ListItem>Tarde</asp:ListItem>
            </asp:DropDownList>
    </fieldset>
    

        <fieldset id="camion2">
            <legend>Datos camión</legend>
        <p>
        <asp:Label ID="etNumRuta" runat="server" Text="Número de ruta: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumRuta"  type="text" required="required" placeholder="" runat="server" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox>
        <asp:Label class="lb" ID="etNumCam" runat="server" Text="Número de camión: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumCam" runat="server" type="text" placeholder="" required="required" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etHS" runat="server" Text="Hora de salida: "></asp:Label>
        <asp:TextBox class="tx" ID="txHS" runat="server" type="time" required="required"></asp:TextBox>
        <asp:Label class="lb" ID="etHR" runat="server" Text="Hora de regreso: "></asp:Label>
        <asp:TextBox class="tx" ID="txHR" runat="server" type="time" required="required" Width="102px"></asp:TextBox>
        <br /><br />
        <asp:Label  ID="etKmInic" runat="server" Text="Kilometraje inicial: "></asp:Label>
        <asp:TextBox class="tx" ID="txKmInic"  type="text" required="required" placeholder="" runat="server" maxlength="30" pattern="[\d\ ]{0,12}" Height="22px"></asp:TextBox><asp:RegularExpressionValidator ID="revkmInic" runat="server" ControlToValidate="txKmInic" ValidationExpression="^\d+$" ErrorMessage="*" Display="Dynamic"></asp:RegularExpressionValidator>
        <asp:Label class="lb" ID="etKmFin" runat="server" Text="Kilometraje final: "></asp:Label>
        <asp:TextBox class="tx" ID="txKmFin"  type="text" required="required" placeholder="" runat="server" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox>
        <br /><br />
        <asp:Label class="lbCaja" ID="etNumCaja" runat="server" Text="Número de caja: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumCaja" runat="server" type="text" placeholder="" required="required" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox>
        <asp:Label class="lb" ID="etCap" runat="server" Text="Capacidad del camión:"></asp:Label>
            <asp:DropDownList ID="ddlCap" runat="server">
                <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                <asp:ListItem>10%</asp:ListItem>
                <asp:ListItem>20%</asp:ListItem>
                <asp:ListItem>30%</asp:ListItem>
                <asp:ListItem>40%</asp:ListItem>
                <asp:ListItem>50%</asp:ListItem>
                <asp:ListItem>60%</asp:ListItem>
                <asp:ListItem>70%</asp:ListItem>
                <asp:ListItem>80%</asp:ListItem>
                <asp:ListItem>90%</asp:ListItem>
                <asp:ListItem>100%</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvDdlCap" runat="server" ErrorMessage="*" ControlToValidate="ddlCap" Display="Dynamic" InitialValue="0" BorderStyle="None" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
        <asp:Label Class="etComRuta" ID="etComRuta" runat="server" Text="Comentario sobre ruta: "></asp:Label><br />
            <asp:TextBox ID="txComRuta" type="text" runat="server" TextMode="MultiLine"></asp:TextBox>
        </p>
        </fieldset>
        

        
            <fieldset id="camion3">
                <legend>Datos del cliente</legend>
                <p>
                <asp:Label ID="etNomCli" runat="server" Text="Nombre del cliente: "></asp:Label>
                <asp:TextBox Class="tx" ID="txNomCli"  type="text" required="required" placeholder="" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Label ID="etHoraLlegada" runat="server" Text="Hora de llegada con el cliente: "></asp:Label>
                <asp:TextBox class="tx" ID="txHoraLlegada"  type="time" required="required" placeholder="" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Label ID="etHoraSal" runat="server" Text="Hora de salida con el cliente: "></asp:Label>
                <asp:TextBox ID="txHoraSal"  type="time" required="required" placeholder="" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Label ID="etTD" runat="server" Text="Tiempo en descargar: "></asp:Label>
                 <asp:TextBox ID="txTD"  type="text" required="required" placeholder="" maxlength="30" pattern="[\d\ ]{0,12}" runat="server" Width="200px"></asp:TextBox><asp:Label ID="etMin" runat="server" Text="Min."></asp:Label>
                <br /><br />
                <asp:Label class="etComCli" ID="etComCli" runat="server" Text="Comentario sobre cliente: "></asp:Label><br />
                <asp:TextBox ID="txComCli" type="text" runat="server" TextMode="MultiLine"></asp:TextBox>
                </p>
                <asp:Button ID="BtReg" runat="server" Text="Registrar Bitácora" OnClick="BtReg_Click"  />
            
                
                </fieldset>
            
       
        </div>
    </form>
</body>
</html>
