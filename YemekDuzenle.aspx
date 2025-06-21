<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style9 {
            text-align: center;
        }
    
        .auto-style6 {
            margin-left: 40px;
        }

        .auto-style7 {
            margin-left: 40px;
            text-align: center;
        }

        .auto-style8 {
            font-weight: bold;
        }

        .auto-style10 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style9" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2"><strong>YEMEK EKLE</strong></td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style10">YEMEK AD :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">MALZEMELER : </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">YEMEK TARİFİ : </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">KATEGORİ : </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="BtnDuzenle" runat="server" CssClass="auto-style8"  Text="Yemek Düzenle" OnClick="BtnDuzenle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

