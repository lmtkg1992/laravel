<!DOCTYPE html>
<html lang="en-GB">
<head>

  

   {{ HTML::style('css/bootstrap.min.css') }}

   {{ HTML::script('js/jquery-2.1.3.min.js') }}

   {{ HTML::script('js/bootstrap.min.js') }}
   
   {{ HTML::style('css/main.css') }}

</head>
<body>
    @include('includes.head')

	<div id="container">
	    
		<div id="main">
	    	<div id="content-holder">        
		        <div id="content">   
		
				    @yield('content')
			    </div>
		    </div>
	    </div>
	    <div class="side-bar">
	    	@include('includes.sidebar')

	    	
	    </div>
	  
	  
    </div>
   
</body>
</html>