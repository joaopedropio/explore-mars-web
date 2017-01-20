<html>
<head>
  <title>P5</title>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/p5.js/0.5.6/p5.js"></script>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/p5.js/0.5.6/addons/p5.dom.js"></script>
  <script type="text/javascript" charset="utf-8">

   quantx = ${martex};
   quanty = ${martey};
   canvasx = Math.floor(window.screen.width / 2);
   tamrect = Math.floor(canvasx / (quantx + 2));
   canvasy = tamrect * (quanty + 2);
   start = tamrect;
   cor = [255, 255, 255];

   function sleep(ms) {
	   return new Promise(resolve => setTimeout(resolve, ms));
	}
   
   function  setup()  {
     var canvas = createCanvas(canvasx,canvasy);
     canvas.parent('p5-draw');
   }

   function cartesiano(x, y) {
     rect(start + (x * tamrect), start + ((quanty - y - 1) * tamrect), tamrect, tamrect);
   }

   function probedraw(x, y, dir) {
	   startx = start + (x * tamrect);
	   starty = start + ((quanty - y - 1) * tamrect);
	   ajuste = tamrect / 12;
	   switch(dir){
	   	case 'N':triangle(startx + (tamrect /3),starty + (tamrect * 4 /6) + ajuste,startx + (tamrect / 2), starty + (tamrect/6) + ajuste,startx + (tamrect * 2 / 3), starty + (tamrect * 4/6) + ajuste); break;
	   	case 'S':triangle(startx + (tamrect /3),starty + (tamrect / 3) - ajuste,startx + (tamrect /2), starty + (tamrect * 5/6) - ajuste,startx + (tamrect * 2 / 3), starty + (tamrect / 3) - ajuste); break;
	   	case 'E':triangle(startx + (tamrect /3),starty + (tamrect / 3),startx + (tamrect / 3), starty + (tamrect*2/3),startx + (tamrect * 5/6), starty + (tamrect /2)); break;
	   	case 'W':triangle(startx + (tamrect /6),starty + (tamrect /2) + ajuste,startx + (tamrect *2/3), starty + (tamrect/3) + ajuste,startx + (tamrect * 2 / 3), starty + (tamrect * 2/ 3) + ajuste); break;
	   } 
   }
   
   function blank() {
     for(i = 0; i < quantx; i++) {
       for(j = 0; j < quanty; j++) {
         //fill(i * 10, j * 10, i * j * 3);
         cartesiano(i, j);
       }
     }
   }

   function draw() {
     background(50);
     fill(cor[0], cor[1], cor[2]);
     blank();
     viado = "${message}";
     cusao = viado.split(" ").map(function(item) {
    	    return parseInt(item, 10);
     });
     
     for(i=0; i < cusao.length; i = i+3) {
    	 sleep(5000);
    	fill(100, 100, 100);
    	cartesiano(cusao[i], cusao[i+1]);
    	fill(250, 250, 250);
     	probedraw(cusao[i], cusao[i+ 1], String.fromCharCode(cusao[i + 2]));
     }
     fill(50, 50, 50);
     probedraw(${iniciox}, ${inicioy}, '${iniciodir}');
	 fill(255, 0, 0);
	 last = "${response}";
	 last = last.split(" ").map(function(item){
		 return parseInt(item, 10);
	 }) ;
     probedraw(last[0], last[1], String.fromCharCode(last[2]));
     frase = "(" + last[0] + ", " + last[1] + ") " + String.fromCharCode(last[2]);
 	 document.getElementById("position").innerHTML = "Posiçao de Entrada: (" + ${iniciox} + ", " + ${inicioy} + ")<br>" + "Posiçao de Parada: " + frase;
   }
 </script>
</head>
<body>
<div class="container-fluid">
	<div class="row col-md-offset2 col-md-6 col-md-offset-4">
		<div id="position">
			
		</div>
		<div class="row ">
			<div id="p5-draw">
			</div>
		</div>
		<div class="row">
			<form action="index.jsp">
			  <div class="form-group">
			  	<div class="row col-md-offset-3 col-md-6 col-md-offset-3 col-sm-offset-2 col-sm-8 col-sm-offset-2">
				  	<input type="submit" class="form-control" value='Voltar'>
			  	</div>
			  </div>
			</form>
		</div>
	</div>
</div>
</body>

</html>
