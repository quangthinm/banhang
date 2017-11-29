<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>StyList - Responsive HTML5 Template</title>
		<base href="{{asset('')}}"
		<meta name="keywords" content="HTML5 Template">
		<meta name="description" content="StyList - Responsive HTML5 Template">
		<meta name="author" content="etheme.com">
		<link rel="shortcut icon" href="asset/images/favicon.ico">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="asset/css/bootstrap.min.css">
		<link rel="stylesheet" href="asset/css/slick.min.css">
		<link rel="stylesheet" type="text/css" href="asset/css/settings.min.css" media="screen" />
		<link rel="stylesheet" href="asset/css/template.css">
		<link rel="stylesheet" href="http://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css">
	</head>
	<body>
		@include('layout.header')
		<!-- Content -->
			@yield('content')
		<!-- Content -->
		@include('layout.footer')
		
		<script src="asset/js/jquery-2.1.4.min.js"></script>
		<script src="asset/js/bootstrap.min.js"></script>
		<script src="asset/js/jquery.plugin.min.js"></script>
		<script src="asset/js/jquery.countdown.min.js"></script>
		<script src="asset/js/slick.min.js"></script>
		<script src="asset/js/jquery.themepunch.tools.min.js"></script>
		<script src="asset/js/jquery.themepunch.revolution.min.js"></script>
		<script src="asset/js/panelmenu.js"></script>
		<script src="asset/js/quick-view.js"></script>
		<script src="asset/js/main.js"></script>
		
	</body>
</html>