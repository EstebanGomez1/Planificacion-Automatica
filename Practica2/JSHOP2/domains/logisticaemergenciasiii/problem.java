import java.util.LinkedList;
import JSHOP2.*;

public class problem
{
	private static String[] defineConstants()
	{
		String[] problemConstants = new String[11];

		problemConstants[0] = "dron1";
		problemConstants[1] = "deposito";
		problemConstants[2] = "loc";
		problemConstants[3] = "loc1";
		problemConstants[4] = "loc2";
		problemConstants[5] = "comida";
		problemConstants[6] = "medicina";
		problemConstants[7] = "brazo1";
		problemConstants[8] = "t2";
		problemConstants[9] = "transportador";
		problemConstants[10] = "t3";

		return problemConstants;
	}

	private static void createState0(State s)	{
		s.add(new Predicate(13, 0, new TermList(TermConstant.getConstant(15), TermList.NIL)));
		s.add(new Predicate(10, 0, new TermList(TermConstant.getConstant(20), TermList.NIL)));
		s.add(new Predicate(10, 0, new TermList(TermConstant.getConstant(21), TermList.NIL)));
		s.add(new Predicate(14, 0, new TermList(TermConstant.getConstant(22), TermList.NIL)));
		s.add(new Predicate(0, 0, new TermList(TermConstant.getConstant(15), new TermList(TermConstant.getConstant(16), TermList.NIL))));
		s.add(new Predicate(2, 0, new TermList(TermConstant.getConstant(23), new TermList(TermConstant.getConstant(16), TermList.NIL))));
		s.add(new Predicate(12, 0, new TermList(TermConstant.getConstant(23), new TermList(new TermNumber(50.0), TermList.NIL))));
		s.add(new Predicate(3, 0, new TermList(TermConstant.getConstant(23), new TermList(new TermNumber(0.0), TermList.NIL))));
		s.add(new Predicate(11, 0, new TermList(TermConstant.getConstant(23), new TermList(TermConstant.getConstant(20), new TermList(new TermNumber(0.0), TermList.NIL)))));
		s.add(new Predicate(11, 0, new TermList(TermConstant.getConstant(23), new TermList(TermConstant.getConstant(21), new TermList(new TermNumber(0.0), TermList.NIL)))));
		s.add(new Predicate(2, 0, new TermList(TermConstant.getConstant(25), new TermList(TermConstant.getConstant(16), TermList.NIL))));
		s.add(new Predicate(12, 0, new TermList(TermConstant.getConstant(25), new TermList(new TermNumber(100.0), TermList.NIL))));
		s.add(new Predicate(3, 0, new TermList(TermConstant.getConstant(25), new TermList(new TermNumber(0.0), TermList.NIL))));
		s.add(new Predicate(11, 0, new TermList(TermConstant.getConstant(25), new TermList(TermConstant.getConstant(20), new TermList(new TermNumber(0.0), TermList.NIL)))));
		s.add(new Predicate(11, 0, new TermList(TermConstant.getConstant(25), new TermList(TermConstant.getConstant(21), new TermList(new TermNumber(0.0), TermList.NIL)))));
		s.add(new Predicate(8, 0, new TermList(TermConstant.getConstant(19), new TermList(TermConstant.getConstant(20), new TermList(new TermNumber(30.0), TermList.NIL)))));
		s.add(new Predicate(8, 0, new TermList(TermConstant.getConstant(19), new TermList(TermConstant.getConstant(21), new TermList(new TermNumber(70.0), TermList.NIL)))));
		s.add(new Predicate(8, 0, new TermList(TermConstant.getConstant(18), new TermList(TermConstant.getConstant(20), new TermList(new TermNumber(20.0), TermList.NIL)))));
		s.add(new Predicate(8, 0, new TermList(TermConstant.getConstant(18), new TermList(TermConstant.getConstant(21), new TermList(new TermNumber(30.0), TermList.NIL)))));
		s.add(new Predicate(9, 0, new TermList(TermConstant.getConstant(18), new TermList(new TermNumber(50.0), TermList.NIL))));
		s.add(new Predicate(9, 0, new TermList(TermConstant.getConstant(19), new TermList(new TermNumber(100.0), TermList.NIL))));
		s.add(new Predicate(5, 0, new TermList(TermConstant.getConstant(20), new TermList(new TermNumber(200.0), TermList.NIL))));
		s.add(new Predicate(5, 0, new TermList(TermConstant.getConstant(21), new TermList(new TermNumber(200.0), TermList.NIL))));
		s.add(new Predicate(6, 0, new TermList(TermConstant.getConstant(15), new TermList(TermConstant.getConstant(22), TermList.NIL))));
		s.add(new Predicate(4, 0, new TermList(TermConstant.getConstant(16), TermList.NIL)));
		s.add(new Predicate(1, 0, new TermList(new TermNumber(0.0), TermList.NIL)));
	}

	public static LinkedList<Plan> getPlans()
	{
		LinkedList<Plan> returnedPlans = new LinkedList<Plan>();
		TermConstant.initialize(26);

		Domain d = new logisticaemergenciasiii();

		d.setProblemConstants(defineConstants());

		State s = new State(15, d.getAxioms());

		JSHOP2.initialize(d, s);

		TaskList tl;
		SolverThread thread;

		createState0(s);

		tl = new TaskList(1, true);
		tl.subtasks[0] = new TaskList(new TaskAtom(new Predicate(5, 0, TermList.NIL), false, false));

		thread = new SolverThread(tl, 1);
		thread.start();

		try {
			while (thread.isAlive())
				Thread.sleep(500);
		} catch (InterruptedException e) {
		}

		returnedPlans.addAll( thread.getPlans() );

		return returnedPlans;
	}

	public static LinkedList<Predicate> getFirstPlanOps() {
		return getPlans().getFirst().getOps();
	}
}