using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kategoriler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id=Request.QueryString["KategoriID"];
            islem = Request.QueryString["islem"];
        }
        SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader dr=komut.ExecuteReader(); 
        DataList1.DataSource = dr;
        DataList1.DataBind();
        if(islem == "sil") 
        {
            SqlCommand komutSil = new SqlCommand("Delete From Tbl_Kategoriler where kategoriID=@p1",bgl.baglanti());
            komutSil.Parameters.AddWithValue("@p1",id);
            komutSil.ExecuteNonQuery();
            bgl.baglanti().Close();

            Response.Write("Kategori Silindi");
        }
            
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Kategori Eklendi");
    }
}