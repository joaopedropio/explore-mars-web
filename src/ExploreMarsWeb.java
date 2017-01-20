import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExploreMarsWeb extends HttpServlet { 
  protected void doGet(HttpServletRequest request, 
      HttpServletResponse response) throws ServletException, IOException 
  {
    // reading the user input
    int martex = Integer.parseInt(request.getParameter("martex"));
    int martey = Integer.parseInt(request.getParameter("martey"));
    int sondax = Integer.parseInt(request.getParameter("sondax"));
    int sonday = Integer.parseInt(request.getParameter("sonday"));
    char sondadir = request.getParameter("sondadir").charAt(0);
    String sondaaction = request.getParameter("sondaaction");
    Mars marte = new Mars();
    Probe sonda = new Probe();
    marte.x = martex;
    marte.y = martey;
    sonda.x = sondax;
    sonda.y = sonday;
    sonda.dir = sondadir;
	String hist = sonda.action(sondaaction);
	String last = sonda.response();
	request.setAttribute("iniciox", sondax);
	request.setAttribute("martex", martex);
	request.setAttribute("martey", martey);
	request.setAttribute("inicioy", sonday);
	request.setAttribute("iniciodir", sondadir);
	request.setAttribute("message", hist);
	request.setAttribute("response", last);
    request.getRequestDispatcher("map.jsp").forward(request, response);
  }  
}
