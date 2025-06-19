using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    sqlsinif bgl=new sqlsinif();
    string yemekID = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        yemekID = Request.QueryString["YemekID"];

        SqlCommand komut = new SqlCommand("Select YemekAd from Tbl_Yemekler where YemekID=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1",yemekID);
        SqlDataReader dr =komut.ExecuteReader();
        while (dr.Read()) 
        {
            Label3.Text=dr[0].ToString();
        }
        bgl.baglanti().Close();
        //Yorum Listele

        SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where YemekID=@p2", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2", yemekID);
        SqlDataReader dr2=komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad, YorumMail, Yorumicerik,YemekID) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", yemekID);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Yorumunuz Eklendi");
    }
}