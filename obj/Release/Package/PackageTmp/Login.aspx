<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CrudPractice.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row justify-content-center mt-5">
                <div class="col-md-4">
                    <h5>Login</h5>
                    <div class="card p-3">                      

                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtLogUser" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>

                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="txtLogPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary mt-2" OnClick="btnLogin_Click" />
                    <a href="Registration.aspx" class="p-2 text-decoration-none">You have no account..? Please Registration</a>
                </div>                
            </div>
        </div>
    </form>
</body>
</html>
