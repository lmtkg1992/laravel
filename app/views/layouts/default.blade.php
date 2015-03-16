<!DOCTYPE html>
<html lang="en-GB">
<head>

  
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, minimal-ui">
   {{ HTML::style('css/bootstrap.min.css') }}

   {{ HTML::script('js/jquery-2.1.3.min.js') }}

   {{ HTML::script('js/bootstrap.min.js') }}

   {{ HTML::script('js/bootstrap-typeahead.js') }}
   
   {{ HTML::style('css/style.css') }}

</head>
<body>
    @include('includes.head')

    

	<div class="container">
	    
		<div class="row">

	    	<!-- <div id="content-holder">         -->
	        <div class="col-xs-12 col-sm-12 col-md-9">   
		
				    @yield('content')
		    </div>
		    <!-- </div> -->
		    <!-- </div> -->
		    <div class="col-xs-12 col-sm-12 col-md-3">
		    
		    	@include('includes.topusers')
		    	@include('includes.sidebar')

		    	
		    </div>
	    </div>
	  
	  
    <!-- </div> -->
    </div>
   
</body>
</html>