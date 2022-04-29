/**
 * generated by Xtext 2.25.0
 */
package dk.sdu.mmmi.mdsd.validation;

import com.google.common.base.Objects;
import dk.sdu.mmmi.mdsd.math.MathExp;
import dk.sdu.mmmi.mdsd.math.MathPackage;
import dk.sdu.mmmi.mdsd.math.VarBinding;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.validation.Check;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;

/**
 * This class contains custom validation rules.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
@SuppressWarnings("all")
public class MathValidator extends AbstractMathValidator {
  public static final String VAR_UNIQUE = "var_unique";
  
  @Check
  public void uniqueGlobalVariableDefinition(final VarBinding binding) {
    EObject _eContainer = binding.eContainer();
    final Function1<VarBinding, Boolean> _function = new Function1<VarBinding, Boolean>() {
      public Boolean apply(final VarBinding it) {
        String _name = it.getName();
        String _name_1 = binding.getName();
        return Boolean.valueOf(Objects.equal(_name, _name_1));
      }
    };
    int _size = IterableExtensions.size(IterableExtensions.<VarBinding>filter(((MathExp) _eContainer).getVariables(), _function));
    boolean _greaterThan = (_size > 1);
    if (_greaterThan) {
      this.error("Duplicate global variable", MathPackage.eINSTANCE.getBinding_Name(), MathValidator.VAR_UNIQUE);
    }
  }
}
