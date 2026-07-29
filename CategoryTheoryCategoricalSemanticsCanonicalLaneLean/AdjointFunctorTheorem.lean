import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure AdjointFunctorPackage where
  categoryC : Type u
  categoryD : Type u
  functorF : categoryC → categoryD
  functorG : categoryD → categoryC
  unitCounitNatural : Prop
  triangleIdentities : Prop
  bijectionHomSets : Prop
  endpointRecognized : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  unitCounitNaturalClosed : A.unitCounitNatural
  triangleIdentitiesClosed : A.triangleIdentities
  bijectionHomSetsClosed : A.bijectionHomSets
  endpointRecognizedClosed : A.endpointRecognized

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.unitCounitNatural ∧ A.triangleIdentities ∧ A.bijectionHomSets ∧ A.endpointRecognized

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.unitCounitNaturalClosed (And.intro E.triangleIdentitiesClosed (And.intro E.bijectionHomSetsClosed E.endpointRecognizedClosed))

theorem adjoint_functor_bridge (A : AdjointFunctorPackage) : bridgeClosed (AdmissibleClass.mk A) := by
  unfold bridgeClosed
  simp

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse