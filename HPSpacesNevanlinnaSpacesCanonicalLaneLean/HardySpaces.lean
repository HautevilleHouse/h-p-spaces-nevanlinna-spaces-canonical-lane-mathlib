import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure HardySpacePackage where
  domain : Type u
  topology : TopologicalSpace domain
  analyticStructure : Prop
  p : ℝ
  pgt1 : 1 ≤ p
  measurableBoundaryValues : Prop
  normComplete : Prop

structure HardySpaceEvidence (H : HardySpacePackage) where
  analyticStructureClosed : H.analyticStructure
  measurableBoundaryValuesClosed : H.measurableBoundaryValues
  normCompleteClosed : H.normComplete

def HardySpaceClosed (H : HardySpacePackage) : Prop :=
  H.analyticStructure ∧ H.measurableBoundaryValues ∧ H.normComplete

theorem hardy_space_closed_from_evidence (H : HardySpacePackage)
    (E : HardySpaceEvidence H) : HardySpaceClosed H := by
  exact And.intro E.analyticStructureClosed
    (And.intro E.measurableBoundaryValuesClosed E.normCompleteClosed)

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse