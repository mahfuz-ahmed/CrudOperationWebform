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
        <div class="row container-fluid adminGrd">
                <div class="card-header mt-3">
                    <h1>Employee List</h1>
                    <div class="col-md-12">
                        <asp:GridView ID="gvEmployeeList" runat="server" CssClass=" table table-borderd table-striped table-hover"
                             OnRowEditing="gvEmployeeList_RowEditing"
                             OnRowUpdating="gvEmployeeList_RowUpdating"
                             OnRowDeleting="gvEmployeeList_RowDeleting"
                             OnRowCancelingEdit="gvEmployeeList_RowCancelingEdit"
                             DataKeyNames="EmployeeID"
                             AutoGenerateColumns="false"
                             >
                        <Columns>
                            <asp:TemplateField HeaderText="Employee Name">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("DepartmentName") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEmpName" Text='<%# Eval("DepartmentName") %>' runat="server" />
                                </EditItemTemplate>
                            </asp:TemplateField>

                          <asp:CommandField ShowDeleteButton="true" ControlStyle-CssClass="btn btn-danger" HeaderText="Delete"/>
                          <asp:CommandField ShowEditButton="true" ControlStyle-CssClass="btn btn-primary" HeaderText="Edit"/>
                        </Columns>
                        </asp:GridView>              
                    </div>
                </div>
            </div>
    </div>

</asp:Content>
