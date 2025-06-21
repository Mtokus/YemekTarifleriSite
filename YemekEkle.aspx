<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekEkle.aspx.cs" Inherits="YemekEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 222px;
            text-align: left;
        }

        .auto-style4 {
            text-align: right;
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

        .auto-style9 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        YEMEK LİSTESİ
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4"><a href="YemekDuzenle.aspx?YemekID=<%# Eval("YemekID") %>">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/updated.png" Width="30px" />
                        </a></td>
                        <td class="auto-style4"><a href="YemekEkle.aspx?YemekID=<%# Eval("YemekID") %>&islem=sil">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" />
                        </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
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
                <td>YEMEK AD :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER : </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ : </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ : </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style8" OnClick="BtnEkle_Click" Text="Yemek Ekle" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

