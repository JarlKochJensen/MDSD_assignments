package main.metamodel;

public class Transition {

	private String event;
	private State target;
	private int transitionInteger;
	private boolean setOperation = false;
	private boolean incrementOperation = false;
	private boolean decrementOperation = false;
	private boolean conditionalOperation = false;
	private boolean equalCondition = false;
	private boolean greaterThanCondition = false;
	private boolean lessThanCondition = false;


	public Transition(String string){
		this.event = string;
	}

	public Object getEvent() {
		return event;
	}

	public void setEvent(String string) {
		this.event = string;
	}

	public void setTransitionInteger(int integer) {
		this.transitionInteger = integer;
	}

	public State getTarget() {
		return target;
	}

	public void setTarget(State target) {
		this.target = target;
	}

	public void setSetOperation() {
		setOperation = true;
	}

	public void increment(String string) {
		setEvent(string);
		incrementOperation = true;
	}

	public void decrement(String string) {
		setEvent(string);
		decrementOperation = true;
	}

	public boolean hasSetOperation() {
		return setOperation;
	}

	public boolean hasIncrementOperation() {
		return incrementOperation;
	}

	public boolean hasDecrementOperation() {
		return decrementOperation;
	}

	public Object getOperationVariableName() {
		return event;
	}

	public void conditionalOperation() {
		conditionalOperation = true;
	}

	public boolean isConditional() {
		return conditionalOperation;
	}

	public Object getConditionVariableName() {
		return event;
	}

	public Integer getConditionComparedValue() {
		return transitionInteger;
	}

	public void setEqualCondition() {
		equalCondition = true;
	}

	public boolean isConditionEqual() {
		return equalCondition;
	}

	public void setGreaterThanCondition() {
		greaterThanCondition = true;
	}

	public boolean isConditionGreaterThan() {
		return greaterThanCondition;
	}

	public void setLessThanCondition() {
		lessThanCondition = true;
	}

	public boolean isConditionLessThan() {
		return lessThanCondition;
	}

	public boolean hasOperation() {
		// TODO Auto-generated method stub
		return true;
	}

}
