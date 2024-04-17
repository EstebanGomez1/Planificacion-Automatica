import java.util.LinkedList;
import JSHOP2.*;

public class problem
{
	private static String[] defineConstants()
	{
		String[] problemConstants = new String[8];

		problemConstants[0] = "persona1";
		problemConstants[1] = "comida";
		problemConstants[2] = "caja1";
		problemConstants[3] = "deposito";
		problemConstants[4] = "b";
		problemConstants[5] = "dron1";
		problemConstants[6] = "brazo1";
		problemConstants[7] = "brazo2";

		return problemConstants;
	}

	private static void createState0(State s)	{
		s.add(new Predicate(11, 0, new TermList(TermConstant.getConstant(16), new TermList(TermConstant.getConstant(17), TermList.NIL))));
		s.add(new Predicate(6, 0, new TermList(TermConstant.getConstant(18), new TermList(TermConstant.getConstant(19), TermList.NIL))));
		s.add(new Predicate(13, 0, new TermList(TermConstant.getConstant(16), new TermList(TermConstant.getConstant(20), TermList.NIL))));
		s.add(new Predicate(2, 0, new TermList(TermConstant.getConstant(21), new TermList(TermConstant.getConstant(19), TermList.NIL))));
		s.add(new Predicate(12, 0, new TermList(TermConstant.getConstant(18), new TermList(TermConstant.getConstant(17), TermList.NIL))));
		s.add(new Predicate(7, 0, new TermList(TermConstant.getConstant(21), new TermList(TermConstant.getConstant(22), TermList.NIL))));
		s.add(new Predicate(7, 0, new TermList(TermConstant.getConstant(21), new TermList(TermConstant.getConstant(23), TermList.NIL))));
	}

	public static LinkedList<Plan> getPlans()
	{
		LinkedList<Plan> returnedPlans = new LinkedList<Plan>();
		TermConstant.initialize(24);

		Domain d = new logisticaemergencias();

		d.setProblemConstants(defineConstants());

		State s = new State(16, d.getAxioms());

		JSHOP2.initialize(d, s);

		TaskList tl;
		SolverThread thread;

		createState0(s);

		tl = new TaskList(1, true);
		tl.subtasks[0] = new TaskList(new TaskAtom(new Predicate(0, 0, new TermList(TermConstant.getConstant(16), new TermList(TermConstant.getConstant(17), TermList.NIL))), false, false));

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