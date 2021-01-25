<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="WebForm1.aspx.vb" Inherits="WebApp1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #C0C0C0;
        }
        .style2
        {
            width: 278px;
        }
        .style3
        {
            text-align: left;
        }
        .style4
        {
            width: 278px;
            text-align: left;
        }
        .style5
        {
            width: 76px;
        }
        .style6
        {
            text-align: left;
            width: 76px;
        }
        .style7
        {
            text-align: left;
            width: 76px;
            height: 21px;
        }
        .style8
        {
            width: 278px;
            text-align: left;
            height: 21px;
        }
        .style9
        {
            text-align: left;
            height: 21px;
        }
        .style10
        {
            width: 259px;
        }
        .style11
        {
            text-align: left;
            width: 259px;
        }
        .style12
        {
            text-align: left;
            height: 21px;
            width: 259px;
        }
        .style13
        {
            text-align: center;
            width: 140px;
        }
        .style14
        {
            text-align: center;
            height: 21px;
            width: 140px;
        }
        .style15
        {
            width: 140px;
        }
        .style16
        {
            text-align: left;
            width: 140px;
        }
        .style17
        {
            width: 76px;
            height: 21px;
        }
        .style18
        {
            width: 278px;
            height: 21px;
        }
        .style19
        {
            width: 259px;
            height: 21px;
        }
        .style20
        {
            width: 140px;
            height: 21px;
        }
        .style21
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: center">
                INPUT DATA MAHASISWA</td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: center">
                PROGRAM STUDI TEKNIK INFORMATIKA</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style8">
                NIM</td>
            <td class="style12">
                <asp:TextBox ID="TextBox1" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:Button ID="Button1" runat="server" style="margin-left: 0px" Text="CEK" 
                    Width="73px" />
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                NAMA MAHASISWA</td>
            <td class="style11">
                <asp:TextBox ID="TextBox2" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:Button ID="Button2" runat="server" Text="SIMPAN" Width="73px" />
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                PROGRAM STUDI</td>
            <td class="style11">
                <asp:TextBox ID="TextBox3" runat="server" Width="202px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:Button ID="Button3" runat="server" Text="EDIT" Width="73px" />
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                ANGKATAN</td>
            <td class="style11">
                <asp:TextBox ID="TextBox4" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:Button ID="Button4" runat="server" Text="BATAL" Width="73px" />
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                ALAMAT</td>
            <td class="style11">
                <asp:TextBox ID="TextBox5" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td class="style16">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                KOTA</td>
            <td class="style11">
                <asp:TextBox ID="TextBox6" runat="server" Width="202px"></asp:TextBox>
            </td>
            <td class="style16">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                NO. HP</td>
            <td class="style11">
                <asp:TextBox ID="TextBox7" runat="server" Width="201px"></asp:TextBox>
            </td>
            <td class="style16">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                JENIS KELAMIN</td>
            <td class="style11">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>LAKI-LAKI</asp:ListItem>
                    <asp:ListItem> PEREMPUAN</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style16">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                AGAMA</td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>ISLAM</asp:ListItem>
                    <asp:ListItem>KRISTEN</asp:ListItem>
                    <asp:ListItem>BUDHA</asp:ListItem>
                    <asp:ListItem>HINDU</asp:ListItem>
                    <asp:ListItem>KONGHUCU</asp:ListItem>
                    <asp:ListItem>KATOLIK</asp:ListItem>
                    <asp:ListItem>ATHEIS</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style16">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                </td>
            <td class="style18">
                JUMLAH SAUDARA</td>
            <td class="style19">
                <asp:TextBox ID="TextBox9" runat="server" Width="190px"></asp:TextBox>
            </td>
            <td class="style20">
                </td>
            <td class="style21">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
