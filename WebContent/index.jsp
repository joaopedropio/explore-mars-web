<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Explore Mars</title>
		<script
  			src="https://code.jquery.com/jquery-3.1.1.min.js"
  			integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  			crossorigin="anonymous"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	</head>	
	<body>
	<div class="container-fluid">
 	  <div class="row">		
	  <div class="col-md-offset-4 col-md-4 col-md-offset-4 col-sm-offset-3 col-sm-6 col-sm-offset-3">
	<form action="ExploreMarsWebServlet">
	  <div class="form-group">
	  	<div class="row col-md-offset-3 col-md-6 col-md-offset-3 col-sm-offset-2 col-sm-8 col-sm-offset-2">
		    <label>Marte x</label>
		    <input type="text" class="form-control" name="martex" value='10'>
	  	</div>
	  </div>
	  <div class="form-group">
	  	<div class="row col-md-offset-3 col-md-6 col-md-offset-3 col-sm-offset-2 col-sm-8 col-sm-offset-2">
		    <label for="text-center">Marte y</label>
		    <input type="text" class="form-control" name="martey" value='10'>
	  	</div>
	  </div>
	  	  <div class="form-group">
	  	<div class="row col-md-offset-3 col-md-6 col-md-offset-3 col-sm-offset-2 col-sm-8 col-sm-offset-2">
		    <label for="text-center">Sonda x</label>
		    <input type="text" class="form-control" name="sondax" value='1'>
	  	</div>
	  </div>
	  	  <div class="form-group">
	  	<div class="row col-md-offset-3 col-md-6 col-md-offset-3 col-sm-offset-2 col-sm-8 col-sm-offset-2">
		    <label for="text-center">Sonda y</label>
		    <input type="text" class="form-control" name="sonday" value='2'>
	  	</div>
	  </div>
	  	  <div class="form-group">
	  	<div class="row col-md-offset-3 col-md-6 col-md-offset-3 col-sm-offset-2 col-sm-8 col-sm-offset-2">
		    <label for="text-center">Sonda Direcao</label>
		    <input type="text" class="form-control" name="sondadir" value='N'>
	  	</div>
	  </div>
	  	  	  <div class="form-group">
	  	<div class="row col-md-offset-3 col-md-6 col-md-offset-3 col-sm-offset-2 col-sm-8 col-sm-offset-2">
		    <label for="text-center">Sonda Movimento</label>
		    <input type="text" class="form-control" name="sondaaction" value='LMLMLMLMMRMLMRMLRML'>
	  	</div>
	  </div>
	  <div class="form-group">
	  	<div class="row col-md-offset-3 col-md-6 col-md-offset-3 col-sm-offset-2 col-sm-8 col-sm-offset-2">
	  		<br>
		   <button type="submit" class="btn btn-primary">Submit</button>
	  	</div>
	  </div>
	</form>
	</div>
	</div>
	</div>
  </body>	
</html>