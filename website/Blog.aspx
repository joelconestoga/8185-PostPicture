<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="_Default" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Home</title>
	<link rel="stylesheet" href="~/Content/custom/bootstrap.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="~/Content/custom/mdb.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="~/Content/custom/style.css" type="text/css" media="screen" />
</head>
<body class="body-background">

    <!-- Container starts -->
	<div class="container z-depth-5 authentication-block dashboard-container wow bounceIn">
	
        <!-- Row for HEADER starts -->
		<div class="row">
			<div class="col-md-12 text-center dashboard-heading">
				<h1>Upload some pictures...</h1>
			</div>
		</div>
	
        <!-- Row for POSTS starts -->
		<div class="row">

            <!-- Div MAIN starts -->
			<div class="col-md-12 text-center">

				<form id="form1" runat="server">
					
					<hr />

					<!-- Row for CHOOSE FILE starts -->
					<div class="row">
						<div class="col-md-12" "text-center">
							<asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Ridge" Width="309px" BackColor="White"/>
						</div>
					</div>
					
					<!-- Row for COMMENT/UPLOAD starts -->
					<div class="row">
						<div class="col-md-12 text-center">
							<span class="btn-group">
								<asp:TextBox ID="Post_Text" runat="server" placeholder="Comment about your picture..." 
									BorderStyle="Ridge" Columns="25" BackColor="White" ></asp:TextBox>
								<asp:Button ID="Upload_Button" 
									runat="server" OnClick="Upload_Click" Text="Upload" />
							</span>
						</div>
					</div>

					<!-- REPEATER -->
					<asp:Repeater ID="RepeaterImages" runat="server" >
					<ItemTemplate>
			
						<hr />
		
						<!-- Row for DELETE starts -->
						<div class="row">
							<div class="col-md-3">
							</div>
							<div class="col-md-6 text-right">
								<asp:Button CssClass="btn-danger waves-effect delete-button"
									runat="server" OnClick="Delete_Click" Text="X" 
									CommandArgument="<%# (Container.DataItem as Post).ImageName %>" />
							</div>
							<div class="col-md-3">
							</div>
						</div><!-- /.Row for DELETE ends-->

						<!-- Row for IMAGE starts -->
						<div class="row">
							<div class="col-md-3">
							</div>
							<div class="col-md-6 text-center">
								<asp:Image ID="Image" class="my-images" runat="server" ImageUrl='<%# (Container.DataItem as Post).ImageName %>' />
							</div>
							<div class="col-md-3">
							</div>
						</div><!-- /.Row for IMAGE ends-->
							
						<!-- Row for COMMENT starts -->
						<div class="row">
							<div class="col-md-3">
							</div>
							<div class="col-md-6 text-center">
								<h3 runat="server"><%# (Container.DataItem as Post).Comment %></h3>
							</div>
							<div class="col-md-3">
							</div>
						</div><!-- /.Row for COMMENT ends-->
	
					</ItemTemplate>
					</asp:Repeater><!-- REPEATER -->

				</form>

			</div><!-- Div MAIN ends -->
		
        </div><!-- /.Row for POSTS ends-->
	
    </div><!-- /.Container ends-->


	<script type="text/javascript" src="/Scripts/custom/jquery-2.2.3.js"></script>
	<script type="text/javascript" src="/Scripts/custom/tether.js"></script>
	<script type="text/javascript" src="/Scripts/custom/mdb.js"></script>
	<script type="text/javascript" src="/Scripts/custom/bootstrap.js"></script>
	<script type="text/javascript" src="/Scripts/custom/onload.js"></script>
</body>
</html>
