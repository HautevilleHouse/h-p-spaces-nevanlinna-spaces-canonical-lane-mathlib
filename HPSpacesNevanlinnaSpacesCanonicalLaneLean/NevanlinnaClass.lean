import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure NevanlinnaClass where
  domain : Type u
  topology : TopologicalSpace domain
  measure : Set domain → ℝ≥0∞
  meromorphicFunctions : Set (domain → ℂ)
  characteristicFinite : Prop
  deficiencyRelation : Prop

structure NevanlinnaClassEvidence (N : NevanlinnaClass) where
  characteristicFiniteClosed : N.characteristicFinite
  deficiencyRelationClosed : N.deficiencyRelation

def NevanlinnaClassClosed (N : NevanlinnaClass) : Prop :=
  N.characteristicFinite ∧ N.deficiencyRelation

theorem nevanlinna_class_closed_from_evidence
    (N : NevanlinnaClass) (E : NevanlinnaClassEvidence N) :
    NevanlinnaClassClosed N := by
  exact And.intro E.characteristicFiniteClosed E.deficiencyRelationClosed

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse
