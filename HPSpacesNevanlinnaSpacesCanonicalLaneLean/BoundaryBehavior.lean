import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure BoundaryBehaviorPackage where
  radialLimitExists : Prop
  nontangentialLimitExists : Prop
  boundaryFunctionLp : Prop
  poissonIntegralRepresentation : Prop
  cauchyIntegralRepresentation : Prop
  boundaryValuesReconstruction : Prop

structure BoundaryBehaviorEvidence (B : BoundaryBehaviorPackage) where
  radialLimitExistsClosed : B.radialLimitExists
  nontangentialLimitExistsClosed : B.nontangentialLimitExists
  boundaryFunctionLpClosed : B.boundaryFunctionLp
  poissonIntegralRepresentationClosed : B.poissonIntegralRepresentation
  cauchyIntegralRepresentationClosed : B.cauchyIntegralRepresentation
  boundaryValuesReconstructionClosed : B.boundaryValuesReconstruction

def BoundaryBehaviorClosed (B : BoundaryBehaviorPackage) : Prop :=
  B.radialLimitExists ∧ B.nontangentialLimitExists ∧ B.boundaryFunctionLp ∧ B.poissonIntegralRepresentation ∧ B.cauchyIntegralRepresentation ∧ B.boundaryValuesReconstruction

theorem boundary_behavior_closed_from_evidence (B : BoundaryBehaviorPackage)
    (E : BoundaryBehaviorEvidence B) : BoundaryBehaviorClosed B := by
  exact And.intro E.radialLimitExistsClosed
    (And.intro E.nontangentialLimitExistsClosed
      (And.intro E.boundaryFunctionLpClosed
        (And.intro E.poissonIntegralRepresentationClosed
          (And.intro E.cauchyIntegralRepresentationClosed E.boundaryValuesReconstructionClosed))))

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse