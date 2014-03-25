using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_editudstilling : System.Web.UI.Page
{
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
}