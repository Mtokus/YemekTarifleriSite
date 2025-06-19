<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDuzenle.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            height: 26px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Kategori Adı : </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Adet :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Resim:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Güncelle" Width="151px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

