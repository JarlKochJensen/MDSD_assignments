/*
 * generated by Xtext 2.26.0
 */
grammar InternalMath;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package dk.sdu.mmmi.mdsd.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package dk.sdu.mmmi.mdsd.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import dk.sdu.mmmi.mdsd.services.MathGrammarAccess;

}
@parser::members {
	private MathGrammarAccess grammarAccess;

	public void setGrammarAccess(MathGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleMathExp
entryRuleMathExp
:
{ before(grammarAccess.getMathExpRule()); }
	 ruleMathExp
{ after(grammarAccess.getMathExpRule()); } 
	 EOF 
;

// Rule MathExp
ruleMathExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMathExpAccess().getGroup()); }
		(rule__MathExp__Group__0)
		{ after(grammarAccess.getMathExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVarBinding
entryRuleVarBinding
:
{ before(grammarAccess.getVarBindingRule()); }
	 ruleVarBinding
{ after(grammarAccess.getVarBindingRule()); } 
	 EOF 
;

// Rule VarBinding
ruleVarBinding 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVarBindingAccess().getGroup()); }
		(rule__VarBinding__Group__0)
		{ after(grammarAccess.getVarBindingAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleExp
entryRuleExp
:
{ before(grammarAccess.getExpRule()); }
	 ruleExp
{ after(grammarAccess.getExpRule()); } 
	 EOF 
;

// Rule Exp
ruleExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getExpAccess().getGroup()); }
		(rule__Exp__Group__0)
		{ after(grammarAccess.getExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFactor
entryRuleFactor
:
{ before(grammarAccess.getFactorRule()); }
	 ruleFactor
{ after(grammarAccess.getFactorRule()); } 
	 EOF 
;

// Rule Factor
ruleFactor 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFactorAccess().getGroup()); }
		(rule__Factor__Group__0)
		{ after(grammarAccess.getFactorAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePrimary
entryRulePrimary
:
{ before(grammarAccess.getPrimaryRule()); }
	 rulePrimary
{ after(grammarAccess.getPrimaryRule()); } 
	 EOF 
;

// Rule Primary
rulePrimary 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPrimaryAccess().getAlternatives()); }
		(rule__Primary__Alternatives)
		{ after(grammarAccess.getPrimaryAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLetBinding
entryRuleLetBinding
:
{ before(grammarAccess.getLetBindingRule()); }
	 ruleLetBinding
{ after(grammarAccess.getLetBindingRule()); } 
	 EOF 
;

// Rule LetBinding
ruleLetBinding 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLetBindingAccess().getGroup()); }
		(rule__LetBinding__Group__0)
		{ after(grammarAccess.getLetBindingAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVariableUse
entryRuleVariableUse
:
{ before(grammarAccess.getVariableUseRule()); }
	 ruleVariableUse
{ after(grammarAccess.getVariableUseRule()); } 
	 EOF 
;

// Rule VariableUse
ruleVariableUse 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVariableUseAccess().getRefAssignment()); }
		(rule__VariableUse__RefAssignment)
		{ after(grammarAccess.getVariableUseAccess().getRefAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Alternatives_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExpAccess().getGroup_1_0_0()); }
		(rule__Exp__Group_1_0_0__0)
		{ after(grammarAccess.getExpAccess().getGroup_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getExpAccess().getGroup_1_0_1()); }
		(rule__Exp__Group_1_0_1__0)
		{ after(grammarAccess.getExpAccess().getGroup_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Alternatives_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFactorAccess().getGroup_1_0_0()); }
		(rule__Factor__Group_1_0_0__0)
		{ after(grammarAccess.getFactorAccess().getGroup_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getFactorAccess().getGroup_1_0_1()); }
		(rule__Factor__Group_1_0_1__0)
		{ after(grammarAccess.getFactorAccess().getGroup_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimaryAccess().getGroup_0()); }
		(rule__Primary__Group_0__0)
		{ after(grammarAccess.getPrimaryAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getPrimaryAccess().getParenthesisAction_1()); }
		()
		{ after(grammarAccess.getPrimaryAccess().getParenthesisAction_1()); }
	)
	|
	(
		{ before(grammarAccess.getPrimaryAccess().getGroup_2()); }
		(rule__Primary__Group_2__0)
		{ after(grammarAccess.getPrimaryAccess().getGroup_2()); }
	)
	|
	(
		{ before(grammarAccess.getPrimaryAccess().getVariableUseParserRuleCall_3()); }
		ruleVariableUse
		{ after(grammarAccess.getPrimaryAccess().getVariableUseParserRuleCall_3()); }
	)
	|
	(
		{ before(grammarAccess.getPrimaryAccess().getLetBindingParserRuleCall_4()); }
		ruleLetBinding
		{ after(grammarAccess.getPrimaryAccess().getLetBindingParserRuleCall_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MathExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MathExp__Group__0__Impl
	rule__MathExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MathExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMathExpAccess().getProgramKeyword_0()); }
	'program'
	{ after(grammarAccess.getMathExpAccess().getProgramKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MathExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MathExp__Group__1__Impl
	rule__MathExp__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MathExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMathExpAccess().getNameAssignment_1()); }
	(rule__MathExp__NameAssignment_1)
	{ after(grammarAccess.getMathExpAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MathExp__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MathExp__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MathExp__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMathExpAccess().getVariablesAssignment_2()); }
	(rule__MathExp__VariablesAssignment_2)*
	{ after(grammarAccess.getMathExpAccess().getVariablesAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__VarBinding__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VarBinding__Group__0__Impl
	rule__VarBinding__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__VarBinding__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVarBindingAccess().getVarKeyword_0()); }
	'var'
	{ after(grammarAccess.getVarBindingAccess().getVarKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VarBinding__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VarBinding__Group__1__Impl
	rule__VarBinding__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__VarBinding__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVarBindingAccess().getNameAssignment_1()); }
	(rule__VarBinding__NameAssignment_1)
	{ after(grammarAccess.getVarBindingAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VarBinding__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VarBinding__Group__2__Impl
	rule__VarBinding__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__VarBinding__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVarBindingAccess().getEqualsSignKeyword_2()); }
	'='
	{ after(grammarAccess.getVarBindingAccess().getEqualsSignKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VarBinding__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VarBinding__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__VarBinding__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVarBindingAccess().getExpressionAssignment_3()); }
	(rule__VarBinding__ExpressionAssignment_3)
	{ after(grammarAccess.getVarBindingAccess().getExpressionAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Exp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Exp__Group__0__Impl
	rule__Exp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpAccess().getFactorParserRuleCall_0()); }
	ruleFactor
	{ after(grammarAccess.getExpAccess().getFactorParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Exp__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpAccess().getGroup_1()); }
	(rule__Exp__Group_1__0)*
	{ after(grammarAccess.getExpAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Exp__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Exp__Group_1__0__Impl
	rule__Exp__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpAccess().getAlternatives_1_0()); }
	(rule__Exp__Alternatives_1_0)
	{ after(grammarAccess.getExpAccess().getAlternatives_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Exp__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpAccess().getRightAssignment_1_1()); }
	(rule__Exp__RightAssignment_1_1)
	{ after(grammarAccess.getExpAccess().getRightAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Exp__Group_1_0_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Exp__Group_1_0_0__0__Impl
	rule__Exp__Group_1_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group_1_0_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpAccess().getPlusLeftAction_1_0_0_0()); }
	()
	{ after(grammarAccess.getExpAccess().getPlusLeftAction_1_0_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group_1_0_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Exp__Group_1_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group_1_0_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpAccess().getPlusSignKeyword_1_0_0_1()); }
	'+'
	{ after(grammarAccess.getExpAccess().getPlusSignKeyword_1_0_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Exp__Group_1_0_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Exp__Group_1_0_1__0__Impl
	rule__Exp__Group_1_0_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group_1_0_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpAccess().getMinusLeftAction_1_0_1_0()); }
	()
	{ after(grammarAccess.getExpAccess().getMinusLeftAction_1_0_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group_1_0_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Exp__Group_1_0_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__Group_1_0_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpAccess().getHyphenMinusKeyword_1_0_1_1()); }
	'-'
	{ after(grammarAccess.getExpAccess().getHyphenMinusKeyword_1_0_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Factor__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Factor__Group__0__Impl
	rule__Factor__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFactorAccess().getPrimaryParserRuleCall_0()); }
	rulePrimary
	{ after(grammarAccess.getFactorAccess().getPrimaryParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Factor__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFactorAccess().getGroup_1()); }
	(rule__Factor__Group_1__0)*
	{ after(grammarAccess.getFactorAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Factor__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Factor__Group_1__0__Impl
	rule__Factor__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFactorAccess().getAlternatives_1_0()); }
	(rule__Factor__Alternatives_1_0)
	{ after(grammarAccess.getFactorAccess().getAlternatives_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Factor__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFactorAccess().getRightAssignment_1_1()); }
	(rule__Factor__RightAssignment_1_1)
	{ after(grammarAccess.getFactorAccess().getRightAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Factor__Group_1_0_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Factor__Group_1_0_0__0__Impl
	rule__Factor__Group_1_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group_1_0_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFactorAccess().getMultLeftAction_1_0_0_0()); }
	()
	{ after(grammarAccess.getFactorAccess().getMultLeftAction_1_0_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group_1_0_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Factor__Group_1_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group_1_0_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFactorAccess().getAsteriskKeyword_1_0_0_1()); }
	'*'
	{ after(grammarAccess.getFactorAccess().getAsteriskKeyword_1_0_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Factor__Group_1_0_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Factor__Group_1_0_1__0__Impl
	rule__Factor__Group_1_0_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group_1_0_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFactorAccess().getDivLeftAction_1_0_1_0()); }
	()
	{ after(grammarAccess.getFactorAccess().getDivLeftAction_1_0_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group_1_0_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Factor__Group_1_0_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__Group_1_0_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFactorAccess().getSolidusKeyword_1_0_1_1()); }
	'/'
	{ after(grammarAccess.getFactorAccess().getSolidusKeyword_1_0_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Primary__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Primary__Group_0__0__Impl
	rule__Primary__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryAccess().getMathNumberAction_0_0()); }
	()
	{ after(grammarAccess.getPrimaryAccess().getMathNumberAction_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Primary__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryAccess().getValueAssignment_0_1()); }
	(rule__Primary__ValueAssignment_0_1)
	{ after(grammarAccess.getPrimaryAccess().getValueAssignment_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Primary__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Primary__Group_2__0__Impl
	rule__Primary__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryAccess().getLeftParenthesisKeyword_2_0()); }
	'('
	{ after(grammarAccess.getPrimaryAccess().getLeftParenthesisKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Primary__Group_2__1__Impl
	rule__Primary__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryAccess().getExpAssignment_2_1()); }
	(rule__Primary__ExpAssignment_2_1)
	{ after(grammarAccess.getPrimaryAccess().getExpAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Primary__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryAccess().getRightParenthesisKeyword_2_2()); }
	')'
	{ after(grammarAccess.getPrimaryAccess().getRightParenthesisKeyword_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__LetBinding__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetBinding__Group__0__Impl
	rule__LetBinding__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetBindingAccess().getLetKeyword_0()); }
	'let'
	{ after(grammarAccess.getLetBindingAccess().getLetKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetBinding__Group__1__Impl
	rule__LetBinding__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetBindingAccess().getNameAssignment_1()); }
	(rule__LetBinding__NameAssignment_1)
	{ after(grammarAccess.getLetBindingAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetBinding__Group__2__Impl
	rule__LetBinding__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetBindingAccess().getEqualsSignKeyword_2()); }
	'='
	{ after(grammarAccess.getLetBindingAccess().getEqualsSignKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetBinding__Group__3__Impl
	rule__LetBinding__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetBindingAccess().getBindingAssignment_3()); }
	(rule__LetBinding__BindingAssignment_3)
	{ after(grammarAccess.getLetBindingAccess().getBindingAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetBinding__Group__4__Impl
	rule__LetBinding__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetBindingAccess().getInKeyword_4()); }
	'in'
	{ after(grammarAccess.getLetBindingAccess().getInKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetBinding__Group__5__Impl
	rule__LetBinding__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetBindingAccess().getBodyAssignment_5()); }
	(rule__LetBinding__BodyAssignment_5)
	{ after(grammarAccess.getLetBindingAccess().getBodyAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetBinding__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetBindingAccess().getEndKeyword_6()); }
	'end'
	{ after(grammarAccess.getLetBindingAccess().getEndKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MathExp__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMathExpAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getMathExpAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MathExp__VariablesAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMathExpAccess().getVariablesVarBindingParserRuleCall_2_0()); }
		ruleVarBinding
		{ after(grammarAccess.getMathExpAccess().getVariablesVarBindingParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VarBinding__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVarBindingAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getVarBindingAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VarBinding__ExpressionAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVarBindingAccess().getExpressionExpParserRuleCall_3_0()); }
		ruleExp
		{ after(grammarAccess.getVarBindingAccess().getExpressionExpParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Exp__RightAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExpAccess().getRightFactorParserRuleCall_1_1_0()); }
		ruleFactor
		{ after(grammarAccess.getExpAccess().getRightFactorParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Factor__RightAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFactorAccess().getRightPrimaryParserRuleCall_1_1_0()); }
		rulePrimary
		{ after(grammarAccess.getFactorAccess().getRightPrimaryParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__ValueAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimaryAccess().getValueINTTerminalRuleCall_0_1_0()); }
		RULE_INT
		{ after(grammarAccess.getPrimaryAccess().getValueINTTerminalRuleCall_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__ExpAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimaryAccess().getExpExpParserRuleCall_2_1_0()); }
		ruleExp
		{ after(grammarAccess.getPrimaryAccess().getExpExpParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetBindingAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getLetBindingAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__BindingAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetBindingAccess().getBindingExpParserRuleCall_3_0()); }
		ruleExp
		{ after(grammarAccess.getLetBindingAccess().getBindingExpParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetBinding__BodyAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetBindingAccess().getBodyExpParserRuleCall_5_0()); }
		ruleExp
		{ after(grammarAccess.getLetBindingAccess().getBodyExpParserRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableUse__RefAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableUseAccess().getRefBindingCrossReference_0()); }
		(
			{ before(grammarAccess.getVariableUseAccess().getRefBindingIDTerminalRuleCall_0_1()); }
			RULE_ID
			{ after(grammarAccess.getVariableUseAccess().getRefBindingIDTerminalRuleCall_0_1()); }
		)
		{ after(grammarAccess.getVariableUseAccess().getRefBindingCrossReference_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
