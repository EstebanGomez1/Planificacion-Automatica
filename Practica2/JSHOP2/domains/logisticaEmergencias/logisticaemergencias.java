import JSHOP2.*;

class Precondition0 extends Precondition
{
	Precondition[] p;
	Term[][] b;

	public Precondition0(Term[] unifier)
	{
		p = new Precondition[4];
		p[0] = new PreconditionAtomic(new Predicate(0, 3, new TermList(TermVariable.getVariable(0), TermList.NIL)), unifier);
		p[1] = new PreconditionAtomic(new Predicate(1, 3, new TermList(TermVariable.getVariable(1), TermList.NIL)), unifier);
		p[2] = new PreconditionAtomic(new Predicate(1, 3, new TermList(TermVariable.getVariable(2), TermList.NIL)), unifier);
		p[3] = new PreconditionAtomic(new Predicate(2, 3, new TermList(TermVariable.getVariable(0), new TermList(TermVariable.getVariable(1), TermList.NIL))), unifier);
		b = new Term[4][];

		setFirst(false);
	}

	public void bind(Term[] binding)
	{
		p[0].bind(binding);
		p[1].bind(binding);
		p[2].bind(binding);
		p[3].bind(binding);
	}

	protected Term[] nextBindingHelper()
	{
		if (b[0] == null)
			return null;

		b[3] = p[3].nextBinding();
		while (b[3] == null)
		{
			b[2] = p[2].nextBinding();
			while (b[2] == null)
			{
				b[1] = p[1].nextBinding();
				while (b[1] == null)
				{
					b[0] = p[0].nextBinding();
					if (b[0] == null)
						return null;
					p[1].reset();
					p[1].bind(b[0]);
					b[1] = p[1].nextBinding();
				}
				p[2].reset();
				p[2].bind(Term.merge(b, 2));
				b[2] = p[2].nextBinding();
			}
			p[3].reset();
			p[3].bind(Term.merge(b, 3));
			b[3] = p[3].nextBinding();
		}

		return Term.merge(b, 4);
	}

	protected void resetHelper()
	{
		p[0].reset();
		p[1].reset();
		p[2].reset();
		p[3].reset();

		b[0] = p[0].nextBinding();
		if (b[0] == null)
			return;

		p[1].bind(b[0]);
		b[1] = p[1].nextBinding();
		while (b[1] == null)
		{
			b[0] = p[0].nextBinding();
			if (b[0] == null)
				return;
			p[1].reset();
			p[1].bind(b[0]);
			b[1] = p[1].nextBinding();
		}

		p[2].bind(Term.merge(b, 2));
		b[2] = p[2].nextBinding();
		while (b[2] == null)
		{
			b[1] = p[1].nextBinding();
			while (b[1] == null)
			{
				b[0] = p[0].nextBinding();
				if (b[0] == null)
					return;
				p[1].reset();
				p[1].bind(b[0]);
				b[1] = p[1].nextBinding();
			}
			p[2].reset();
			p[2].bind(Term.merge(b, 2));
			b[2] = p[2].nextBinding();
		}

		p[3].bind(Term.merge(b, 3));
	}
}

class Operator0 extends Operator
{
	public Operator0()
	{
		super(new Predicate(0, 3, new TermList(TermVariable.getVariable(0), new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(2), TermList.NIL)))), -1, -1, new TermNumber(1.0));


		DelAddElement[] delIn = new DelAddElement[1];
		delIn[0] = new DelAddAtomic(new Predicate(2, 3, new TermList(TermVariable.getVariable(0), new TermList(TermVariable.getVariable(1), TermList.NIL))));

		setDel(delIn);

		DelAddElement[] addIn = new DelAddElement[1];
		addIn[0] = new DelAddAtomic(new Predicate(2, 3, new TermList(TermVariable.getVariable(0), new TermList(TermVariable.getVariable(2), TermList.NIL))));

		setAdd(addIn);
	}

	public Precondition getIterator(Term[] unifier, int which)
	{
		Precondition p;

		p = (new Precondition0(unifier)).setComparator(null);
		p.reset();

		return p;
	}
}

class Precondition1 extends Precondition
{
	Precondition[] p;
	Term[][] b;

	public Precondition1(Term[] unifier)
	{
		p = new Precondition[7];
		p[0] = new PreconditionAtomic(new Predicate(3, 5, new TermList(TermVariable.getVariable(0), TermList.NIL)), unifier);
		p[1] = new PreconditionAtomic(new Predicate(0, 5, new TermList(TermVariable.getVariable(1), TermList.NIL)), unifier);
		p[2] = new PreconditionAtomic(new Predicate(1, 5, new TermList(TermVariable.getVariable(4), TermList.NIL)), unifier);
		p[3] = new PreconditionAtomic(new Predicate(4, 5, new TermList(TermVariable.getVariable(2), TermList.NIL)), unifier);
		p[4] = new PreconditionAtomic(new Predicate(5, 5, new TermList(TermVariable.getVariable(0), TermList.NIL)), unifier);
		p[5] = new PreconditionAtomic(new Predicate(2, 5, new TermList(TermVariable.getVariable(0), new TermList(TermVariable.getVariable(4), TermList.NIL))), unifier);
		p[6] = new PreconditionAtomic(new Predicate(6, 5, new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(4), TermList.NIL))), unifier);
		b = new Term[7][];

		setFirst(false);
	}

	public void bind(Term[] binding)
	{
		p[0].bind(binding);
		p[1].bind(binding);
		p[2].bind(binding);
		p[3].bind(binding);
		p[4].bind(binding);
		p[5].bind(binding);
		p[6].bind(binding);
	}

	protected Term[] nextBindingHelper()
	{
		if (b[0] == null)
			return null;

		b[6] = p[6].nextBinding();
		while (b[6] == null)
		{
			b[5] = p[5].nextBinding();
			while (b[5] == null)
			{
				b[4] = p[4].nextBinding();
				while (b[4] == null)
				{
					b[3] = p[3].nextBinding();
					while (b[3] == null)
					{
						b[2] = p[2].nextBinding();
						while (b[2] == null)
						{
							b[1] = p[1].nextBinding();
							while (b[1] == null)
							{
								b[0] = p[0].nextBinding();
								if (b[0] == null)
									return null;
								p[1].reset();
								p[1].bind(b[0]);
								b[1] = p[1].nextBinding();
							}
							p[2].reset();
							p[2].bind(Term.merge(b, 2));
							b[2] = p[2].nextBinding();
						}
						p[3].reset();
						p[3].bind(Term.merge(b, 3));
						b[3] = p[3].nextBinding();
					}
					p[4].reset();
					p[4].bind(Term.merge(b, 4));
					b[4] = p[4].nextBinding();
				}
				p[5].reset();
				p[5].bind(Term.merge(b, 5));
				b[5] = p[5].nextBinding();
			}
			p[6].reset();
			p[6].bind(Term.merge(b, 6));
			b[6] = p[6].nextBinding();
		}

		return Term.merge(b, 7);
	}

	protected void resetHelper()
	{
		p[0].reset();
		p[1].reset();
		p[2].reset();
		p[3].reset();
		p[4].reset();
		p[5].reset();
		p[6].reset();

		b[0] = p[0].nextBinding();
		if (b[0] == null)
			return;

		p[1].bind(b[0]);
		b[1] = p[1].nextBinding();
		while (b[1] == null)
		{
			b[0] = p[0].nextBinding();
			if (b[0] == null)
				return;
			p[1].reset();
			p[1].bind(b[0]);
			b[1] = p[1].nextBinding();
		}

		p[2].bind(Term.merge(b, 2));
		b[2] = p[2].nextBinding();
		while (b[2] == null)
		{
			b[1] = p[1].nextBinding();
			while (b[1] == null)
			{
				b[0] = p[0].nextBinding();
				if (b[0] == null)
					return;
				p[1].reset();
				p[1].bind(b[0]);
				b[1] = p[1].nextBinding();
			}
			p[2].reset();
			p[2].bind(Term.merge(b, 2));
			b[2] = p[2].nextBinding();
		}

		p[3].bind(Term.merge(b, 3));
		b[3] = p[3].nextBinding();
		while (b[3] == null)
		{
			b[2] = p[2].nextBinding();
			while (b[2] == null)
			{
				b[1] = p[1].nextBinding();
				while (b[1] == null)
				{
					b[0] = p[0].nextBinding();
					if (b[0] == null)
						return;
					p[1].reset();
					p[1].bind(b[0]);
					b[1] = p[1].nextBinding();
				}
				p[2].reset();
				p[2].bind(Term.merge(b, 2));
				b[2] = p[2].nextBinding();
			}
			p[3].reset();
			p[3].bind(Term.merge(b, 3));
			b[3] = p[3].nextBinding();
		}

		p[4].bind(Term.merge(b, 4));
		b[4] = p[4].nextBinding();
		while (b[4] == null)
		{
			b[3] = p[3].nextBinding();
			while (b[3] == null)
			{
				b[2] = p[2].nextBinding();
				while (b[2] == null)
				{
					b[1] = p[1].nextBinding();
					while (b[1] == null)
					{
						b[0] = p[0].nextBinding();
						if (b[0] == null)
							return;
						p[1].reset();
						p[1].bind(b[0]);
						b[1] = p[1].nextBinding();
					}
					p[2].reset();
					p[2].bind(Term.merge(b, 2));
					b[2] = p[2].nextBinding();
				}
				p[3].reset();
				p[3].bind(Term.merge(b, 3));
				b[3] = p[3].nextBinding();
			}
			p[4].reset();
			p[4].bind(Term.merge(b, 4));
			b[4] = p[4].nextBinding();
		}

		p[5].bind(Term.merge(b, 5));
		b[5] = p[5].nextBinding();
		while (b[5] == null)
		{
			b[4] = p[4].nextBinding();
			while (b[4] == null)
			{
				b[3] = p[3].nextBinding();
				while (b[3] == null)
				{
					b[2] = p[2].nextBinding();
					while (b[2] == null)
					{
						b[1] = p[1].nextBinding();
						while (b[1] == null)
						{
							b[0] = p[0].nextBinding();
							if (b[0] == null)
								return;
							p[1].reset();
							p[1].bind(b[0]);
							b[1] = p[1].nextBinding();
						}
						p[2].reset();
						p[2].bind(Term.merge(b, 2));
						b[2] = p[2].nextBinding();
					}
					p[3].reset();
					p[3].bind(Term.merge(b, 3));
					b[3] = p[3].nextBinding();
				}
				p[4].reset();
				p[4].bind(Term.merge(b, 4));
				b[4] = p[4].nextBinding();
			}
			p[5].reset();
			p[5].bind(Term.merge(b, 5));
			b[5] = p[5].nextBinding();
		}

		p[6].bind(Term.merge(b, 6));
	}
}

class Operator1 extends Operator
{
	public Operator1()
	{
		super(new Predicate(1, 5, new TermList(TermVariable.getVariable(0), new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(2), new TermList(TermVariable.getVariable(3), TermList.NIL))))), -1, -1, new TermNumber(1.0));


		DelAddElement[] delIn = new DelAddElement[3];
		delIn[0] = new DelAddAtomic(new Predicate(5, 5, new TermList(TermVariable.getVariable(0), TermList.NIL)));
		delIn[1] = new DelAddAtomic(new Predicate(6, 5, new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(4), TermList.NIL))));
		delIn[2] = new DelAddAtomic(new Predicate(7, 5, new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(2), TermList.NIL))));

		setDel(delIn);

		DelAddElement[] addIn = new DelAddElement[1];
		addIn[0] = new DelAddAtomic(new Predicate(8, 5, new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(2), new TermList(TermVariable.getVariable(0), TermList.NIL)))));

		setAdd(addIn);
	}

	public Precondition getIterator(Term[] unifier, int which)
	{
		Precondition p;

		p = (new Precondition1(unifier)).setComparator(null);
		p.reset();

		return p;
	}
}

class Precondition2 extends Precondition
{
	Precondition[] p;
	Term[][] b;

	public Precondition2(Term[] unifier)
	{
		p = new Precondition[11];
		p[0] = new PreconditionAtomic(new Predicate(3, 7, new TermList(TermVariable.getVariable(0), TermList.NIL)), unifier);
		p[1] = new PreconditionAtomic(new Predicate(0, 7, new TermList(TermVariable.getVariable(1), TermList.NIL)), unifier);
		p[2] = new PreconditionAtomic(new Predicate(4, 7, new TermList(TermVariable.getVariable(2), TermList.NIL)), unifier);
		p[3] = new PreconditionAtomic(new Predicate(9, 7, new TermList(TermVariable.getVariable(3), TermList.NIL)), unifier);
		p[4] = new PreconditionAtomic(new Predicate(10, 7, new TermList(TermVariable.getVariable(4), TermList.NIL)), unifier);
		p[5] = new PreconditionAtomic(new Predicate(1, 7, new TermList(TermVariable.getVariable(6), TermList.NIL)), unifier);
		p[6] = new PreconditionAtomic(new Predicate(11, 7, new TermList(TermVariable.getVariable(4), new TermList(TermVariable.getVariable(3), TermList.NIL))), unifier);
		p[7] = new PreconditionAtomic(new Predicate(12, 7, new TermList(TermVariable.getVariable(0), new TermList(TermVariable.getVariable(3), TermList.NIL))), unifier);
		p[8] = new PreconditionAtomic(new Predicate(2, 7, new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(5), TermList.NIL))), unifier);
		p[9] = new PreconditionAtomic(new Predicate(8, 7, new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(2), new TermList(TermVariable.getVariable(0), TermList.NIL)))), unifier);
		p[10] = new PreconditionAtomic(new Predicate(13, 7, new TermList(TermVariable.getVariable(4), new TermList(TermVariable.getVariable(5), TermList.NIL))), unifier);
		b = new Term[11][];

		setFirst(false);
	}

	public void bind(Term[] binding)
	{
		p[0].bind(binding);
		p[1].bind(binding);
		p[2].bind(binding);
		p[3].bind(binding);
		p[4].bind(binding);
		p[5].bind(binding);
		p[6].bind(binding);
		p[7].bind(binding);
		p[8].bind(binding);
		p[9].bind(binding);
		p[10].bind(binding);
	}

	protected Term[] nextBindingHelper()
	{
		if (b[0] == null)
			return null;

		b[10] = p[10].nextBinding();
		while (b[10] == null)
		{
			b[9] = p[9].nextBinding();
			while (b[9] == null)
			{
				b[8] = p[8].nextBinding();
				while (b[8] == null)
				{
					b[7] = p[7].nextBinding();
					while (b[7] == null)
					{
						b[6] = p[6].nextBinding();
						while (b[6] == null)
						{
							b[5] = p[5].nextBinding();
							while (b[5] == null)
							{
								b[4] = p[4].nextBinding();
								while (b[4] == null)
								{
									b[3] = p[3].nextBinding();
									while (b[3] == null)
									{
										b[2] = p[2].nextBinding();
										while (b[2] == null)
										{
											b[1] = p[1].nextBinding();
											while (b[1] == null)
											{
												b[0] = p[0].nextBinding();
												if (b[0] == null)
													return null;
												p[1].reset();
												p[1].bind(b[0]);
												b[1] = p[1].nextBinding();
											}
											p[2].reset();
											p[2].bind(Term.merge(b, 2));
											b[2] = p[2].nextBinding();
										}
										p[3].reset();
										p[3].bind(Term.merge(b, 3));
										b[3] = p[3].nextBinding();
									}
									p[4].reset();
									p[4].bind(Term.merge(b, 4));
									b[4] = p[4].nextBinding();
								}
								p[5].reset();
								p[5].bind(Term.merge(b, 5));
								b[5] = p[5].nextBinding();
							}
							p[6].reset();
							p[6].bind(Term.merge(b, 6));
							b[6] = p[6].nextBinding();
						}
						p[7].reset();
						p[7].bind(Term.merge(b, 7));
						b[7] = p[7].nextBinding();
					}
					p[8].reset();
					p[8].bind(Term.merge(b, 8));
					b[8] = p[8].nextBinding();
				}
				p[9].reset();
				p[9].bind(Term.merge(b, 9));
				b[9] = p[9].nextBinding();
			}
			p[10].reset();
			p[10].bind(Term.merge(b, 10));
			b[10] = p[10].nextBinding();
		}

		return Term.merge(b, 11);
	}

	protected void resetHelper()
	{
		p[0].reset();
		p[1].reset();
		p[2].reset();
		p[3].reset();
		p[4].reset();
		p[5].reset();
		p[6].reset();
		p[7].reset();
		p[8].reset();
		p[9].reset();
		p[10].reset();

		b[0] = p[0].nextBinding();
		if (b[0] == null)
			return;

		p[1].bind(b[0]);
		b[1] = p[1].nextBinding();
		while (b[1] == null)
		{
			b[0] = p[0].nextBinding();
			if (b[0] == null)
				return;
			p[1].reset();
			p[1].bind(b[0]);
			b[1] = p[1].nextBinding();
		}

		p[2].bind(Term.merge(b, 2));
		b[2] = p[2].nextBinding();
		while (b[2] == null)
		{
			b[1] = p[1].nextBinding();
			while (b[1] == null)
			{
				b[0] = p[0].nextBinding();
				if (b[0] == null)
					return;
				p[1].reset();
				p[1].bind(b[0]);
				b[1] = p[1].nextBinding();
			}
			p[2].reset();
			p[2].bind(Term.merge(b, 2));
			b[2] = p[2].nextBinding();
		}

		p[3].bind(Term.merge(b, 3));
		b[3] = p[3].nextBinding();
		while (b[3] == null)
		{
			b[2] = p[2].nextBinding();
			while (b[2] == null)
			{
				b[1] = p[1].nextBinding();
				while (b[1] == null)
				{
					b[0] = p[0].nextBinding();
					if (b[0] == null)
						return;
					p[1].reset();
					p[1].bind(b[0]);
					b[1] = p[1].nextBinding();
				}
				p[2].reset();
				p[2].bind(Term.merge(b, 2));
				b[2] = p[2].nextBinding();
			}
			p[3].reset();
			p[3].bind(Term.merge(b, 3));
			b[3] = p[3].nextBinding();
		}

		p[4].bind(Term.merge(b, 4));
		b[4] = p[4].nextBinding();
		while (b[4] == null)
		{
			b[3] = p[3].nextBinding();
			while (b[3] == null)
			{
				b[2] = p[2].nextBinding();
				while (b[2] == null)
				{
					b[1] = p[1].nextBinding();
					while (b[1] == null)
					{
						b[0] = p[0].nextBinding();
						if (b[0] == null)
							return;
						p[1].reset();
						p[1].bind(b[0]);
						b[1] = p[1].nextBinding();
					}
					p[2].reset();
					p[2].bind(Term.merge(b, 2));
					b[2] = p[2].nextBinding();
				}
				p[3].reset();
				p[3].bind(Term.merge(b, 3));
				b[3] = p[3].nextBinding();
			}
			p[4].reset();
			p[4].bind(Term.merge(b, 4));
			b[4] = p[4].nextBinding();
		}

		p[5].bind(Term.merge(b, 5));
		b[5] = p[5].nextBinding();
		while (b[5] == null)
		{
			b[4] = p[4].nextBinding();
			while (b[4] == null)
			{
				b[3] = p[3].nextBinding();
				while (b[3] == null)
				{
					b[2] = p[2].nextBinding();
					while (b[2] == null)
					{
						b[1] = p[1].nextBinding();
						while (b[1] == null)
						{
							b[0] = p[0].nextBinding();
							if (b[0] == null)
								return;
							p[1].reset();
							p[1].bind(b[0]);
							b[1] = p[1].nextBinding();
						}
						p[2].reset();
						p[2].bind(Term.merge(b, 2));
						b[2] = p[2].nextBinding();
					}
					p[3].reset();
					p[3].bind(Term.merge(b, 3));
					b[3] = p[3].nextBinding();
				}
				p[4].reset();
				p[4].bind(Term.merge(b, 4));
				b[4] = p[4].nextBinding();
			}
			p[5].reset();
			p[5].bind(Term.merge(b, 5));
			b[5] = p[5].nextBinding();
		}

		p[6].bind(Term.merge(b, 6));
		b[6] = p[6].nextBinding();
		while (b[6] == null)
		{
			b[5] = p[5].nextBinding();
			while (b[5] == null)
			{
				b[4] = p[4].nextBinding();
				while (b[4] == null)
				{
					b[3] = p[3].nextBinding();
					while (b[3] == null)
					{
						b[2] = p[2].nextBinding();
						while (b[2] == null)
						{
							b[1] = p[1].nextBinding();
							while (b[1] == null)
							{
								b[0] = p[0].nextBinding();
								if (b[0] == null)
									return;
								p[1].reset();
								p[1].bind(b[0]);
								b[1] = p[1].nextBinding();
							}
							p[2].reset();
							p[2].bind(Term.merge(b, 2));
							b[2] = p[2].nextBinding();
						}
						p[3].reset();
						p[3].bind(Term.merge(b, 3));
						b[3] = p[3].nextBinding();
					}
					p[4].reset();
					p[4].bind(Term.merge(b, 4));
					b[4] = p[4].nextBinding();
				}
				p[5].reset();
				p[5].bind(Term.merge(b, 5));
				b[5] = p[5].nextBinding();
			}
			p[6].reset();
			p[6].bind(Term.merge(b, 6));
			b[6] = p[6].nextBinding();
		}

		p[7].bind(Term.merge(b, 7));
		b[7] = p[7].nextBinding();
		while (b[7] == null)
		{
			b[6] = p[6].nextBinding();
			while (b[6] == null)
			{
				b[5] = p[5].nextBinding();
				while (b[5] == null)
				{
					b[4] = p[4].nextBinding();
					while (b[4] == null)
					{
						b[3] = p[3].nextBinding();
						while (b[3] == null)
						{
							b[2] = p[2].nextBinding();
							while (b[2] == null)
							{
								b[1] = p[1].nextBinding();
								while (b[1] == null)
								{
									b[0] = p[0].nextBinding();
									if (b[0] == null)
										return;
									p[1].reset();
									p[1].bind(b[0]);
									b[1] = p[1].nextBinding();
								}
								p[2].reset();
								p[2].bind(Term.merge(b, 2));
								b[2] = p[2].nextBinding();
							}
							p[3].reset();
							p[3].bind(Term.merge(b, 3));
							b[3] = p[3].nextBinding();
						}
						p[4].reset();
						p[4].bind(Term.merge(b, 4));
						b[4] = p[4].nextBinding();
					}
					p[5].reset();
					p[5].bind(Term.merge(b, 5));
					b[5] = p[5].nextBinding();
				}
				p[6].reset();
				p[6].bind(Term.merge(b, 6));
				b[6] = p[6].nextBinding();
			}
			p[7].reset();
			p[7].bind(Term.merge(b, 7));
			b[7] = p[7].nextBinding();
		}

		p[8].bind(Term.merge(b, 8));
		b[8] = p[8].nextBinding();
		while (b[8] == null)
		{
			b[7] = p[7].nextBinding();
			while (b[7] == null)
			{
				b[6] = p[6].nextBinding();
				while (b[6] == null)
				{
					b[5] = p[5].nextBinding();
					while (b[5] == null)
					{
						b[4] = p[4].nextBinding();
						while (b[4] == null)
						{
							b[3] = p[3].nextBinding();
							while (b[3] == null)
							{
								b[2] = p[2].nextBinding();
								while (b[2] == null)
								{
									b[1] = p[1].nextBinding();
									while (b[1] == null)
									{
										b[0] = p[0].nextBinding();
										if (b[0] == null)
											return;
										p[1].reset();
										p[1].bind(b[0]);
										b[1] = p[1].nextBinding();
									}
									p[2].reset();
									p[2].bind(Term.merge(b, 2));
									b[2] = p[2].nextBinding();
								}
								p[3].reset();
								p[3].bind(Term.merge(b, 3));
								b[3] = p[3].nextBinding();
							}
							p[4].reset();
							p[4].bind(Term.merge(b, 4));
							b[4] = p[4].nextBinding();
						}
						p[5].reset();
						p[5].bind(Term.merge(b, 5));
						b[5] = p[5].nextBinding();
					}
					p[6].reset();
					p[6].bind(Term.merge(b, 6));
					b[6] = p[6].nextBinding();
				}
				p[7].reset();
				p[7].bind(Term.merge(b, 7));
				b[7] = p[7].nextBinding();
			}
			p[8].reset();
			p[8].bind(Term.merge(b, 8));
			b[8] = p[8].nextBinding();
		}

		p[9].bind(Term.merge(b, 9));
		b[9] = p[9].nextBinding();
		while (b[9] == null)
		{
			b[8] = p[8].nextBinding();
			while (b[8] == null)
			{
				b[7] = p[7].nextBinding();
				while (b[7] == null)
				{
					b[6] = p[6].nextBinding();
					while (b[6] == null)
					{
						b[5] = p[5].nextBinding();
						while (b[5] == null)
						{
							b[4] = p[4].nextBinding();
							while (b[4] == null)
							{
								b[3] = p[3].nextBinding();
								while (b[3] == null)
								{
									b[2] = p[2].nextBinding();
									while (b[2] == null)
									{
										b[1] = p[1].nextBinding();
										while (b[1] == null)
										{
											b[0] = p[0].nextBinding();
											if (b[0] == null)
												return;
											p[1].reset();
											p[1].bind(b[0]);
											b[1] = p[1].nextBinding();
										}
										p[2].reset();
										p[2].bind(Term.merge(b, 2));
										b[2] = p[2].nextBinding();
									}
									p[3].reset();
									p[3].bind(Term.merge(b, 3));
									b[3] = p[3].nextBinding();
								}
								p[4].reset();
								p[4].bind(Term.merge(b, 4));
								b[4] = p[4].nextBinding();
							}
							p[5].reset();
							p[5].bind(Term.merge(b, 5));
							b[5] = p[5].nextBinding();
						}
						p[6].reset();
						p[6].bind(Term.merge(b, 6));
						b[6] = p[6].nextBinding();
					}
					p[7].reset();
					p[7].bind(Term.merge(b, 7));
					b[7] = p[7].nextBinding();
				}
				p[8].reset();
				p[8].bind(Term.merge(b, 8));
				b[8] = p[8].nextBinding();
			}
			p[9].reset();
			p[9].bind(Term.merge(b, 9));
			b[9] = p[9].nextBinding();
		}

		p[10].bind(Term.merge(b, 10));
	}
}

class Operator2 extends Operator
{
	public Operator2()
	{
		super(new Predicate(2, 7, new TermList(TermVariable.getVariable(0), new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(2), new TermList(TermVariable.getVariable(3), new TermList(TermVariable.getVariable(4), new TermList(TermVariable.getVariable(5), TermList.NIL))))))), -1, -1, new TermNumber(1.0));


		DelAddElement[] delIn = new DelAddElement[2];
		delIn[0] = new DelAddAtomic(new Predicate(8, 7, new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(2), new TermList(TermVariable.getVariable(0), TermList.NIL)))));
		delIn[1] = new DelAddAtomic(new Predicate(11, 7, new TermList(TermVariable.getVariable(4), new TermList(TermVariable.getVariable(3), TermList.NIL))));

		setDel(delIn);

		DelAddElement[] addIn = new DelAddElement[4];
		addIn[0] = new DelAddAtomic(new Predicate(6, 7, new TermList(TermVariable.getVariable(0), new TermList(TermVariable.getVariable(5), TermList.NIL))));
		addIn[1] = new DelAddAtomic(new Predicate(7, 7, new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(2), TermList.NIL))));
		addIn[2] = new DelAddAtomic(new Predicate(14, 7, new TermList(TermVariable.getVariable(4), new TermList(TermVariable.getVariable(0), TermList.NIL))));
		addIn[3] = new DelAddAtomic(new Predicate(15, 7, new TermList(TermVariable.getVariable(4), new TermList(TermVariable.getVariable(3), TermList.NIL))));

		setAdd(addIn);
	}

	public Precondition getIterator(Term[] unifier, int which)
	{
		Precondition p;

		p = (new Precondition2(unifier)).setComparator(null);
		p.reset();

		return p;
	}
}

class Method0 extends Method
{
	public Method0()
	{
		super(new Predicate(0, 7, TermList.NIL));
		TaskList[] subsIn = new TaskList[2];

		subsIn[0] = createTaskList0();
		subsIn[1] = TaskList.empty;

		setSubs(subsIn);
	}

	TaskList createTaskList0()
	{
		TaskList retVal;

		retVal = new TaskList(5, true);
		retVal.subtasks[0] = new TaskList(new TaskAtom(new Predicate(1, 7, new TermList(TermVariable.getVariable(2), new TermList(TermVariable.getVariable(3), new TermList(TermVariable.getVariable(4), new TermList(TermVariable.getVariable(5), TermList.NIL))))), false, true));
		retVal.subtasks[1] = new TaskList(new TaskAtom(new Predicate(0, 7, new TermList(TermVariable.getVariable(3), new TermList(TermVariable.getVariable(5), new TermList(TermVariable.getVariable(6), TermList.NIL)))), false, true));
		retVal.subtasks[2] = new TaskList(new TaskAtom(new Predicate(2, 7, new TermList(TermVariable.getVariable(2), new TermList(TermVariable.getVariable(3), new TermList(TermVariable.getVariable(4), new TermList(TermVariable.getVariable(1), new TermList(TermVariable.getVariable(0), new TermList(TermVariable.getVariable(6), TermList.NIL))))))), false, true));
		retVal.subtasks[3] = new TaskList(new TaskAtom(new Predicate(0, 7, new TermList(TermVariable.getVariable(3), new TermList(TermVariable.getVariable(5), new TermList(TermVariable.getVariable(6), TermList.NIL)))), false, true));
		retVal.subtasks[4] = new TaskList(new TaskAtom(new Predicate(0, 7, TermList.NIL), false, false));

		return retVal;
	}

	public Precondition getIterator(Term[] unifier, int which)
	{
		Precondition p;

		switch (which)
		{
			case 0:
				p = (new PreconditionAtomic(new Predicate(11, 7, new TermList(TermVariable.getVariable(0), new TermList(TermVariable.getVariable(1), TermList.NIL))), unifier)).setComparator(null);
			break;
			case 1:
				p = (new PreconditionNil(7)).setComparator(null);
			break;
			default:
				return null;
		}

		p.reset();

		return p;
	}

	public String getLabel(int which)
	{
		switch (which)
		{
			case 0: return "Method0Branch0";
			case 1: return "Method0Branch1";
			default: return null;
		}
	}
}

public class logisticaemergencias extends Domain
{
	public logisticaemergencias()
	{
		TermVariable.initialize(7);

		constants = new String[16];
		constants[0] = "dron";
		constants[1] = "loc";
		constants[2] = "loc-dron";
		constants[3] = "caja";
		constants[4] = "brazo";
		constants[5] = "caja-free";
		constants[6] = "loc-caja";
		constants[7] = "brazo-dron-free";
		constants[8] = "carry-caja";
		constants[9] = "contenido";
		constants[10] = "persona";
		constants[11] = "persona-necesita-contenido";
		constants[12] = "caja-contenido";
		constants[13] = "loc-persona";
		constants[14] = "persona-tiene-caja";
		constants[15] = "persona-tiene-cont";

		compoundTasks = new String[1];
		compoundTasks[0] = "enviar-todo";

		primitiveTasks = new String[3];
		primitiveTasks[0] = "!move-dron";
		primitiveTasks[1] = "!take-caja";
		primitiveTasks[2] = "!drop-caja";

		methods = new Method[1][];

		methods[0] = new Method[1];
		methods[0][0] = new Method0();


		ops = new Operator[3][];

		ops[0] = new Operator[1];
		ops[0][0] = new Operator0();

		ops[1] = new Operator[1];
		ops[1][0] = new Operator1();

		ops[2] = new Operator[1];
		ops[2][0] = new Operator2();

		axioms = new Axiom[16][];

		axioms[0] = new Axiom[0];

		axioms[1] = new Axiom[0];

		axioms[2] = new Axiom[0];

		axioms[3] = new Axiom[0];

		axioms[4] = new Axiom[0];

		axioms[5] = new Axiom[0];

		axioms[6] = new Axiom[0];

		axioms[7] = new Axiom[0];

		axioms[8] = new Axiom[0];

		axioms[9] = new Axiom[0];

		axioms[10] = new Axiom[0];

		axioms[11] = new Axiom[0];

		axioms[12] = new Axiom[0];

		axioms[13] = new Axiom[0];

		axioms[14] = new Axiom[0];

		axioms[15] = new Axiom[0];

	}
}