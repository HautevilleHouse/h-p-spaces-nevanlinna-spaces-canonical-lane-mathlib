import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure HardySpace (p : ℝ≥0∞) where
  domain : Type u
  topology : TopologicalSpace domain
  measure : Set domain → ℝ≥0∞
  analyticFunctions : Set (domain → ℂ)
  normLpFinite : Prop
  boundaryValues : Prop

structure HardySpaceEvidence {p : ℝ≥0∞} (H : HardySpace p) where
  normLpFiniteClosed : H.normLpFinite
  boundaryValuesClosed : H.boundaryValues

def HardySpaceClosed {p : ℝ≥0∞} (H : HardySpace p) : Prop :=
  H.normLpFinite ∧ H.boundaryValues

theorem hardy_space_closed_from_evidence
    {p : ℝ≥0∞} (H : HardySpace p) (E : HardySpaceEvidence H) :
    HardySpaceClosed H := by
  exact And.intro E.normLpFiniteClosed E.boundaryValuesClosed

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse
