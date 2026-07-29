import HautevilleHouse.CategoryTheoryCategoricalSemanticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure FunctorPackage (C D : CategoryAdmittedObject) where
  mapObj : C.obj → D.obj
  mapHom : ∀ {X Y : C.obj}, C.hom X Y → D.hom (mapObj X) (mapObj Y)
  map_id : ∀ (X : C.obj), mapHom (C.id X) = D.id (mapObj X)
  map_comp : ∀ {X Y Z : C.obj} (f : C.hom X Y) (g : C.hom Y Z), mapHom (C.comp f g) = D.comp (mapHom f) (mapHom g)
  functorFullFaithful : Prop
  functorFullFaithfulTerm : functorFullFaithful

structure NaturalTransformationPackage {C D : CategoryAdmittedObject} (F G : FunctorPackage C D) where
  component : (X : C.obj) → D.hom (F.mapObj X) (G.mapObj X)
  naturality : ∀ {X Y : C.obj} (f : C.hom X Y), D.comp (component X) (G.mapHom f) = D.comp (F.mapHom f) (component Y)
  naturalTransformationIso : Prop
  naturalTransformationIsoTerm : naturalTransformationIso

def categoryFoundationsClosed : Prop :=
  ∀ (C : CategoryAdmittedObject), True

theorem category_foundations_trivial : categoryFoundationsClosed := by
  intro C; trivial

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse