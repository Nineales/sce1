﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modBit.aspx.cs" Inherits="SCE_Project.Mantenimienro_Bitacora.modBit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
    
    <asp:Label ID="etNom" runat="server" Text="Nombre del chofer: "></asp:Label>
        <asp:DropDownList ID="ddlNom" runat="server">
            <asp:ListItem Value="0">Todos los choferes</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="etFechaInic" runat="server" Text="Fecha inicial: "></asp:Label>
        <asp:TextBox ID="txFechaInic" runat="server" TextMode="Date"  required="required"></asp:TextBox>
        <asp:Label ID="etFechaFin" runat="server" Text="Fecha final: "></asp:Label>
        <asp:TextBox ID="txFechaFin" runat="server" TextMode="Date" required="required" ValidateRequestMode="Enabled"></asp:TextBox>
        <asp:Button ID="btBuscar" runat="server" Text="Buscar Bitácora" OnClick="btBuscar_Click" />
    </div>

        <div id="GridView">
            <asp:Panel ID="Panel1" runat="server">
             <asp:GridView ID="gdvBit" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gdv1_SelectedIndexChanged1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="idBitacoraid" HeaderText="ID Bitacora" SortExpression="idBitacoraid" />
                     <asp:BoundField DataField="nomUsu" HeaderText="Nombre" SortExpression="nomUsu" />
                     <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
                     <asp:BoundField DataField="noRuta" HeaderText="Numero de ruta" SortExpression="noRuta" />
                     <asp:BoundField DataField="noCam" HeaderText="Numero de camion" SortExpression="noCam" />
                     <asp:CommandField ShowSelectButton="True" />
                 </Columns>
                 <FooterStyle BackColor="#CCCC99" />
                 <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                 <RowStyle BackColor="#F7F7DE" />
                 <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#FBFBF2" />
                 <SortedAscendingHeaderStyle BackColor="#848384" />
                 <SortedDescendingCellStyle BackColor="#EAEAD3" />
                 <SortedDescendingHeaderStyle BackColor="#575357" />
             </asp:GridView>
         </asp:Panel>
            </div>
        <asp:Button ID="btConsultar" runat="server" OnClick="btConsultar_Click" Text="Consultar" />

   <div id="camion">
        <asp:Label ID="etFechaCon" runat="server" Text="Fecha:"></asp:Label>
        <asp:TextBox Class="tx" ID="txFechaCon" type="date"  required="required" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etCapCon" runat="server" Text="Capacidad del camión"></asp:Label>
        <asp:TextBox class="tx" ID="txCapCon" required="required" tittle="Inserta Solo números" maxlength="30" pattern="[\d\ ]{0,12}" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etRevPap" runat="server" Text="Revisión papeleo"></asp:Label>
        <asp:DropDownList ID="DdlHora" runat="server">
            <asp:ListItem>Seleccionar</asp:ListItem>
            <asp:ListItem>Mañana</asp:ListItem>
            <asp:ListItem>Tarde</asp:ListItem>
            </asp:DropDownList>
        <br /><br />
            </div>

        <div id="camion2">
        <asp:Label ID="etNumRuta" runat="server" Text="Número de ruta: "></asp:Label>
        <asp:TextBox class="tx" type="text" required="required" ID="txNumRuta" tittle="Inserta Solo números" maxlength="30" pattern="[\d\ ]{0,12}" runat="server"></asp:TextBox>
        <asp:Label class="lb" ID="etNumCam" runat="server" Text="Número de camión: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumCam" placeholder="2313153" tittle="Inserta Solo números" maxlength="30" pattern="[\d\ ]{0,12}" required="required" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etHS" runat="server" Text="Hora de salida: "></asp:Label>
        <asp:TextBox class="tx" ID="txHS" required="required" type="time" runat="server"></asp:TextBox>
        <asp:Label class="lbCaja" ID="etNumCaja" runat="server" Text="Número de caja: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumCaja" runat="server" type="text" placeholder="231356-C" required="required" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etHR" runat="server" Text="Hora de regreso: "></asp:Label>
        <asp:TextBox class="tx" ID="txHR" runat="server" type="time" required="required"></asp:TextBox>
        <asp:Label class="lb" ID="etKmInic" runat="server" Text="Kilometraje inicial: "></asp:Label>
        <asp:TextBox class="tx" ID="txKmInic" runat="server" required="required" tittle="Inserta Solo números" maxlength="30" pattern="[\d\ ]{0,12}" type="number"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etKmFin" runat="server" Text="Kilometraje final: "></asp:Label>
        <asp:TextBox class="tx" ID="txKmFin" runat="server" type="number" tittle="Inserta Solo números" maxlength="30" pattern="[\d\ ]{0,12}" required="required"></asp:TextBox>
        <asp:Label class="etComRuta" ID="etComRuta" runat="server" Text="Comentario sobre ruta: "></asp:Label>
        <asp:TextBox ID="txComRuta" runat="server" required="required" TextMode="MultiLine"></asp:TextBox>
        </div>

        <div id="camion3">
        <asp:Label ID="etNumRem" runat="server" Text="Número de remisión: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumRem" runat="server" required="required" tittle="Inserta Solo números" maxlength="30" pattern="[\d\ ]{0,12}" type="number"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etNomCli" runat="server" Text="Nombre del cliente:"></asp:Label>
        <asp:TextBox ID="txNomCli" runat="server" placeholder="Sony" required="required"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etHoraLlegada" runat="server" Text="Hora de llegada: "></asp:Label>
        <asp:TextBox class="tx" ID="txHoraLlegada" runat="server" type="time" require="required"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etHoraSal" runat="server" Text="Hora de salida: "></asp:Label>
        <asp:TextBox ID="txHoraSal" runat="server" type="time" required="required"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etTD" runat="server" Text="Tiempo en descargar: "></asp:Label>
        <asp:TextBox ID="txTD" runat="server" type="text" required="required" maxlength="30" pattern="[\d\ ]{0,12}" ></asp:TextBox>
        <br /><br />
        <asp:Label class="etComCli" ID="etComCli" runat="server" Text="Comentario sobre el cliente: "></asp:Label>
        <asp:TextBox ID="txComCli" runat="server"  TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="btModificar" runat="server" Text="Modificar" OnClick="btModificar_Click" />
            <asp:Label ID="etNom2" runat="server" Text="idBitacora"></asp:Label>
        
   </div>
        <asp:Label ID="etConfirmacion" runat="server"></asp:Label>
    </form>
</body>
</html>
