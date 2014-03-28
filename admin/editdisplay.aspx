<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="editdisplay.aspx.cs" Inherits="admin_editudstilling" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Håndtér udstillinger</h1>
    <br />
    <br />
    <asp:Button ID="btnShowHideNewDisplay" CssClass="showhidebtn" Text="Opret en ny udstilling" runat="server" />
    <asp:CollapsiblePanelExtender ID="cpeDisplayEx" TargetControlID="pnlCreateNewDisplay" Collapsed="true" CollapseControlID="btnShowHideNewDisplay" ExpandControlID="btnShowHideNewDisplay" runat="server"></asp:CollapsiblePanelExtender>
    <asp:Panel ID="pnlCreateNewDisplay" runat="server">
        <asp:Literal ID="litDisplay" runat="server" />
        <asp:Panel ID="pnlMainDisplay" CssClass="maindisplaypnl" DefaultButton="btnSaveNewDisplay" runat="server">
            <h3>Udstillingens overskrift:</h3>
            <asp:TextBox ID="txtDisplayHeader" CssClass="maintext" runat="server" />
            <h3>Introducerende tekst:</h3>
            <asp:TextBox ID="txtIntroText" CssClass="mainmultilinetext" TextMode="MultiLine" runat="server" /><br />
            <asp:Button ID="btnSaveNewDisplay" CssClass="mainsavebtn" Text="Gem udstilling" runat="server" OnClick="btnSaveNewDisplay_Click" />
        </asp:Panel>
        <br />
        <br />
        <asp:TabContainer ID="tctCreateNewDisplay" CssClass="displaytabcontainer" runat="server">
            <asp:TabPanel ID="tplWH" HeaderText="Tekst med overskrift" runat="server">
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
            <asp:TabPanel ID="tplUH" HeaderText="Tekst uden overskrift" runat="server">
                <ContentTemplate>
                    <h3>Tekst til udstilling:</h3>
                    <asp:TextBox ID="txtUHContent" CssClass="multilinetext" TextMode="MultiLine" runat="server" /><br />
                    <asp:DropDownList ID="ddlLeftRightUH" runat="server" /><asp:Button ID="btnInsertTextUH" CssClass="savebtn" Text="Gem information" runat="server" OnClick="btnInsertTextUH_Click" />
                    <br />
                    <asp:Literal ID="litUH" runat="server" />
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="tplIMG" HeaderText="Billede" runat="server">
                <ContentTemplate>
                    <asp:AjaxFileUpload ID="afuImgUploader" OnUploadComplete="afuImgUploader_UploadComplete" MaximumNumberOfFiles="10" AllowedFileTypes="jpg, jpeg" runat="server" />
                    <br />
                    <asp:Literal ID="litUploadedImg" runat="server" />
                    <h3>Tekst til billede (valgfri)</h3>
                    <asp:TextBox ID="txtImgText" CssClass="multilinetext" TextMode="MultiLine" runat="server" /><br />
                    <asp:DropDownList ID="ddlLeftRightIMG" runat="server" /><asp:Button ID="btnInsertIMG" CssClass="savebtn" Text="Gem billeder" runat="server" OnClick="btnInsertIMG_Click" />
                    <br />
                    <asp:Literal ID="litIMG" runat="server" />
                </ContentTemplate>
            </asp:TabPanel>
        </asp:TabContainer>
    </asp:Panel>

    <asp:Button ID="btnShowHideEditDisplay" CssClass="showhidebtn" Text="Ret/slet udstillinger" runat="server" />
    <asp:CollapsiblePanelExtender ID="cpeEditDisplayEx" TargetControlID="pnlEditDisplay" Collapsed="true" CollapseControlID="btnShowHideEditDisplay" ExpandControlID="btnShowHideEditDisplay" runat="server"></asp:CollapsiblePanelExtender>
    <asp:Panel ID="pnlEditDisplay" runat="server">
        <h1>Ret eller slet udstillinger</h1>
        <asp:Literal ID="litUdstillinger" runat="server" />
        <asp:Literal ID="litUdstilling" runat="server" />
    </asp:Panel>
</asp:Content>

