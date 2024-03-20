<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="qlNhanVien.aspx.cs" Inherits="qlNhanSu.qlNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    
        <h2 class="text-center">Danh sách nhân viên</h2>
        <asp:SqlDataSource ID="dsNhanVien" runat="server"
             ConnectionString="<%$ ConnectionStrings:QLNhanSuConnectionString %>" 
             DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV"
             InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" 
             SelectCommand="SELECT * FROM [NhanVien]"
             UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV" OnSelecting="SqlDataSource1_Selecting">
             <DeleteParameters>
                 <asp:Parameter Name="MaNV" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="HoNV" Type="String" />
                 <asp:Parameter Name="TenNV" Type="String" />
                 <asp:Parameter Name="Phai" Type="Boolean" />
                 <asp:Parameter DbType="Date" Name="NgaySinh" />
                 <asp:Parameter Name="NoiSinh" Type="String" />
                 <asp:Parameter Name="MaPhong" Type="Int32" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="HoNV" Type="String" />
                 <asp:Parameter Name="TenNV" Type="String" />
                 <asp:Parameter Name="Phai" Type="Boolean" />
                 <asp:Parameter DbType="Date" Name="NgaySinh" />
                 <asp:Parameter Name="NoiSinh" Type="String" />
                 <asp:Parameter Name="MaPhong" Type="Int32" />
                 <asp:Parameter Name="MaNV" Type="Int32" />
             </UpdateParameters>

         </asp:SqlDataSource>
    
    <asp:GridView ID="gvNhanVien" runat="server" AutoGenerateColumns="false"
        CssClass="table table-bordered table-hover" DataSourceID="dsNhanVien" DataKeyNames="MaNV">
        <Columns >
            <asp:BoundField DataField="MaNV" HeaderText="Mã nhân viên" ReadOnly="True" />
            <asp:BoundField DataField="HoNV" HeaderText="họ nhân viên" />
            <asp:BoundField  DataField="TenNV" HeaderText="tên nhân viên"/>
            <asp:CheckBoxField DataField="Phai" HeaderText="Phái" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" ReadOnly="True" />
            <asp:BoundField DataField="NoiSinh" HeaderText="nơi sinh" />
            <asp:BoundField  DataField="MaPhong" HeaderText="Mã phòng"/>
            <asp:CommandField ShowEditButton="true" ButtonType="Button" ShowDeleteButton="true" />

        </Columns>
        <HeaderStyle CssClass="bg-info" /> 
    </asp:GridView>
</asp:Content>
