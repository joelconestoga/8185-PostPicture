<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Home</title>
	<link rel="stylesheet" href="~/Content/custom/bootstrap.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="~/Content/custom/mdb.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="~/Content/custom/style.css" type="text/css" media="screen" />
</head>
<body class="body-background">

	<div class="container z-depth-5 dashboard-container wow slideInDown">
	
		<div class="row">
			<div class="col-md-12 text-center dashboard-heading">
				<h1>Hello <%: Session["Username"]%></h1>
			</div>
		</div>
	
		<div class="row">

			<div class="col-md-12 offset-md-1 text-center">

				<form id="form1" runat="server">

					<!-- Row for table starts -->
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">	
								<table class="table">
									<thead>
										<tr>
											<th><i class="fa fa-calendar" aria-hidden="true"></i>Option</th>
											<th><i class="fa fa-info-circle" aria-hidden="true"></i>Details</th>
										</tr>
									</thead>
									<tbody id="tableBody">
										<tr>
											<td>Who are you?</td>
											<td>
												<asp:RadioButtonList CssClass="radio-inline" RepeatDirection="Horizontal" ID="Gender" runat="server">
													<asp:ListItem Selected="True">Boy</asp:ListItem>
													<asp:ListItem>Girl</asp:ListItem>
												</asp:RadioButtonList>
											</td>
										</tr>
										<tr>
											<td>Check some hobbies</td>
											<td>
												<asp:Button class="btn btn-sm btn-default waves-effect view-detail-button" 
													ID="Button4" runat="server" Text="HOBBIES" OnClick="Hobbies_Click" />
											</td>
										</tr>
										<tr>
											<td>Check some places</td>
											<td>
												<asp:Button class="btn btn-sm btn-default waves-effect view-detail-button" 
													ID="Button5" runat="server" Text="PLACES..." OnClick="Places_Click"/>
											</td>
										</tr>
										<tr>
											<td>Check some pictures</td>
											<td>
												<asp:Button class="btn btn-sm btn-default waves-effect view-detail-button" 
													ID="Button6" runat="server" Text="BLOG" OnClick="Blog_Click"/>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- /.Row for table ends -->

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
