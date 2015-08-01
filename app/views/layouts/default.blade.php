<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, minimal-ui">


   {{ HTML::script('js/jquery-2.1.3.min.js') }}

   {{ HTML::script('js/bootstrap.min.js') }}

   {{ HTML::script('js/jquery-ui.min.js') }}

   {{ HTML::script('js/tag-it.js') }}
   
  <!--  {{ HTML::script('js/bootstrap.file-input.js') }} -->

   {{ HTML::script('js/bootstrap-typeahead.js') }}

   {{ HTML::style('css/bootstrap.min.css') }}
   
   {{ HTML::style('css/jquery-ui.css') }}

   {{ HTML::style('css/jquery.tagit.css') }}

   {{ HTML::style('css/style.css') }}

   {{ HTML::style('css/mobile_style.css') }}
   

</head>
<body>
    @include('includes.head')

    

	<div class="container">
	    
		<div class="row">

	    	<!-- <div id="content-holder">         -->
	        <div class="col-xs-12 col-sm-12 col-md-8">   
		
				    @yield('content')
		    </div>
		    <!-- </div> -->
		    <!-- </div> -->
		    <div class="col-xs-12 col-sm-12 col-md-4">
		    
		    	@include('includes.topusers')
		    	@include('includes.sidebar')

		    	
		    </div>
	    </div>
	  
	  
    <!-- </div> -->
    </div>
   
</body>
</html>