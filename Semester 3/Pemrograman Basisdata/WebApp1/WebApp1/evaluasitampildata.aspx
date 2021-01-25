<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="evaluasitampildata.aspx.vb" Inherits="WebApp1.evaluasitampildata" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            width: 140px;
        }
        .style4
        {
            width: 161px;
            height: 21px;
        }
        .style5
        {
            height: 21px;
        }
        .style6
        {
            width: 140px;
            height: 21px;
        }
        .style7
        {
            width: 161px;
            height: 26px;
        }
        .style8
        {
            height: 26px;
        }
        .style9
        {
            width: 140px;
            height: 26px;
        }
        .style13
        {
            width: 261px;
        }
        .style14
        {
            height: 26px;
            width: 261px;
        }
        .style15
        {
            height: 21px;
            width: 261px;
        }
        .style16
        {
            height: 30px;
        }
        .style17
        {
            width: 261px;
            height: 30px;
        }
        .style19
        {
            width: 140px;
            height: 30px;
        }
        .style24
        {
            width: 161px;
        }
        .style25
        {
            height: 30px;
            width: 161px;
        }
        .style26
        {
            width: 32px;
        }
        .style27
        {
            width: 32px;
            height: 26px;
        }
        .style28
        {
            width: 32px;
            height: 21px;
        }
        .style29
        {
            width: 32px;
            height: 30px;
        }
        .style30
        {
            width: 11px;
        }
        .style31
        {
            width: 11px;
            height: 26px;
        }
        .style32
        {
            width: 11px;
            height: 21px;
        }
        .style33
        {
            width: 11px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="7" style="text-align: center">
                PEMINJAMAN BUKU PERPUSTAKAAN</td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                NIM</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style14">
                <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style31">
                <asp:Button ID="Button6" runat="server" Text="CEK" Width="70px" />
            </td>
            <td class="style9">
                <asp:Button ID="Button5" runat="server" Text="SIMPAN" Width="124px" />
            </td>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                NAMA MAHASISWA</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox2" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                PROGRAM STUDI</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox3" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                ANGKATAN</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox4" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                TGL PINJAM</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style14">
                <asp:TextBox ID="TextBox5" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style31">
            </td>
            <td class="style9">
            </td>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                JUDUL BUKU</td>
            <td class="style27">
                </td>
            <td class="style14">
                <asp:TextBox ID="TextBox6" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style31">
                </td>
            <td class="style9">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style24">
                PENGARANG</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox7" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                PENERBIT</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox8" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                BAYAR</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox18" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style15">
            </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                TAMPILKAN PERJUDUL</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style15">
                <asp:TextBox ID="TextBox9" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style32">
            </td>
            <td class="style6">
                <asp:Button ID="Button3" runat="server" Text="TAMPILKAN" Width="124px" />
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                PERNAMA</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox10" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button4" runat="server" Text="TAMPILKAN" Width="124px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25">
                PROGRAM STUDI</td>
            <td class="style29">
                &nbsp;</td>
            <td class="style17">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>TEKNIK INFORMATIKA</asp:ListItem>
                    <asp:ListItem>SISTEM INFORMASI</asp:ListItem>
                    <asp:ListItem>TEKNIK ELEKTRO</asp:ListItem>
                    <asp:ListItem>TEKNIK INDUSTRI</asp:ListItem>
                    <asp:ListItem>TEKNIK MESIN</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style33">
            </td>
            <td class="style19">
                <asp:Button ID="Button1" runat="server" Text="PROGRAM STUDI" Width="124px" />
            </td>
            <td class="style16">
            </td>
            <td class="style16">
            </td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                PER ANGKATAN</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button2" runat="server" Text="ANGKATAN" Width="124px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style28">
                </td>
            <td class="style15">
                </td>
            <td class="style32">
                </td>
            <td class="style6">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style4">
                MASUKKAN KODE NIM</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style15">
                <asp:TextBox ID="TextBox11" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style32">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="Button7" runat="server" Text="CARI" Width="124px" />
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                JUMLAH DATANYA</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox12" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button8" runat="server" Text="HITUNG" Width="124px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                PEMBAYARAN MAKS</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox13" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                PEMBAYARAN MIN</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox14" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                RATA RATA</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox15" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                TOTAL BAYAR</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox16" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                JUMLAH TRANSAKSI</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                <asp:TextBox ID="TextBox17" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="7">
                <asp:GridView ID="GridView1" runat="server" Width="879px">
                </asp:GridView>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
