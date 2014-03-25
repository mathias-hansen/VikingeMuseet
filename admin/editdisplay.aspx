<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="editdisplay.aspx.cs" Inherits="admin_editudstilling" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Håndtér udstillinger</h1><br /><br />
    <h2>Opret en ny udstilling</h2>
    <h3>Udstillingens overskrift:</h3>
    <asp:TextBox ID="txtDisplayHeader" runat="server" />
    <h3>Introducerende tekst:</h3>
    <asp:TextBox ID="txtIntrducingText" TextMode="MultiLine" runat="server" /><br />
    <asp:Button ID="btnSaveNewDisplay" Text="Gem udstilling" runat="server" />
    <br /><br />

    <asp:TabContainer ID="tctCreateNewDisplay" AutoPostBack="false" runat="server">
        <asp:TabPanel ID="tplWH" HeaderText="Tekst med overskrift" runat="server"> 
            <ContentTemplate>
                <h3>Overskrift:</h3>
                <asp:TextBox ID="txtInfoWH" runat="server" />
                <h3>Tekst:</h3>
                <asp:TextBox ID="txtInfoWHContent" TextMode="MultiLine" runat="server" /><br />
                <asp:DropDownList ID="ddlLeftRightWH" runat="server" /><asp:Button ID="btnInsertTextWH" Text="Gem information" runat="server" />
            </ContentTemplate> 
        </asp:TabPanel>
        <asp:TabPanel ID="tplUH" HeaderText="Tekst uden overskrift" runat="server">
            <ContentTemplate>
                <h3>Tekst:</h3>
                <asp:TextBox ID="txtUHContent" TextMode="MultiLine" runat="server" /><br />
                <asp:DropDownList ID="ddlLeftRightUH" runat="server" /><asp:Button ID="btnInsertTextUH" Text="Gem information" runat="server" />
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="tplIMG" HeaderText="Billede" runat="server">
            <ContentTemplate>
                <asp:AjaxFileUpload ID="afuUploadNewDisplayIMG" AllowedFileTypes="jpg, jpeg" runat="server" /><br />
                <asp:DropDownList ID="ddlLeftRightIMG" runat="server" /><asp:Button ID="btnInsertIMG" Text="Gem billeder" runat="server" />
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>

</asp:Content>

