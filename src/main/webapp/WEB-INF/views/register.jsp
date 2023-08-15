<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="layou/layou2.jsp"/>
<meta charset="UTF-8">
<title>V-shopper Register</title>
</head>
<body>
		<jsp:include page="layou/layou1.jsp"/>
		<jsp:include page="layou/layou3.jsp"/>
		<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>New User Register!</h2>
						<h4>${message}</h4>
						<form method="get" action="/home/register" modelAttribute="item">
							<input type="text" name="username" placeholder="Name"/>
							<input type="text" name="fullname"placeholder="FullName"/>
							<input type="email" name="email" placeholder="Email Address"/>
							<input type="password" name="password" placeholder="Password"/>
							<input type="file" name="photo">
							<div class="file-upload-content">
								<img class="file-upload-image" src="#" alt="your image" />
								<div class="image-title-wrap">
									
								</div>
							</div>
							<button type="submit" class="site-btn register-btn" formaction="/home/register/create">REGISTER</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	
		<jsp:include page="layou/layou4.jsp"/>
</body>
  <script>
	$(function() {
		$("#slider-range").slider({
			range : true,
			min : 0,
			max : 200,
			values : [0, 0],
			slide : function(event, ui) {
				$( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
				$("#amount_start").val(ui.values[0]);
				$("#amount_end").val(ui.values[1]);
			}
		});
		/* $("#amount").val(
				"$" + $("#slider-range").slider("values", 0) + " - $"
						+ $("#slider-range").slider("values", 1)); */
	});
	
	function readURL(input) {
		  if (input.files && input.files[0]) {

		    var reader = new FileReader();

		    reader.onload = function(e) {
		      $('.image-upload-wrap').hide();

		      $('.file-upload-image').attr('src', e.target.result);
		      $('.file-upload-content').show();

		      $('.image-title').html(input.files[0].name);
		    };

		    reader.readAsDataURL(input.files[0]);

		  } else {
		    removeUpload();
		  }
		}

		function removeUpload() {
		  $('.file-upload-input').replaceWith($('.file-upload-input').clone());
		  $('.file-upload-content').hide();
		  $('.image-upload-wrap').show();
		}
		$('.image-upload-wrap').bind('dragover', function () {
		        $('.image-upload-wrap').addClass('image-dropping');
		    });
		    $('.image-upload-wrap').bind('dragleave', function () {
		        $('.image-upload-wrap').removeClass('image-dropping');
		});
	</script>
</html>