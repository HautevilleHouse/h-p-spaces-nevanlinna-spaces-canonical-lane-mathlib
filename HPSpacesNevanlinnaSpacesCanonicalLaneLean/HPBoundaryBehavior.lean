import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure BoundaryBehaviorPackage where
  nontangentialLimitExists : Prop
  radialLimitExists : Prop
  maximalFunctionControlled : Prop
  fatouTheorem : Prop
  boundaryValuesInLp : Prop

structure BoundaryBehaviorEvidence (B : BoundaryBehaviorPackage) where
  nontangentialLimitExistsClosed : B.nontangentialLimitExists
  radialLimitExistsClosed : B.radialLimitExists
  maximalFunctionControlledClosed : B.maximalFunctionControlled
  fatouTheoremClosed : B.fatouTheorem
  boundaryValuesInLpClosed : B.boundaryValuesInLp

def BoundaryBehaviorClosed (B : BoundaryBehaviorPackage) : Prop :=
  B.nontangentialLimitExists ∧ B.radialLimitExists ∧ B.maximalFunctionControlled ∧ B.fatouTheorem ∧ B.boundaryValuesInLp

theorem boundary_behavior_closed_from_evidence
    (B : BoundaryBehaviorPackage) (E : BoundaryBehaviorEvidence B) :
    BoundaryBehaviorClosed B := by
  exact And.intro E.nontangentialLimitExistsClosed
    (And.intro E.radialLimitExistsClosed
      (And.intro E.maximalFunctionControlledClosed
        (And.intro E.fatouTheoremClosed E.boundaryValuesInLpClosed)))

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse