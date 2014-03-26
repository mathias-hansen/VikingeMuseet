<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="editdisplay.aspx.cs" Inherits="admin_editudstilling" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Håndtér udstillinger</h1>
    <br />
    <br />
    <asp:Literal ID="litDisplay" runat="server" />
    <asp:Panel ID="pnlMainDisplay" CssClass="maindisplaypnl" DefaultButton="btnSaveNewDisplay" runat="server">
        <h2>Opret en ny udstilling</h2>
        <h3>Udstillingens overskrift:</h3>
        <asp:TextBox ID="txtDisplayHeader" CssClass="maintext" runat="server" />
        <h3>Introducerende tekst:</h3>
        <asp:TextBox ID="txtIntroText" CssClass="mainmultilinetext" TextMode="MultiLine" runat="server" /><br />
        <asp:Button ID="btnSaveNewDisplay" CssClass="mainsavebtn" Text="Gem udstilling" runat="server" OnClick="btnSaveNewDisplay_Click" />
    </asp:Panel>
    <br />
    <br />
    <asp:TabContainer ID="tctCreateNewDisplay" OnDemand="true" CssClass="displaytabcontainer" AutoPostBack="false" runat="server">
        <asp:TabPanel ID="tplWH" HeaderText="Tekst med overskrift" OnDemandMode="Once" runat="server">
            <ContentTemplate>
                <h3>Overskrift:</h3>
                <asp:TextBox ID="txtInfoWH" runat="server" />
                <h3>Tekst til udstilling:</h3>
                <asp:TextBox ID="txtInfoWHContent" CssClass="multilinetext" TextMode="MultiLine" runat="server" /><br />
                <asp:DropDownList ID="ddlLeftRightWH" runat="server" /><asp:Button ID="btnInsertTextWH" CssClass="savebtn" Text="Gem information" runat="server" OnClick="btnInsertTextWH_Click" />
                <br />
                <asp:Literal ID="litWH" runat="server" />
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="tplUH" HeaderText="Tekst uden overskrift" OnDemandMode="Once" runat="server">
            <ContentTemplate>
                <h3>Tekst til udstilling:</h3>
                <asp:TextBox ID="txtUHContent" CssClass="multilinetext" TextMode="MultiLine" runat="server" /><br />
                <asp:DropDownList ID="ddlLeftRightUH" runat="server" /><asp:Button ID="btnInsertTextUH" CssClass="savebtn" Text="Gem information" runat="server" OnClick="btnInsertTextUH_Click" />
                <br />
                <asp:Literal ID="litUH" runat="server" />
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="tplIMG" HeaderText="Billede" OnDemandMode="Once" runat="server">
            <ContentTemplate>
                <asp:AjaxFileUpload ID="afuUploadNewDisplayIMG" OnUploadComplete="afuUploadNewDisplayIMG_UploadComplete" AllowedFileTypes="jpg, jpeg" MaximumNumberOfFiles="1" runat="server" />
                <h3>Tekst til billede (valgfri)</h3>
                <asp:TextBox ID="txtImgText" CssClass="multilinetext" TextMode="MultiLine" runat="server" /><br />
                <asp:DropDownList ID="ddlLeftRightIMG" runat="server" /><asp:Button ID="btnInsertIMG" CssClass="savebtn" Text="Gem billeder" runat="server" OnClick="btnInsertIMG_Click" />
                <br />
                <asp:Literal ID="litIMG" runat="server" />
            </ContentTemplate>
        </asp:TabPanel>       
    </asp:TabContainer>

</asp:Content>

