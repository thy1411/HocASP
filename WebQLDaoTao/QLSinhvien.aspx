<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLSinhvien.aspx.cs" Inherits="WebQLDaoTao.QLSinhvien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <h2>QUẢN LÝ SINH VIÊN</h2>
    <hr />

    <asp:GridView ID="gvSinhVien" runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="odsSinhVien" AllowPaging="true" PageSize="10">
        <Columns>
            <asp:BoundField DataField="MaSV" HeaderText="Mã SV"/>
            <asp:BoundField DataField="HoSV" HeaderText="Họ SV"/>
            <asp:BoundField DataField="TenSV" HeaderText="Tên SV"/>
            <asp:CheckBoxField DataField="GioiTinh" HeaderText="Giới Tính"/>
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh"/>
            <asp:BoundField DataField="NoiSinh" HeaderText="Nơi Sinh"/>
            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ"/>
            <asp:BoundField DataField="MaKH" HeaderText="Mã Khoa"/>
        </Columns>
        <PagerStyle CssClass="pagination-ys" HorizontalAlign="Center" />
    </asp:GridView>

    <asp:ObjectDataSource ID="odsSinhVien" runat="server" SelectMethod="getAll" TypeName="WebQLDaoTao.Models.SinhVienDAO"></asp:ObjectDataSource>

</asp:Content>
