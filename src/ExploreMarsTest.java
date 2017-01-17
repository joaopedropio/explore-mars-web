import static org.junit.Assert.*;

import org.junit.Test;

public class ExploreMarsTest {

	
	public void test() {
		fail("Not yet implemented");
	}
	
	@Test
	public void testSonda1() {
		Mars marte = new Mars();
		marte.x = 5;
		marte.y = 5;
		Probe sonda = new Probe();
		sonda.x = 1;
		sonda.y = 2;
		sonda.dir = 'N';
		sonda.action("LMLMLMLMM");
		assertEquals("1 3 N", sonda.response());
	}
	
	@Test
	public void testSonda2() {
		Mars marte = new Mars();
		marte.x = 5;
		marte.y = 5;
		Probe sonda = new Probe();
		sonda.x = 3;
		sonda.y = 3;
		sonda.dir = 'E';
		sonda.action("MMRMMRMRRM");
		assertEquals("5 1 E", sonda.response());
	}
}
