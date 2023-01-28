<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CrudPractice.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" container-fluid">
            <div class="row justify-content-center mt-5">              
                <div class="col-md-4">
                     <h5>Registration</h5>
                    <div class="card p-3">

                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                        <asp:TextBox ID="txtRegUser" runat="server" placeholder="User Name" CssClass="form-control"></asp:TextBox>

                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtRegEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>

                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="txtRegPass" runat="server" CssClass="form-control" placeholder="password"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Registration" CssClass="btn btn-primary mt-2" />
                    <a href="Login.aspx" class="p-5 text-decoration-none">Already have a account..?</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
