import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure KanExtensionPackage where
  leftKan : Type u
  rightKan : Type v
  extensionProperty : Prop
  universality : Prop
  extensionPropertyTerm : extensionProperty
  universalityTerm : universality

structure KanExtensionEvidence (K : KanExtensionPackage) where
  extensionPropertyClosed : K.extensionProperty
  universalityClosed : K.universality

def KanExtensionClosed (K : KanExtensionPackage) : Prop :=
  K.extensionProperty ∧ K.universality

theorem kan_extension_closed_from_evidence (K : KanExtensionPackage)
    (E : KanExtensionEvidence K) : KanExtensionClosed K := by
  exact And.intro E.extensionPropertyClosed E.universalityClosed

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse
