import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalSemanticsCanonicalLaneLean.AdjointFunctors
import HautevilleHouse.CategoryTheoryCategoricalSemanticsCanonicalLaneLean.YonedaLemma
import HautevilleHouse.CategoryTheoryCategoricalSemanticsCanonicalLaneLean.LimitsColimits

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := CategoryClosed A.object

def gateClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCategoricalSemanticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_categorical_semantics_endgame (A : AdmissibleClass) : ConstrainedCategoricalSemanticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse
