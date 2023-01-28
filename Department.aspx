<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="CrudPractice.Admin.Department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>Create Department</h1>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <asp:Label ID="Label1" runat="server" Text="Department Name"></asp:Label>
                        <asp:TextBox ID="txtDepartment" runat="server" placeholder="Department Name" CssClass="form-control"></asp:TextBox>
                    </div>                
                </div>
                 <div class="col-md-2 mt-3">
                      <asp:Button ID="btnDepartment" runat="server" Text="Create" CssClass="btn btn-primary" OnClick="btnDepartment_Click" />
                 </div>
            </div>
             <div class="card-header">
                <h1>Department List</h1>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:GridView ID="gvDepartment" runat="server" CssClass=" table table-borderd table-striped table-hover"></asp:GridView>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
