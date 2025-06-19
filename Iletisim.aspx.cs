using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Iletisim : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into  Tbl_Mesajlar (mesajgonderen, mesajbaslik, mesajmail, mesajicerik) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
        komut.Parameters.AddWithValue("@p1",txtAdSoyad.Text);
        komut.Parameters.AddWithValue("@p2", txtMesajMail.Text);
        komut.Parameters.AddWithValue("@p3", txtMesajBaslik.Text);
        komut.Parameters.AddWithValue("@p4", txtmesajicerik.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        Response.Write("Mesaj Gönderildi");

    }
}