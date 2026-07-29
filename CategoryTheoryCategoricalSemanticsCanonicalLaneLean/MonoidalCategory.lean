import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure MonoidalCategoryPackage where
  category : Type u
  tensorProduct : category → category → category
  unitObject : category
  associatorNatural : Prop
  leftUnitorNatural : Prop
  rightUnitorNatural : Prop
  pentagonIdentity : Prop
  triangleIdentity : Prop
  endpointRecognized : Prop

structure MonoidalCategoryEvidence (M : MonoidalCategoryPackage) where
  associatorNaturalClosed : M.associatorNatural
  leftUnitorNaturalClosed : M.leftUnitorNatural
  rightUnitorNaturalClosed : M.rightUnitorNatural
  pentagonIdentityClosed : M.pentagonIdentity
  triangleIdentityClosed : M.triangleIdentity
  endpointRecognizedClosed : M.endpointRecognized

def MonoidalCategoryClosed (M : MonoidalCategoryPackage) : Prop :=
  M.associatorNatural ∧ M.leftUnitorNatural ∧ M.rightUnitorNatural ∧
  M.pentagonIdentity ∧ M.triangleIdentity ∧ M.endpointRecognized

theorem monoidal_category_closed_from_evidence (M : MonoidalCategoryPackage) (E : MonoidalCategoryEvidence M) :
    MonoidalCategoryClosed M := by
  exact And.intro E.associatorNaturalClosed (And.intro E.leftUnitorNaturalClosed
    (And.intro E.rightUnitorNaturalClosed (And.intro E.pentagonIdentityClosed
      (And.intro E.triangleIdentityClosed E.endpointRecognizedClosed))))

theorem monoidal_category_bridge (M : MonoidalCategoryPackage) : bridgeClosed (AdmissibleClass.mk ...) := by
  sorry

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse