import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure SliceCategoryPackage (C : Type u) [Category C] (c : C) where
  carrier : Type u
  categoryStruct : CategoryStruct (Over c)
  category : Category (Over c)
  terminalObject : Over c
  terminalObjectIsTerminal : IsTerminal terminalObject
  pullbackExists : ∀ (f : Over c) (g : Over c), HasPullback f.hom g.hom
  dependentProductStructure : Prop

def SliceCategoryClosed {C : Type u} [Category C] {c : C} (S : SliceCategoryPackage C c) : Prop :=
  S.dependentProductStructure

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse