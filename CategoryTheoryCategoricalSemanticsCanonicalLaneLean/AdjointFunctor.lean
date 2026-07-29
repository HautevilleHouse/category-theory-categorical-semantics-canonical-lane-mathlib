import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure AdjointFunctorPackage (C : Type u) [Category C] (D : Type u) [Category D] where
  leftAdjoint : C ⥤ D
  rightAdjoint : D ⥤ C
  unit : 𝟭 C ⟶ rightAdjoint ⋙ leftAdjoint
  counit : leftAdjoint ⋙ rightAdjoint ⟶ 𝟭 D
  triangleLeft : ∀ (x : C), leftAdjoint.map (unit.app x) ≫ counit.app (leftAdjoint.obj x) = 𝟙 (leftAdjoint.obj x)
  triangleRight : ∀ (y : D), unit.app (rightAdjoint.obj y) ≫ rightAdjoint.map (counit.app y) = 𝟙 (rightAdjoint.obj y)

def AdjointFunctorClosed {C : Type u} [Category C] {D : Type u} [Category D] (A : AdjointFunctorPackage C D) : Prop :=
  ∀ (x : C), A.triangleLeft x

theorem adjoint_functor_closed {C : Type u} [Category C] {D : Type u} [Category D] (A : AdjointFunctorPackage C D) : AdjointFunctorClosed A := by
  intro x
  exact A.triangleLeft x

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse