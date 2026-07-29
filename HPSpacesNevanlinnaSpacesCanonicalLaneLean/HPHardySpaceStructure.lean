import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure HardySpacePackage where
  domain : Type u
  domainTopology : TopologicalSpace domain
  measure : MeasureTheory.Measure domain
  p : ℝ≥0∞
  analyticFunctions : Prop
  normDefined : Prop
  completeness : Prop
  factorizationProperty : Prop

structure HardySpaceEvidence (H : HardySpacePackage) where
  analyticFunctionsClosed : H.analyticFunctions
  normDefinedClosed : H.normDefined
  completenessClosed : H.completeness
  factorizationPropertyClosed : H.factorizationProperty

def HardySpaceClosed (H : HardySpacePackage) : Prop :=
  H.analyticFunctions ∧ H.normDefined ∧ H.completeness ∧ H.factorizationProperty

theorem hardyspace_closed_from_evidence (H : HardySpacePackage) (E : HardySpaceEvidence H) :
    HardySpaceClosed H := by
  exact And.intro E.analyticFunctionsClosed
    (And.intro E.normDefinedClosed (And.intro E.completenessClosed E.factorizationPropertyClosed))

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse