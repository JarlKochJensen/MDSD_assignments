/*
 * generated by Xtext 2.25.0
 */
package dk.sdu.mmmi.mdsd.generator

import dk.sdu.mmmi.mdsd.math.Div
import dk.sdu.mmmi.mdsd.math.LetBinding
import dk.sdu.mmmi.mdsd.math.MathExp
import dk.sdu.mmmi.mdsd.math.MathNumber
import dk.sdu.mmmi.mdsd.math.Minus
import dk.sdu.mmmi.mdsd.math.Mult
import dk.sdu.mmmi.mdsd.math.Plus
import dk.sdu.mmmi.mdsd.math.VarBinding
import dk.sdu.mmmi.mdsd.math.VariableUse
import java.util.HashMap
import java.util.Map
import javax.swing.JOptionPane
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.AbstractGenerator
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext
import dk.sdu.mmmi.mdsd.math.Parenthesis

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class MathGenerator extends AbstractGenerator {

	static Map<String, Integer> variables;

	override void doGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
		val math = resource.allContents.filter(MathExp).next

		fsa.generateFile("/math_expression/" + math.name + ".java", math.compile);

	}

	def compile(MathExp math) '''
			package math_expression;
			
		public class «math.name» {
			«FOR variable : math.variables»
				public int «variable.name»;
			«ENDFOR»
		
		public void compute(){
			«FOR variable : math.variables»
				«variable.name» = «variable.expression.computeExp» ;
			«ENDFOR»
			}
		}
	'''

	def void displayPanel(Map<String, Integer> result) {
		var resultString = ""
		for (entry : result.entrySet()) {
			resultString += "var " + entry.getKey() + " = " + entry.getValue() + "\n"
		}

		JOptionPane.showMessageDialog(null, resultString, "Math Language", JOptionPane.INFORMATION_MESSAGE)
	}

	/*
	 * 	def static compute(MathExp math) {
	 * 		variables = new HashMap()
	 * 		for (varBinding : math.variables)
	 * 			varBinding.compileExp()
	 * 		variables
	 * 	}

	 * 	/* 
	 * 	def static dispatch int compileExp(VarBinding binding) {
	 * 		variables.put(binding.name, binding.expression.compileExp())
	 * 		return variables.get(binding.name)
	 * 	}
	 */
	def dispatch String computeExp(MathNumber exp) {
		return exp.value.toString
	}

	def dispatch String computeExp(Plus exp) {
		return exp.left.computeExp + '+' + exp.right.computeExp;
	}

	def dispatch String computeExp(Minus exp) {
		return exp.left.computeExp + '-' + exp.right.computeExp
	}

	def dispatch String computeExp(Mult exp) {
		return exp.left.computeExp + '*' + exp.right.computeExp
	}

	def dispatch String computeExp(Div exp) {
		return exp.left.computeExp + '/' + exp.right.computeExp
	}

	def dispatch String computeExp(Parenthesis exp) {
		return '(' + exp.exp.computeExp + ')'
	}

	def dispatch String computeExp(VariableUse varUse) {
		val ref = varUse.ref
		switch ref {
			VarBinding: varUse.ref.name
			LetBinding: 'let' // ref.expression.computeExp
		}
	}

/*
 * def static dispatch int compileExp(LetBinding exp) {
 * 	return exp.body.compileExp
 * }

 * 
 *  
 * def static dispatch String compileExp(VariableUse varUse) {

 * 	exp.ref.computeBinding
 * 	return varUse.ref.name
 * }
 * 
 * def static dispatch int computeBinding(VarBinding binding) {
 * 	if (!variables.containsKey(binding.name))
 * 		binding.compileExp()
 * 	variables.get(binding.name)
 * }

 * def static dispatch int computeBinding(LetBinding binding) {
 * 	binding.binding.compileExp
 * }
 */
}
