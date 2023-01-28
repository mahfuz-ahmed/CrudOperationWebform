<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CrudPractice.Index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Information</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Employee History</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Employee List</a>
                        </li>   
                         <li class="nav-item">
                            <a class="nav-link" href="Login.aspx">About Us</a>
                        </li>                      
                    </ul>
                </div>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <asp:LinkButton ID="lnkButton" runat="server" CssClass="nav-link" OnClick="lnkButton_Click">Login</asp:LinkButton>
                    </li>
                </ul>
            </div>
        </nav>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
