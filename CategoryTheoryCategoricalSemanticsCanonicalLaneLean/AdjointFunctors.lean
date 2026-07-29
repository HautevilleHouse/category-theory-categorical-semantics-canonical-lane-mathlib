import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure AdjointFunctorPackage (L R : Type) where
  leftAdjoint : Type
  rightAdjoint : Type
  unitNaturalTransformation : Prop
  counitNaturalTransformation : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence {L R : Type} (A : AdjointFunctorPackage L R) where
  unitNaturalTransformationClosed : A.unitNaturalTransformation
  counitNaturalTransformationClosed : A.counitNaturalTransformation
  triangleIdentitiesClosed : A.triangleIdentities

def AdjointFunctorClosed {L R : Type} (A : AdjointFunctorPackage L R) : Prop :=
  A.unitNaturalTransformation ∧ A.counitNaturalTransformation ∧ A.triangleIdentities

theorem adjoint_functor_closed_from_evidence
    {L R : Type} (A : AdjointFunctorPackage L R) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.unitNaturalTransformationClosed
    (And.intro E.counitNaturalTransformationClosed E.triangleIdentitiesClosed)

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse