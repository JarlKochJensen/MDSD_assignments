package main;

import main.metamodel.Machine;
import main.metamodel.State;
import main.metamodel.Transition;

public class StateMachine {

	private Machine machine = new Machine();

	public Machine build() {
		// TODO Auto-generated method stub
		return machine;
	}

	public StateMachine state(String string) {
		for (int i = 0; i < machine.getStates().size(); i++) {
			if (machine.getStates().get(i).getName() == string) {
				machine.setCurrentState(machine.getStates().get(i));
				return this;
			}
		}
		State s = new State(string);
		machine.addState(s);
		machine.setCurrentState(s);
		return this;
	}

	public StateMachine initial() {
		machine.setInitialState();
		return this;
	}

	public StateMachine when(String string) {
		machine.addTransition(string);
		return this;
	}

	public StateMachine to(String string) {
		State s = machine.getState(string);
		Transition t = machine.getCurrentTransition();
		t.setTarget(s);
		return this;
	}

	public StateMachine integer(String string) {
		machine.addInteger(string);
		return this;
	}

	public StateMachine set(String string, int i) {
		machine.getCurrentTransition().setTransitionInteger(i);
		machine.getCurrentTransition().setEvent(string);
		machine.getCurrentTransition().setSetOperation();
		return this;
	}

	public StateMachine increment(String string) {
		machine.getCurrentTransition().increment(string);
		return this;
	}

	public StateMachine decrement(String string) {
		machine.getCurrentTransition().decrement(string);
		return this;
	}

	public StateMachine ifEquals(String string, int i) {
		machine.getCurrentTransition().setEvent(string);
		machine.getCurrentTransition().setTransitionInteger(i);
		machine.getCurrentTransition().conditionalOperation();
		machine.getCurrentTransition().setEqualCondition();
		return this;
	}

	public StateMachine ifGreaterThan(String string, int i) {
		machine.getCurrentTransition().setEvent(string);
		machine.getCurrentTransition().setTransitionInteger(i);
		machine.getCurrentTransition().conditionalOperation();
		machine.getCurrentTransition().setGreaterThanCondition();
		return this;
	}

	public StateMachine ifLessThan(String string, int i) {
		machine.getCurrentTransition().setEvent(string);
		machine.getCurrentTransition().setTransitionInteger(i);
		machine.getCurrentTransition().conditionalOperation();
		machine.getCurrentTransition().setLessThanCondition();
		return this;
	}

}
