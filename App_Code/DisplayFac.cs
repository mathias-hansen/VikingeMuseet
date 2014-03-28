using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class DisplayFac
{
    DataAccess DA = new DataAccess();
    SqlCommand CMD = new SqlCommand();

    public string _DisplayHeader { get; set; }
    public string _DisplayIntro { get; set; }
    public string _ContentHeader { get; set; }
    public string _ContentText { get; set; }
    public string _ContentIMG { get; set; }
    public string _ContentIMGText { get; set; }

    public int _LeftRight { get; set; }
    public int _DisplayID { get; set; }

    public DataRow _DisplayIDRow { get; set; }

    public void InsertNewDisplay() 
    {
        CMD = new SqlCommand("INSERT INTO VtblUdstilling (fldUdstillingOverskrift, fldUdstillingTekst) VALUES (@header, @intro)");
        CMD.Parameters.AddWithValue("@header", _DisplayHeader);
        CMD.Parameters.AddWithValue("@intro", _DisplayIntro);
        DA.ModifyData(CMD);
    }

    public void InsertNewContentWH() 
    {
        CMD = new SqlCommand("INSERT INTO VtblUdstillingIndholdMH (fldIndholdMHOverskrift, fldIndholdMHTekst, fldLeftRight, fldUdstillingID_FK) VALUES (@header, @text, @leftright, @displayid)");
        CMD.Parameters.AddWithValue("@header", _ContentHeader);
        CMD.Parameters.AddWithValue("@text", _ContentText);
        CMD.Parameters.AddWithValue("@leftright", _LeftRight);
        CMD.Parameters.AddWithValue("@displayid", _DisplayID);
        DA.ModifyData(CMD);
    }

    public void InsertNewContentUH()
    {
        CMD = new SqlCommand("INSERT INTO VtblUdstillingIndholdUH (fldIndholdUHTekst, fldLeftRight, fldUdstillingID_FK) VALUES (@text, @leftright, @displayid)");
        CMD.Parameters.AddWithValue("@text", _ContentText);
        CMD.Parameters.AddWithValue("@leftright", _LeftRight);
        CMD.Parameters.AddWithValue("@displayid", _DisplayID);
        DA.ModifyData(CMD);
    }

    public void InsertNewContentIMG()
    {
        CMD = new SqlCommand("INSERT INTO VtblUdstillingIndholdIMG (fldIndholdIMG, fldIndholdIMGTekst, fldLeftRight, fldUdstillingID_FK) VALUES (@img, @imgtext, @leftright, @displayid)");
        CMD.Parameters.AddWithValue("@img", _ContentIMG);
        CMD.Parameters.AddWithValue("@imgtext", _ContentIMGText);
        CMD.Parameters.AddWithValue("@leftright", _LeftRight);
        CMD.Parameters.AddWithValue("@displayid", _DisplayID);
        DA.ModifyData(CMD);
    }

    public DataTable GetAllDisplays() 
    {
        CMD = new SqlCommand("SELECT fldUdstillingID, fldUdstillingOverskrift, fldUdstillingTekst FROM VtblUdstilling");
        return DA.GetData(CMD);
    }

    public DataTable GetDisplayIMG() 
    {
        CMD = new SqlCommand("SELECT TOP 1 fldIndholdIMG FROM VtblUdstillingIndholdIMG WHERE fldUdstillingID_FK = @displayid");
        CMD.Parameters.AddWithValue("@displayid", _DisplayIDRow["fldUdstillingID"]);
        return DA.GetData(CMD);
    }

    public DataTable GetDisplayByID()
    {
        CMD = new SqlCommand("SELECT fldUdstillingID, fldUdstillingOverskrift, fldUdstillingTekst FROM VtblUdstilling WHERE fldUdstillingID = @displayid");
        CMD.Parameters.AddWithValue("@displayid", _DisplayID);
        return DA.GetData(CMD);
    }

    public DataTable GetNewestDisplay() 
    {
        CMD = new SqlCommand("SELECT TOP 1 fldUdstillingID, fldUdstillingOverskrift, fldUdstillingTekst FROM VtblUdstilling ORDER BY fldUdstillingID DESC");
        return DA.GetData(CMD);
    }
}