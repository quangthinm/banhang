<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>BRILLIANT Free Bootstrap Admin Template - WebThemez</title>
    <base href="{{asset('')}}"/>
    <!-- Bootstrap Styles-->
    <link href="admin_asset/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="admin_asset/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="admin_asset/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="admin_asset/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="admin_asset/js/Lightweight-Chart/cssCharts.css"> 
</head>

<body>
    <div id="wrapper">
        @include('admin.layout.header')
		
        @yield('content')

		@include('admin.layout.footer')
        <!-- /. PAGE INNER  -->
    <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="admin_asset/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="admin_asset/js/bootstrap.min.js"></script>
	 
    <!-- Metis Menu Js -->
    <script src="admin_asset/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="admin_asset/js/morris/raphael-2.1.0.min.js"></script>
    <script src="admin_asset/js/morris/morris.js"></script>
	
	
	<script src="admin_asset/js/easypiechart.js"></script>
	<script src="admin_asset/js/easypiechart-data.js"></script>
	
	 <script src="admin_asset/js/Lightweight-Chart/jquery.chart.js"></script>
	
    <!-- Custom Js -->
    <script src="admin_asset/js/custom-scripts.js"></script>

      
    <!-- Chart Js -->
    <script type="text/javascript" src="admin_asset/js/Chart.min.js"></script>  
    <script type="text/javascript" src="admin_asset/js/chartjs.js"></script> 
    <script src="http://cdnjs.cloudflare.com/ajax/libs/ckeditor/4.2/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('productderc');
        CKEDITOR.replace('productdetail');
    </script>
</body>

</html>