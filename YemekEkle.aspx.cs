using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YemekEkle : System.Web.UI.Page
{
    sqlsinif bgl=   new sqlsinif();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        //Yemek Listesi 
        SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler",bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        if (Page.IsPostBack==false)
        {
            id = Request.QueryString["YemekID"];
            islem = Request.QueryString["islem"];
        //Kategori Listesi
        SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DropDownList1.DataTextField = "KategoriAd";
        DropDownList1.DataValueField = "KategoriID";
        DropDownList1.DataSource = dr2;
        DropDownList1.DataBind();
        if (islem == "sil") 
            {
                SqlCommand komutSil = new SqlCommand("Delete From Tbl_Yemekler Where YemekID=@p1",bgl.baglanti());
                komutSil.Parameters.AddWithValue("@p1", id);
                komutSil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }


        }
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        // yemek ekleme
        SqlCommand komutYemekEkle = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,Yemektarif,KategoriID) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
        komutYemekEkle.Parameters.AddWithValue("@p1",TextBox1.Text);
        komutYemekEkle.Parameters.AddWithValue("@p2",TextBox2.Text);
        komutYemekEkle.Parameters.AddWithValue("@p3",TextBox3.Text);
        komutYemekEkle.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
        komutYemekEkle.ExecuteNonQuery();
        bgl.baglanti().Close();

        // Yemek sayısını arttırma 
        SqlCommand komut2 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriID=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue); 
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();

    }

   
}