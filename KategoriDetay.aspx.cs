﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetay : System.Web.UI.Page
{
    sqlsinif snf=new sqlsinif();
    string kategoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriid = Request.QueryString["kategoriID"];
        SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where kategoriID=@p1",snf.baglanti());
        komut.Parameters.AddWithValue("@p1",kategoriid);
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }
}