<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }

        .auto-style5 {
            width: 222px;
            text-align: left;
        }

        .auto-style6 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        KATEGORİ LİSTESİ
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <a href="KategoriDuzenle.aspx?KategoriID=<%# Eval("KategoriID") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/updated.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style4">
                            <a href="Kategoriler.aspx?KategoriID=<%# Eval("KategoriID") %>&islem=sil">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" />
                            </a>
                        </td>

                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style2">
            <tr>
                <td>KATEGORİ AD :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="212px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON :</td>
                <td class="auto-style6">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="220px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="BtnEkle" runat="server" OnClick="BtnEkle_Click" Text="Kategori Ekle" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

