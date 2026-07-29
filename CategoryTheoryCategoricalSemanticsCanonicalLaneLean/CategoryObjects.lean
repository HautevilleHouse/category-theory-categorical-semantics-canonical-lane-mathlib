import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure CategoryObject where
  carrier : Type u
  identity : carrier
  composition : carrier → carrier → carrier
  associativity : Prop
  identityLaw : Prop

structure CategoryEvidence (C : CategoryObject) where
  associativityClosed : C.associativity
  identityLawClosed : C.identityLaw

def CategoryClosed (C : CategoryObject) : Prop :=
  C.associativity ∧ C.identityLaw

theorem category_closed_from_evidence (C : CategoryObject) (E : CategoryEvidence C) : CategoryClosed C := by
  exact And.intro E.associativityClosed E.identityLawClosed

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse
