import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure FunctorCategoryPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functors : Type (max u v)
  naturalTransformations : Type (max u v)
  compositionLaw : Prop
  identityLaw : Prop
  associativityLaw : Prop
  identityLawTerm : identityLaw
  associativityLawTerm : associativityLaw

structure FunctorCategoryEvidence (F : FunctorCategoryPackage) where
  compositionLawClosed : F.compositionLaw
  identityLawClosed : F.identityLaw
  associativityLawClosed : F.associativityLaw

def FunctorCategoryClosed (F : FunctorCategoryPackage) : Prop :=
  F.compositionLaw ∧ F.identityLaw ∧ F.associativityLaw

theorem functor_category_closed_from_evidence (F : FunctorCategoryPackage)
    (E : FunctorCategoryEvidence F) : FunctorCategoryClosed F := by
  exact And.intro E.compositionLawClosed
    (And.intro E.identityLawClosed E.associativityLawClosed)

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse
