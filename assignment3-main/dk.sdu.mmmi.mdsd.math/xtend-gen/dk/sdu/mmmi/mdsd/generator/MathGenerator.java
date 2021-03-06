/**
 * generated by Xtext 2.25.0
 */
package dk.sdu.mmmi.mdsd.generator;

import com.google.common.collect.Iterators;
import dk.sdu.mmmi.mdsd.math.Binding;
import dk.sdu.mmmi.mdsd.math.Div;
import dk.sdu.mmmi.mdsd.math.Expression;
import dk.sdu.mmmi.mdsd.math.LetBinding;
import dk.sdu.mmmi.mdsd.math.MathExp;
import dk.sdu.mmmi.mdsd.math.MathNumber;
import dk.sdu.mmmi.mdsd.math.Minus;
import dk.sdu.mmmi.mdsd.math.Mult;
import dk.sdu.mmmi.mdsd.math.Parenthesis;
import dk.sdu.mmmi.mdsd.math.Plus;
import dk.sdu.mmmi.mdsd.math.VarBinding;
import dk.sdu.mmmi.mdsd.math.VariableUse;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import javax.swing.JOptionPane;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtend2.lib.StringConcatenation;
import org.eclipse.xtext.generator.AbstractGenerator;
import org.eclipse.xtext.generator.IFileSystemAccess2;
import org.eclipse.xtext.generator.IGeneratorContext;

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
@SuppressWarnings("all")
public class MathGenerator extends AbstractGenerator {
  private static Map<String, Integer> variables;
  
  public void doGenerate(final Resource resource, final IFileSystemAccess2 fsa, final IGeneratorContext context) {
    final MathExp math = Iterators.<MathExp>filter(resource.getAllContents(), MathExp.class).next();
    String _name = math.getName();
    String _plus = ("/math_expression/" + _name);
    String _plus_1 = (_plus + ".java");
    fsa.generateFile(_plus_1, this.compile(math));
  }
  
  public CharSequence compile(final MathExp math) {
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("\t");
    _builder.append("package math_expression;");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("public class ");
    String _name = math.getName();
    _builder.append(_name);
    _builder.append(" {");
    _builder.newLineIfNotEmpty();
    {
      EList<VarBinding> _variables = math.getVariables();
      for(final VarBinding variable : _variables) {
        _builder.append("\t");
        _builder.append("public int ");
        String _name_1 = variable.getName();
        _builder.append(_name_1, "\t");
        _builder.append(";");
        _builder.newLineIfNotEmpty();
      }
    }
    _builder.newLine();
    _builder.append("public void compute(){");
    _builder.newLine();
    {
      EList<VarBinding> _variables_1 = math.getVariables();
      for(final VarBinding variable_1 : _variables_1) {
        _builder.append("\t");
        String _name_2 = variable_1.getName();
        _builder.append(_name_2, "\t");
        _builder.append(" = ");
        String _computeExp = this.computeExp(variable_1.getExpression());
        _builder.append(_computeExp, "\t");
        _builder.append(" ;");
        _builder.newLineIfNotEmpty();
      }
    }
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("}");
    _builder.newLine();
    return _builder;
  }
  
  public void displayPanel(final Map<String, Integer> result) {
    String resultString = "";
    Set<Map.Entry<String, Integer>> _entrySet = result.entrySet();
    for (final Map.Entry<String, Integer> entry : _entrySet) {
      String _resultString = resultString;
      String _key = entry.getKey();
      String _plus = ("var " + _key);
      String _plus_1 = (_plus + " = ");
      Integer _value = entry.getValue();
      String _plus_2 = (_plus_1 + _value);
      String _plus_3 = (_plus_2 + "\n");
      resultString = (_resultString + _plus_3);
    }
    JOptionPane.showMessageDialog(null, resultString, "Math Language", JOptionPane.INFORMATION_MESSAGE);
  }
  
  /**
   * def static compute(MathExp math) {
   * 		variables = new HashMap()
   * 		for (varBinding : math.variables)
   * 			varBinding.compileExp()
   * 		variables
   * 	}
   * 
   * 	/
   * 	def static dispatch int compileExp(VarBinding binding) {
   * 		variables.put(binding.name, binding.expression.compileExp())
   * 		return variables.get(binding.name)
   * 	}
   */
  protected String _computeExp(final MathNumber exp) {
    return Integer.valueOf(exp.getValue()).toString();
  }
  
  protected String _computeExp(final Plus exp) {
    String _computeExp = this.computeExp(exp.getLeft());
    String _plus = (_computeExp + "+");
    String _computeExp_1 = this.computeExp(exp.getRight());
    return (_plus + _computeExp_1);
  }
  
  protected String _computeExp(final Minus exp) {
    String _computeExp = this.computeExp(exp.getLeft());
    String _plus = (_computeExp + "-");
    String _computeExp_1 = this.computeExp(exp.getRight());
    return (_plus + _computeExp_1);
  }
  
  protected String _computeExp(final Mult exp) {
    String _computeExp = this.computeExp(exp.getLeft());
    String _plus = (_computeExp + "*");
    String _computeExp_1 = this.computeExp(exp.getRight());
    return (_plus + _computeExp_1);
  }
  
  protected String _computeExp(final Div exp) {
    String _computeExp = this.computeExp(exp.getLeft());
    String _plus = (_computeExp + "/");
    String _computeExp_1 = this.computeExp(exp.getRight());
    return (_plus + _computeExp_1);
  }
  
  protected String _computeExp(final Parenthesis exp) {
    String _computeExp = this.computeExp(exp.getExp());
    String _plus = ("(" + _computeExp);
    return (_plus + ")");
  }
  
  protected String _computeExp(final VariableUse varUse) {
    String _xblockexpression = null;
    {
      final Binding ref = varUse.getRef();
      String _switchResult = null;
      boolean _matched = false;
      if (ref instanceof VarBinding) {
        _matched=true;
        _switchResult = varUse.getRef().getName();
      }
      if (!_matched) {
        if (ref instanceof LetBinding) {
          _matched=true;
          _switchResult = "let";
        }
      }
      _xblockexpression = _switchResult;
    }
    return _xblockexpression;
  }
  
  public String computeExp(final Expression exp) {
    if (exp instanceof Div) {
      return _computeExp((Div)exp);
    } else if (exp instanceof MathNumber) {
      return _computeExp((MathNumber)exp);
    } else if (exp instanceof Minus) {
      return _computeExp((Minus)exp);
    } else if (exp instanceof Mult) {
      return _computeExp((Mult)exp);
    } else if (exp instanceof Parenthesis) {
      return _computeExp((Parenthesis)exp);
    } else if (exp instanceof Plus) {
      return _computeExp((Plus)exp);
    } else if (exp instanceof VariableUse) {
      return _computeExp((VariableUse)exp);
    } else {
      throw new IllegalArgumentException("Unhandled parameter types: " +
        Arrays.<Object>asList(exp).toString());
    }
  }
}
