public class Probe{
  public int x;
  public int y;
  public char dir;

  private String cards = "NESW";

  void action(String diraction) {
	int j = diraction.length();
	char c;
	for(int i = 0; i < j; i++) {
	  c = diraction.charAt(i);
	  if(c == 'M')
		move();
	  else
		turn(c);
	}
  }

  public void move() {
    // mx para posicao x de marte e my para posicao y
    int mx = 100, my = 100, px = this.x, py = this.y, posx = 0, posy = 0;
    switch(this.dir) {
      case 'N': posy++; break;
      case 'E': posx++; break;
      case 'S': posy--; break;
      case 'W': posx--; break;
    }

    if (px + posx < mx && py + posy < my) {
      this.y += posy;
      this.x += posx;
    }
  }

  public void turn(char side) {
    int d = this.cards.indexOf(this.dir) + 4;

    if (side == 'R')
      d++;
    else
      d--;

    this.dir = this.cards.charAt(d % 4);
  }
  
  void show() {
    System.out.print("\n" + this.x + " " + this.y + " " + this.dir);
  }
  
  String response() {
	String answer = this.x + " " + this.y + " " + this.dir;
	return answer;
  }
}
