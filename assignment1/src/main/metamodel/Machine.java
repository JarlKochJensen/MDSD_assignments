package main.metamodel;

import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Hashtable;
import java.util.List;

public class Machine {

	private List<State> states = new ArrayList<>();
	private State currentState;
	private State initialState;
	private Transition currentTransition;
	private Dictionary variables = new Hashtable();
	private int currentDictKey = 0;

	public List<State> getStates() {
		// TODO Auto-generated method stub

		return states;
	}

	public void addState(State state) {
		states.add(state);
	}

	public State getCurrentState() {
		return currentState;
	}

	public void setCurrentState(State state) {
		currentState = state;
	}

	public State getInitialState() {
		// TODO Auto-generated method stub
		return initialState;
	}

	public void setInitialState() {
		initialState = currentState;
	}

	public void addTransition(String string) {
		Transition transition = new Transition(string);
		currentTransition = transition;
		currentState.getTransitions().add(transition);
	}

	public Transition getCurrentTransition() {
		return currentTransition;
	}

	public State getState(String string) {
		for (int i = 0; i < states.size(); i++) {
			if (states.get(i).getName() == string) {
				return states.get(i);
			} else {
				addState(new State(string));
			}
		}
		return null;
	}

	public void addInteger(String string) {
		variables.put(currentDictKey, string);
		currentDictKey++;
	}

	public int numberOfIntegers() {
		return variables.size();
	}

	public boolean hasInteger(String string) {
		for (int i = 0; i < variables.size(); i++) {
			if (variables.get(i) == string) {
				return true;
			}
		}
		return false;
	}



}
