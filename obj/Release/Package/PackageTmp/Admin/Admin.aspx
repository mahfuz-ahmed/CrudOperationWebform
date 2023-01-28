<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CrudPractice.Admin.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <link href="../CSS/admin.css" rel="stylesheet" />
 <div>
 
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>Add New Employee</h1>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="txtEmName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtEmpEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label>
                        <asp:DropDownList ID="ddlDepartment" AppendDataBoundItems="true" DataTextField="DepartmentName" DataValueField="DepartmentId" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Select Department" Value="" />
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3 mt-4">
                        <asp:Button ID="btnEmployeeSave" runat="server" Text="Save Form" CssClass="btn btn-primary" OnClick="btnEmployeeSave_Click" />
                    </div>
                </div>     
            </div>
            ...
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
                                    <asp:Label Text='<%# Eval("EmployeName") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEmpName" Text='<%# Eval("EmployeName") %>' runat="server" />
                                </EditItemTemplate>
                            </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Employee Phone">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("EmployeePhone") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEmpPhone" Text='<%# Eval("EmployeePhone") %>' runat="server" />
                                </EditItemTemplate>
                            </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Employee Email">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("EmployeeEmail") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEmpEmail" Text='<%# Eval("EmployeeEmail") %>' runat="server" />
                                </EditItemTemplate>
                            </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Employee Address">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Address") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEmpAddress" Text='<%# Eval("Address") %>' runat="server" />
                                </EditItemTemplate>
                            </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Department ID">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("DepartmentId") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEmpDepartment" Text='<%# Eval("DepartmentId") %>' runat="server" />
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
