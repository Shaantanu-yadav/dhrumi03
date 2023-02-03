<!DOCTYPE html>
<%@page import="com.gulbrandsen.Productmaster"%>
<%@page import="java.util.List"%>
<%@page import="com.gulbrandsen.controller.DbConnection"%>
<%@page import="com.gulbrandsen.ProductMasterDao"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>FMS</title>
<link rel="stylesheet"
	href="../../assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/fonts/fontawesome-all.min.css">
<link rel="stylesheet" href="../../assets/css/login.css">
<link rel="stylesheet"
	href="../../assets/css/Pretty-Registration-Form-.css">
<link rel="stylesheet"
	href="../../assets/css/Toggle-Switch-toggle-switch.css">
<link rel="stylesheet" href="../../assets/css/Toggle-Switch.css">
</head>

<body>
	<nav class="navbar navbar-light navbar-expand-md bg-light"
		style="font-weight: bold; border-bottom: 1px solid #198754;">
		<div class="container-fluid">
			<div class="container">
				<a class="navbar-brand" href="#" style="padding: 0;"><img
					height="40px" src="../../assets/img/GulbrandsenLogo.png"><span
					class="text-center"
					style="font-size: 1.2rem; font-weight: bold; margin-left: 0.5rem; text-align: center;">Container
						Tracking System</span><span
					style="font-size: 0.6rem; font-weight: bold; margin-left: 0.1rem;">(Ver
						1.0)</span></a>
				<button data-bs-toggle="collapse" class="navbar-toggler"
					data-bs-target="#navcol-1">
					<span class="visually-hidden">Toggle navigation</span><span
						class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navcol-1">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link active home" href="/">Masters</a></li>
						<li class="nav-item dropdown"><a
							class="dropdown-toggle nav-link" aria-expanded="true"
							data-bs-toggle="dropdown" href="#"><i class="fas fa-user"
								style="font-size: 23px;"></i>${username}</a>
							<div class="dropdown-menu" data-bs-popper="none">
								<a class="dropdown-item" href="/Logout"><i
									class="fas fa-sign-out-alt" style="font-size: 16px;"></i>Logout
								</a>
							</div></li>
					</ul>
				</div>
				<div>
					<div class="row">
						<div class="col">
							<h1 class="text-center">Product Master</h1>
							<div class="row">
								<div class="col text-end">
									<a href="productform.jsp">
										<button class="btn btn-primary text-center" type="button"
											style="width: 200px;">Add New</button>
									</a>
									<div class="container">
										<div class="row">
											<div class="col-md-4">
												<h5 class="text-start">
													Product Group<select
														style="padding-left: 0px; margin-left: 14px;">
														<optgroup label="Product Group">
															<option value="12" selected="">This is item 1</option>
															<option value="13">This is item 2</option>
															<option value="14">This is item 3</option>
														</optgroup>
													</select>
												</h5>
											</div>
											<div class="col-md-4">
												<h5>
													Product Code&nbsp;<input type="text"
														style="width: 100px; opacity: 1;">&nbsp;
												</h5>
											</div>
											<div class="col-md-4">
												<h5>
													Product Name&nbsp;<input type="text" style="width: 150px;">
												</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>Id</th>
									<th>Product Code</th>
									<th>Product Name</th>
									<th>Group</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								ProductMasterDao dao = new ProductMasterDao(DbConnection.getconn());
								List<Productmaster> showRecord = dao.selectAll();
								for (Productmaster pro : showRecord) {
								%>
								<tr>
									<td><%=pro.getProductGroup()%></td>
									<td><%=pro.getProductCode()%></td>
									<td><%=pro.getProductName()%></td>
									<td><%=pro.getSap()%></td>
									<td><%=pro.getStatus()%></td>
									<td><a href="UpdateForm.jsp"><button>Edit</button></a></td>
									
								</tr>
								<%
								}
								%>

							</tbody>

						</table>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../assets/js/header.js"></script>
</body>

</html>