using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

public partial class admin_editudstilling : System.Web.UI.Page
{
    DisplayFac objDisplay = new DisplayFac();
    DataTable dtDisplay = new DataTable();

    string c;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlLeftRightWH.Items.Add(new ListItem("---Vælg position---", "0"));
            ddlLeftRightWH.Items.Add(new ListItem("Venstre", "1"));
            ddlLeftRightWH.Items.Add(new ListItem("Højre", "2"));

            ddlLeftRightUH.Items.Add(new ListItem("---Vælg position---", "0"));
            ddlLeftRightUH.Items.Add(new ListItem("Venstre", "1"));
            ddlLeftRightUH.Items.Add(new ListItem("Højre", "2"));

            ddlLeftRightIMG.Items.Add(new ListItem("---Vælg position---", "0"));
            ddlLeftRightIMG.Items.Add(new ListItem("Venstre", "1"));
            ddlLeftRightIMG.Items.Add(new ListItem("Højre", "2"));
        }
    }

    protected void btnSaveNewDisplay_Click(object sender, EventArgs e)
    {
        objDisplay._DisplayHeader = txtDisplayHeader.Text;
        objDisplay._DisplayIntro = txtIntroText.Text;
        objDisplay.InsertNewDisplay();

        pnlMainDisplay.Visible = false;

        dtDisplay = objDisplay.GetNewestDisplay();

        foreach (DataRow drDisplay in dtDisplay.Rows)
        {
            litDisplay.Text += "<h2>" + drDisplay["fldUdstillingOverskrift"] + "</h2>";
            litDisplay.Text += "<p>" + drDisplay["fldUdstillingTekst"] + "</p>";
        }

        //litDisplay.Text = "<h2>" + dtDisplay.Rows[0]["fldUdstillingOverskrift"].ToString() + "</h2><br/>";
        //litDisplay.Text += "<p>" + dtDisplay.Rows[0]["fldUdstillingTekst"].ToString() + "</p>";
    }

    protected void btnInsertTextWH_Click(object sender, EventArgs e)
    {
        dtDisplay = objDisplay.GetNewestDisplay();

        if (pnlMainDisplay.Visible == true)
        {
            litDisplay.Text = "Du skal oprette en ny udstilling før du kan oprette sideemner";
        }
        else
        {
            if (ddlLeftRightWH.SelectedValue == "0")
            {
                litWH.Text = "Du skal vælge om teksten skal stå til højre eller venstre";
            }
            else
            {
                objDisplay._ContentHeader = txtInfoWH.Text;
                objDisplay._ContentText = txtInfoWHContent.Text;
                objDisplay._LeftRight = Convert.ToInt32(ddlLeftRightWH.SelectedValue);
                objDisplay._DisplayID = Convert.ToInt32(dtDisplay.Rows[0]["fldUdstillingID"]);
                objDisplay.InsertNewContentWH();

                litWH.Text = "Indholdet blev gemt. Du kan fortsætte eller gemme udstilling, hvis du er færdig.";
            }
        }
    }
    protected void btnInsertTextUH_Click(object sender, EventArgs e)
    {
        dtDisplay = objDisplay.GetNewestDisplay();

        if (pnlMainDisplay.Visible == true)
        {
            litDisplay.Text = "Du skal oprette en ny udstilling før du kan oprette sideemner";
        }
        else
        {
            if (ddlLeftRightUH.SelectedValue == "0")
            {
                litWH.Text = "Du skal vælge om teksten skal stå til højre eller venstre";
            }
            else
            {
                objDisplay._ContentText = txtUHContent.Text;
                objDisplay._LeftRight = Convert.ToInt32(ddlLeftRightUH.SelectedValue);
                objDisplay._DisplayID = Convert.ToInt32(dtDisplay.Rows[0]["fldUdstillingID"]);
                objDisplay.InsertNewContentUH();

                litUH.Text = "Indholdet blev gemt. Du kan fortsætte eller gemme udstilling, hvis du er færdig.";
            }
        }
    }
    protected void btnInsertIMG_Click(object sender, EventArgs e)
    {
        dtDisplay = objDisplay.GetNewestDisplay();


        if (pnlMainDisplay.Visible == true)
        {
            litDisplay.Text = "Du skal oprette en ny udstilling før du kan oprette sideemner";
        }
        else
        {
            if (ddlLeftRightIMG.SelectedValue == "0")
            {
                litWH.Text = "Du skal vælge om billedet skal stå til højre eller venstre";
            }
            else
            {
                objDisplay._ContentIMG = c;
                objDisplay._ContentIMGText = txtImgText.Text;
                objDisplay._LeftRight = Convert.ToInt32(ddlLeftRightIMG.SelectedValue);
                objDisplay._DisplayID = Convert.ToInt32(dtDisplay.Rows[0]["fldUdstillingID"]);
                objDisplay.InsertNewContentIMG();

                litIMG.Text = "Indholdet blev gemt. Du kan fortsætte eller gemme udstilling, hvis du er færdig.";
            }
        }
    }
    protected void afuUploadNewDisplayIMG_UploadComplete(object sender, AjaxFileUploadEventArgs e)
    {
        c = e.FileName;
        string path = Server.MapPath("~/gfx/udstilling/" + c);
        afuUploadNewDisplayIMG.SaveAs(path);


        //hdntest.Value = path;
    }
}