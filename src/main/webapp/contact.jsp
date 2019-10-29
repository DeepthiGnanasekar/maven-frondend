<head>
<script>
function goBack() {
	  window.history.back();
	}
</script>
	</head><body>
	<div class="container">
		<jsp:include page="loginHeader.jsp"></jsp:include>
		<h1 style="background-color: SkyBlue;">Welcome to Revature
			WaterCan Plant Services</h1>
	</div>
</body>
</html>
<section class="mb-4">

	<h2 class="h1-responsive font-weight-bold text-center my-4">Contact
		us</h2>
	<p class="text-center w-responsive mx-auto mb-5">Do you have any
		questions? Please do not hesitate to contact us directly. Our team
		will come back to you within a matter of hours to help you.</p>

	<div class="row">

		<div class="col-md-9 mb-md-0 mb-5">
			<form id="contact-form" name="contact-form" action="mail.php"
				method="POST">

				<div class="row">

					<div class="col-md-6">
						<div class="md-form mb-0">
							<input type="text" id="name" name="name" class="form-control">
							<label for="name" class="">Your name</label>
						</div>
					</div>

					<div class="col-md-6">
						<div class="md-form mb-0">
							<input type="text" id="email" name="email" class="form-control">
							<label for="email" class="">Your email</label>
						</div>
					</div>

				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="md-form mb-0">
							<input type="text" id="subject" name="subject"
								class="form-control"> <label for="subject" class="">Subject</label>
						</div>
					</div>
				</div>

				<div class="row">

					<div class="col-md-12">

						<div class="md-form">
							<textarea type="text" id="message" name="message" rows="2"
								class="form-control md-textarea"></textarea>
							<label for="message">Your message</label>
						</div>
					</div>
				</div>
			</form>

			<div class="text-center">
				<a class="btn btn-success"
					onclick="window.location.href = '?pageName=ThankYou.jsp';">Send</a><br><br><br>
			</div>
			<div class="status"></div>
		</div>
		<!--Grid column-->

		<!--Grid column-->
		<div class="col-md-3 text-center">
			<ul class="list-unstyled mb-0">
				<li><i class="fas fa-map-marker-alt fa-2x"></i>
					<p>
						<B>CONTACT DETAILS :</B>
					</p>
					<p>India, Chennai</p></li>

				<li><i class="fas fa-phone mt-4 fa-2x"></i>
					<p>+91 8778532378</p></li>

				<li><i class="fas fa-envelope mt-4 fa-2x"></i>
					<p>contact@waterCanapp.com</p></li>
			</ul>
		</div>
	</div>
	<div class="row justify-content-center" style="margin: 0;">
					<div class="col-md-4 text-center">
						<div class="card text-center mb-4" style="width: 18rem;">
							<div class="card-body">
								<h5 class="card-title">Home</h5>
								<p class="card-text">Back To HOME</p>
								<a onclick="goBack()" class="btn btn-warning">GO Back</a>
							</div>
						</div>
					</div>
				</div>
</section>
