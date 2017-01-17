import java.util.Scanner;
public class ExploreMars {
  public static void main(String[] args) {
	Mars marte = new Mars();
    Probe sonda = new Probe();
	Scanner	sc = new Scanner(System.in);
	marte.x = sc.nextInt();
	marte.y = sc.nextInt();
    while(sc.hasNext()) {
    	sonda.x = sc.nextInt();
    	sonda.y = sc.nextInt();
    	sonda.dir = sc.next().charAt(0);
    	sonda.action(sc.next());
    	System.out.println(sonda.response());
    }
    sc.close();
  }
}
