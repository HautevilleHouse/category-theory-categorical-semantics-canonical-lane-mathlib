import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure YonedaLemmaPackage (C : Type) where
  presheafCategory : Type
  yonedaEmbedding : Type
  naturalIsomorphism : Prop
  fullyFaithful : Prop
  categoricalEmbedding : Prop

structure YonedaLemmaEvidence {C : Type} (Y : YonedaLemmaPackage C) where
  naturalIsomorphismClosed : Y.naturalIsomorphism
  fullyFaithfulClosed : Y.fullyFaithful
  categoricalEmbeddingClosed : Y.categoricalEmbedding

def YonedaLemmaClosed {C : Type} (Y : YonedaLemmaPackage C) : Prop :=
  Y.naturalIsomorphism ∧ Y.fullyFaithful ∧ Y.categoricalEmbedding

theorem yoneda_lemma_closed_from_evidence
    {C : Type} (Y : YonedaLemmaPackage C) (E : YonedaLemmaEvidence Y) :
    YonedaLemmaClosed Y := by
  exact And.intro E.naturalIsomorphismClosed
    (And.intro E.fullyFaithfulClosed E.categoricalEmbeddingClosed)

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse