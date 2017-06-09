<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Home</title>
	<link rel="stylesheet" href="~/Content/custom/bootstrap.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="~/Content/custom/mdb.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="~/Content/custom/style.css" type="text/css" media="screen" />
</head>
<body class="body-background">

	<div class="container z-depth-5 authentication-block wow bounceIn">
	
		<div class="row">
			<div class="col-md-12 text-center dashboard-heading">
				<h1>Upload some pictures...</h1>
			</div>
		</div>
	
		<div class="row">

			<div class="col-md-12 text-center">

				<form id="form1" runat="server">
					
            		<div class="row">
    				    <div class="col-md-12 text-center">
	                        <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Ridge" Width="309px" />
                        </div>
                    </div>
            		<div class="row">
    				    <div class="col-md-4 offset-md-4 text-center">
						    <asp:TextBox ID="Post_Text" runat="server" placeholder="Comment about your picture..." 
                                BorderStyle="Ridge" Columns="15"></asp:TextBox>
						    <asp:Button CssClass="btn btn-sm btn-default waves-effect view-detail-button" ID="Upload_Button" 
                                runat="server" OnClick="Upload_Click" Text="UPLOAD" />
                        </div>
                    </div>

					<hr />

					<div>
						<asp:Repeater ID="RepeaterImages" runat="server" >
						<ItemTemplate>
			
        					<hr />
			
							<div>
								<asp:Image ID="Image" class="my-images" runat="server" ImageUrl='<%# (Container.DataItem as Post).ImageName %>' />
							</div>
							<div class="row">
    				            <div class="col-md-9 text-right">
                                    <h3 runat="server"> <%# (Container.DataItem as Post).Comment %>
                                        <span class="btn-group">
						                    <asp:Button CssClass="btn btn-sm btn-danger waves-effect view-detail-button" ID="Upload_Button" 
                                                runat="server" OnClick="Delete_Click" Text="DELETE" 
                                                CommandArgument="<%# (Container.DataItem as Post).ImageName %>" />
                                        </span>
                                    </h3>
    							</div>
							</div>
	
						</ItemTemplate>
						</asp:Repeater>


					</div>

				</form>

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
