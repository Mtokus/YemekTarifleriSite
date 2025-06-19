using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for sqlsinif
/// </summary>
public class sqlsinif
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-PT0KF0R;Initial Catalog=YemekTarifiDB;Integrated Security=True");
        baglan.Open();
        return baglan;  
    }
}