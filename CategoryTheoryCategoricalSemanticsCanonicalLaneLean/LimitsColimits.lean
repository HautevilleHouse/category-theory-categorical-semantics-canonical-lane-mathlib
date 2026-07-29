import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure LimitsColimitsPackage (J C : Type) where
  diagram : Type
  limitCone : Prop
  colimitCocone : Prop
  universalProperty : Prop
  existenceOfLimits : Prop
  existenceOfColimits : Prop

structure LimitsColimitsEvidence {J C : Type} (L : LimitsColimitsPackage J C) where
  limitConeClosed : L.limitCone
  colimitCoconeClosed : L.colimitCocone
  universalPropertyClosed : L.universalProperty
  existenceOfLimitsClosed : L.existenceOfLimits
  existenceOfColimitsClosed : L.existenceOfColimits

def LimitsColimitsClosed {J C : Type} (L : LimitsColimitsPackage J C) : Prop :=
  L.limitCone ∧ L.colimitCocone ∧ L.universalProperty ∧ L.existenceOfLimits ∧ L.existenceOfColimits

theorem limits_colimits_closed_from_evidence
    {J C : Type} (L : LimitsColimitsPackage J C) (E : LimitsColimitsEvidence L) :
    LimitsColimitsClosed L := by
  exact And.intro E.limitConeClosed
    (And.intro E.colimitCoconeClosed
      (And.intro E.universalPropertyClosed
        (And.intro E.existenceOfLimitsClosed E.existenceOfColimitsClosed)))

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse