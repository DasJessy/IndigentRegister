<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login_mobile.aspx.vb" Inherits="mobile_Login_mobile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="../image/png">

    <title>Login</title>

    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet">
    <script src="../js/html5shiv.js"></script>
    <script src="../js/respond.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    
</head>
<body class="login-body">
    
<form runat="server" class="form-signin">

        <div class="form-signin-heading text-center">
            <h1 class="sign-title">Sign In</h1>
            <img src="../images/login-logo.png" alt="" />
        </div>
        <div class="login-wrap">        
            
    <asp:TextBox ID="txtUsername" class="form-control" placeholder="User ID" runat="server"></asp:TextBox>
    <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" 
                runat="server" TextMode="Password"></asp:TextBox>
          <asp:Button class="btn btn-lg btn-login btn-block" ID="btnLogin" runat="server" Text="Submit"/>
<br />
<span class="pull-left">
                
        <asp:LinkButton ID="cmdIndigentRegister" runat="server">Register as Indigent</asp:LinkButton>
                  </span>
                           <span class="pull-right">
                
        <asp:LinkButton ID="cmdForgetpassword" runat="server">Forgot Password?</asp:LinkButton>
                  </span>
            

        </div>


    </form>





<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>

</body>
</html>
