<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        text-align: right;
    }
    .auto-style4 {
        text-align: center;
    }
        .auto-style5 {
            text-align: right;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
        .auto-style7 {
            text-align: right;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            margin-left: 116px;
        }
        .auto-style10 {
            font-size: 14px;
            outline: none;
            height: 22px;
            width: 180px;
            border: 2px solid #C4D1EB;
            border-radius: 10px;
            transition: .3s ease;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style4" colspan="2">MESAJ PANELİ</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Ad Soyad : </strong> </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="auto-style10" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Mail Adresiniz : </strong> </td>
        <td>
            <asp:TextBox ID="txtMesajMail" runat="server" CssClass="input" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Konu : </strong> </td>
        <td class="auto-style8">
            <asp:TextBox ID="txtMesajBaslik" runat="server" CssClass="input" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Mesaj :</strong></td>
        <td>
            <asp:TextBox ID="txtmesajicerik" runat="server" CssClass="input" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="auto-style9"  Height="35px" Width="138px" OnClick="Button1_Click"  />
        </td>
    </tr>
</table>
</asp:Content>

