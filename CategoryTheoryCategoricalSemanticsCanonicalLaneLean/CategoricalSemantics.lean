import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure CategoricalSemanticsPackage (C : Type) where
  syntacticCategory : Type
  interpretationFunctor : Type
  soundnessTheorem : Prop
  completenessTheorem : Prop
  internalLanguage : Prop

structure CategoricalSemanticsEvidence {C : Type} (S : CategoricalSemanticsPackage C) where
  soundnessTheoremClosed : S.soundnessTheorem
  completenessTheoremClosed : S.completenessTheorem
  internalLanguageClosed : S.internalLanguage

def CategoricalSemanticsClosed {C : Type} (S : CategoricalSemanticsPackage C) : Prop :=
  S.soundnessTheorem ∧ S.completenessTheorem ∧ S.internalLanguage

theorem categorical_semantics_closed_from_evidence
    {C : Type} (S : CategoricalSemanticsPackage C) (E : CategoricalSemanticsEvidence S) :
    CategoricalSemanticsClosed S := by
  exact And.intro E.soundnessTheoremClosed
    (And.intro E.completenessTheoremClosed E.internalLanguageClosed)

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse