<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: left;
            margin-left: 40px;
        }
        .auto-style5 {
            font-weight: bold;
            margin-left: 50px;
        font-size: large;
        font-style: italic;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Tarif Ad :</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTarifAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Malzemeler :</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Yapılış :</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Resim :</td>
            <td class="auto-style2">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Tarif Öneren :</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtOneren" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mail Adresi : </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4"><strong>
                <em>
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#3399FF"  CssClass="auto-style5" ForeColor="White" Height="35px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click"/>
                </em>
                </strong></td>
        </tr>
    </table>
</asp:Content>

