package main.metamodel;

import java.util.ArrayList;
import java.util.List;

public class State {

	private String name;
	private List<Transition> transitions = new ArrayList<>();

	public State(String name){
		this.name = name;
	}

	public Object getName() {
		return name;
	}

	public List<Transition> getTransitions() {
		return transitions;
	}

	public Transition getTransitionByEvent(String string) {
		for (int i = 0; i < transitions.size(); i++) {
			if (transitions.get(i).getEvent() == string) {
				return transitions.get(i);
			}
		}
		return null;
	}

}
