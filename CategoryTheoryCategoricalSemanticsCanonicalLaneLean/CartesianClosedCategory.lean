import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure CartesianClosedCategoryPackage where
  category : Type u
  terminalObject : category
  product : category -> category -> category
  exponential : category -> category -> category
  terminalUniversal : Prop
  productUniversal : Prop
  exponentialUniversal : Prop
  curryUncurry : Prop

structure CartesianClosedEvidence (C : CartesianClosedCategoryPackage) where
  terminalClosed : C.terminalUniversal
  productClosed : C.productUniversal
  exponentialClosed : C.exponentialUniversal
  curryUncurryClosed : C.curryUncurry

def CartesianClosedCategoryClosed (C : CartesianClosedCategoryPackage) : Prop :=
  C.terminalUniversal ∧ C.productUniversal ∧ C.exponentialUniversal ∧ C.curryUncurry

theorem cartesian_closed_category_closed_from_evidence (C : CartesianClosedCategoryPackage) (E : CartesianClosedEvidence C) :
    CartesianClosedCategoryClosed C := by
  exact And.intro E.terminalClosed (And.intro E.productClosed (And.intro E.exponentialClosed E.curryUncurryClosed))

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse