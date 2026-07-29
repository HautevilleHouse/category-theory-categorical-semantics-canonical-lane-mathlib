import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure MonadPackage (C : Type u) [Category C] where
  endofunctor : C ⥤ C
  unit : 𝟭 C ⟶ endofunctor
  multiplication : endofunctor ⋙ endofunctor ⟶ endofunctor
  unitLeft : ∀ (X : C), unit.app X ≫ multiplication.app X = endofunctor.map (unit.app X) 
  unitRight : ∀ (X : C), unit.app (endofunctor.obj X) ≫ multiplication.app X = 𝟙 (endofunctor.obj X)
  associativity : ∀ (X : C), endofunctor.map (multiplication.app X) ≫ multiplication.app X = multiplication.app (endofunctor.obj X) ≫ multiplication.app X

def MonadClosed {C : Type u} [Category C] (M : MonadPackage C) : Prop :=
  ∀ (X : C), M.unitLeft X ∧ M.unitRight X ∧ M.associativity X

theorem monad_closed {C : Type u} [Category C] (M : MonadPackage C) : MonadClosed M := by
  intro X
  exact ⟨M.unitLeft X, M.unitRight X, M.associativity X⟩

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse