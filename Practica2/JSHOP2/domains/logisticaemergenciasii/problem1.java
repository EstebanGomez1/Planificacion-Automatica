import java.util.LinkedList;
import JSHOP2.*;

public class problem1
{
	private static String[] defineConstants()
	{
		String[] problemConstants = new String[8];

		problemConstants[0] = "dron1";
		problemConstants[1] = "deposito";
		problemConstants[2] = "loc1";
		problemConstants[3] = "loc2";
		problemConstants[4] = "transportador1";
		problemConstants[5] = "comida";
		problemConstants[6] = "medicina";
		problemConstants[7] = "brazo1";

		return problemConstants;
	}

	private static void createState0(State s)	{
		s.add(new Predicate(0, 0, new TermList(TermConstant.getConstant(17), TermList.NIL)));
		s.add(new Predicate(1, 0, new TermList(TermConstant.getConstant(18), TermList.NIL)));
		s.add(new Predicate(1, 0, new TermList(TermConstant.getConstant(19), TermList.NIL)));
		s.add(new Predicate(1, 0, new TermList(TermConstant.getConstant(20), TermList.NIL)));
		s.add(new Predicate(4, 0, new TermList(TermConstant.getConstant(21), TermList.NIL)));
		s.add(new Predicate(12, 0, new TermList(TermConstant.getConstant(22), TermList.NIL)));
		s.add(new Predicate(12, 0, new TermList(TermConstant.getConstant(23), TermList.NIL)));
		s.add(new Predicate(7, 0, new TermList(TermConstant.getConstant(24), TermList.NIL)));
		s.add(new Predicate(2, 0, new TermList(TermConstant.getConstant(17), new TermList(TermConstant.getConstant(18), TermList.NIL))));
		s.add(new Predicate(5, 0, new TermList(TermConstant.getConstant(21), new TermList(TermConstant.getConstant(18), TermList.NIL))));
		s.add(new Predicate(16, 0, new TermList(TermConstant.getConstant(21), new TermList(new TermNumber(2.0), TermList.NIL))));
		s.add(new Predicate(6, 0, new TermList(TermConstant.getConstant(21), new TermList(new TermNumber(0.0), TermList.NIL))));
		s.add(new Predicate(15, 0, new TermList(TermConstant.getConstant(21), new TermList(TermConstant.getConstant(22), new TermList(new TermNumber(0.0), TermList.NIL)))));
		s.add(new Predicate(15, 0, new TermList(TermConstant.getConstant(21), new TermList(TermConstant.getConstant(23), new TermList(new TermNumber(0.0), TermList.NIL)))));
		s.add(new Predicate(10, 0, new TermList(TermConstant.getConstant(17), new TermList(TermConstant.getConstant(24), TermList.NIL))));
		s.add(new Predicate(8, 0, new TermList(TermConstant.getConstant(18), TermList.NIL)));
		s.add(new Predicate(3, 0, new TermList(new TermNumber(0.0), TermList.NIL)));
		s.add(new Predicate(13, 0, new TermList(TermConstant.getConstant(19), new TermList(TermConstant.getConstant(23), new TermList(new TermNumber(4.0), TermList.NIL)))));
		s.add(new Predicate(13, 0, new TermList(TermConstant.getConstant(19), new TermList(TermConstant.getConstant(22), new TermList(new TermNumber(2.0), TermList.NIL)))));
		s.add(new Predicate(14, 0, new TermList(TermConstant.getConstant(19), new TermList(new TermNumber(6.0), TermList.NIL))));
	}

	public static LinkedList<Plan> getPlans()
	{
		LinkedList<Plan> returnedPlans = new LinkedList<Plan>();
		TermConstant.initialize(25);

		Domain d = new logisticaemergenciasii();

		d.setProblemConstants(defineConstants());

		State s = new State(17, d.getAxioms());

		JSHOP2.initialize(d, s);

		TaskList tl;
		SolverThread thread;

		createState0(s);

		tl = new TaskList(1, true);
		tl.subtasks[0] = new TaskList(new TaskAtom(new Predicate(4, 0, TermList.NIL), false, false));

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