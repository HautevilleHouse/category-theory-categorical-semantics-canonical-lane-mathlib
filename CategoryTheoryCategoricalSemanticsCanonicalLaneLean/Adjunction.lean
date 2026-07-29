import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure AdjunctionPackage where
  leftAdjoint : Type u
  rightAdjoint : Type v
  unit : Type w
  counit : Type x
  triangleIdentities : Prop
  adjointIso : Prop
  triangleIdentitiesTerm : triangleIdentities
  adjointIsoTerm : adjointIso

structure AdjunctionEvidence (A : AdjunctionPackage) where
  triangleIdentitiesClosed : A.triangleIdentities
  adjointIsoClosed : A.adjointIso

def AdjunctionClosed (A : AdjunctionPackage) : Prop :=
  A.triangleIdentities ∧ A.adjointIso

theorem adjunction_closed_from_evidence (A : AdjunctionPackage)
    (E : AdjunctionEvidence A) : AdjunctionClosed A := by
  exact And.intro E.triangleIdentitiesClosed E.adjointIsoClosed

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse
