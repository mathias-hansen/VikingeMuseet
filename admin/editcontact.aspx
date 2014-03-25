<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="editcontact.aspx.cs" Inherits="admin_editcontact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Ret kontaktinformationer</h1>
    <asp:Panel ID="pnlOpeningHours" runat="server">
        <h2>Redigér åbningstider</h2>
        <h3>Åbningstider for hverdage:</h3>
        <asp:TextBox ID="txtWorkdayTime" runat="server" />
        <h3>Åbningstider for weekender og helligdage:</h3>
        <asp:TextBox ID="txtWeekendHolidayTime" runat="server" />
    </asp:Panel>
    <br /><br />
    <asp:Panel ID="pnlAddress" runat="server">
        <h2>Redigér adresse</h2>
        <h3>Vejnavn:</h3>
        <asp:TextBox ID="txtRoad" runat="server" />
        <h3>Husnummer:</h3>
        <asp:TextBox ID="txtHouseNumber" runat="server" />
        <h3>Postnummer:</h3>
        <asp:TextBox ID="PostalCode" runat="server" />
        <h3>By:</h3>
        <asp:TextBox ID="txtCity" runat="server" />
    </asp:Panel>
</asp:Content>

