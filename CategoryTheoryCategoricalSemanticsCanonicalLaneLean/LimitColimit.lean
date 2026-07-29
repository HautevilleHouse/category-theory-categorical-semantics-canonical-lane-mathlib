import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

structure LimitColimitPackage where
  limitCone : Type u
  colimitCocone : Type v
  universalPropertyLimit : Prop
  universalPropertyColimit : Prop
  limitExistence : Prop
  colimitExistence : Prop
  universalPropertyLimitTerm : universalPropertyLimit
  universalPropertyColimitTerm : universalPropertyColimit
  limitExistenceTerm : limitExistence
  colimitExistenceTerm : colimitExistence

structure LimitColimitEvidence (L : LimitColimitPackage) where
  universalPropertyLimitClosed : L.universalPropertyLimit
  universalPropertyColimitClosed : L.universalPropertyColimit
  limitExistenceClosed : L.limitExistence
  colimitExistenceClosed : L.colimitExistence

def LimitColimitClosed (L : LimitColimitPackage) : Prop :=
  L.universalPropertyLimit ∧ L.universalPropertyColimit ∧
  L.limitExistence ∧ L.colimitExistence

theorem limit_colimit_closed_from_evidence (L : LimitColimitPackage)
    (E : LimitColimitEvidence L) : LimitColimitClosed L := by
  exact And.intro E.universalPropertyLimitClosed
    (And.intro E.universalPropertyColimitClosed
      (And.intro E.limitExistenceClosed E.colimitExistenceClosed))

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse
