<!DOCTYPE html>
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
		style="font-weight: bold; border-bottom: 1px solid #198754; padding-right: 476px; margin-right: -492px; margin-bottom: 2px;">
		<div class="container-fluid">
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
								class="fas fa-sign-out-alt" style="font-size: 16px;"></i>Logout</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="row mt-5">
		<div class="col-md-8 offset-md-2">
			<form class="custom-form mt-5 mb-5 pt-0" action="/InsertData"
				style="box-shadow: inset 0px 0px 6px; width: 600px; height: 600px;">
				<h1 class="text-center mb-3 mt-3" style="text-shadow: 0px 0px 0px;">Product
					Master</h1>
				<div class="row form-group my-4 mx-4 mt-4">
					<div class="col-sm-4 label-column">
						<label class="col-form-label" for="name-input-field"
							style="font-size: 14px;">Product Group</label>
					</div>
					<div class="col-sm-6 input-column" name="productGroup">
						<select class="form-select">
							<optgroup label="This is a group">
								<option value="12" selected="">This is item 1</option>
								<option value="13">This is item 2</option>
								<option value="14">This is item 3</option>
							</optgroup>
						</select>
					</div>
				</div>
				<div class="row form-group my-4 mx-4">
					<div class="col-sm-4 label-column">
						<label class="col-form-label" for="email-input-field"
							style="font-size: 14px;">Product Code</label>
					</div>
					<div class="col-sm-6 input-column">
						<input class="form-control" type="text" name="productCode">
					</div>
				</div>
				<div class="row form-group my-4 mx-4">
					<div class="col-sm-4 label-column">
						<label class="col-form-label" for="pawssword-input-field"
							style="font-size: 14px;">Product Name</label>
					</div>
					<div class="col-sm-6 input-column">
						<input class="form-control" type="text input" name="productName">
					</div>
				</div>
				<div class="row form-group my-4 ms-4">
					<div class="col-sm-4 label-column">
						<label class="col-form-label" for="repeat-pawssword-input-field"
							style="font-size: 14px;">SAP Product Code</label>
					</div>
					<div class="col-sm-6 input-column">
						<input class="form-control" type="text input" name="sap"
							style="margin-left: -12px;">
					</div>
				</div>
				<div class="row form-group mx-3 ps-0 ms-4">
					<div class="col-sm-4 label-column">
						<label class="col-form-label" for="dropdown-input-field"
							style="font-size: 14px;">Status</label>
					</div>
					<div class="col-sm-4 input-column" name="status">
						<label class="switch"> <input type="checkbox"> <span
							class="slider round"></span>
						</label>
					</div>
				</div>
				<div class="row mx-4" style="margin-top: 30px;">
					<div class="col-md-4">
						<button class="btn btn-primary" type="Submit" value="Submit">Save</button>
					</div>
					<div class="col-md-4"
						style="margin-right: -5px; padding-left: 14px;">
						<button class="btn btn-primary text-center" type="button">Update</button>
					</div>
					<div class="col-md-4" style="margin-top: -7px;">
						<button class="btn btn-primary" type="button"
							style="margin-top: 30px;">Cancel</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../assets/js/header.js"></script>
</body>

</html>