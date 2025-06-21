using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YemekDuzenle : System.Web.UI.Page
{   
    sqlsinif bgl = new sqlsinif();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["YemekID"];
        if (Page.IsPostBack == false)

        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where YemekID=@p1 ", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "KategoriID";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
            bgl.baglanti().Close();
        }
    }

    protected void BtnDuzenle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand(" update Tbl_Yemekler set YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, KategoriID=@p4 where YemekID=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5",id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}