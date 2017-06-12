<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Log In</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="~/Content/custom/bootstrap.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="~/Content/custom/mdb.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="~/Content/custom/style.css" type="text/css" media="screen" />
</head>
<body class="body-background">


	<div class="container z-depth-5 authentication-block dashboard-container wow bounceIn">

		<div class="row home-page-wrapper">
			<div class="col-md-12 text-center login-heading">
				<h2>Welcome to Web Technologies Lab</h2>
			</div>
		</div>

		<div class="row">

			<div class="col-md-2 offset-md-1 text-center">
			</div>

			<div class="col-md-4 offset-md-1 text-center">

                <h3><small>Log in here</small></h3>

				<form id="form1" runat="server">
					<div class="form-group">
						<input class="form-control" id="Username" runat="server" type="text" placeholder="Username..." autofocus/>
					</div>
					<div class="form-group">
                        <input class="form-control" id="Password" runat="server" type="password" placeholder="Password..."/>
					</div>
					<div class="form-group">
						<asp:Button CssClass="btn btn-default btn-login" ID="Button1" runat="server" Text="LOGIN" OnClick="Login_Click"/>
					</div>
				</form>
	
			</div>

			<div class="col-md-2 offset-md-1 text-center">
			</div>

		</div>
	</div>

    <script type="text/javascript" src="/Scripts/custom/jquery-2.2.3.js"></script>
    <script type="text/javascript" src="/Scripts/custom/tether.js"></script>
    <script type="text/javascript" src="/Scripts/custom/mdb.js"></script>
    <script type="text/javascript" src="/Scripts/custom/bootstrap.js"></script>
    <script type="text/javascript" src="/Scripts/custom/onload.js"></script>

</body>
</html>
