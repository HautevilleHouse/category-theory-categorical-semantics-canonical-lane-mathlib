import HautevilleHouse.CategoryTheoryCategoricalSemanticsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.CategoryTheory.Category.Basic

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CategoryTheoreticSpace where
  carrier : Type
  categoryStructure : CategoryTheory.CategoryStruct carrier
  categoryAx : CategoryTheory.Category carrier

structure CategoryTheoreticAdmittedObject where
  space : CategoryTheoreticSpace
  hasLimits : Prop
  hasColimits : Prop
  yonedaFullFaithful : Prop
  adjointFunctorTheorem : Prop
  conclusion : hasLimits ∧ hasColimits ∧ yonedaFullFaithful ∧ adjointFunctorTheorem

structure CategoryTheoreticEndgameState where
  object : CategoryTheoreticAdmittedObject

def CategoryTheoreticWitnessClosed (O : CategoryTheoreticAdmittedObject) : Prop :=
  O.hasLimits ∧ O.hasColimits ∧ O.yonedaFullFaithful ∧ O.adjointFunctorTheorem

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse
