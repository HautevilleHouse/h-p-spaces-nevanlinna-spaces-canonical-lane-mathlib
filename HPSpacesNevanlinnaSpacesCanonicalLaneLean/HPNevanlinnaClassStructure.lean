import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure NevanlinnaClassPackage where
  domain : Type u
  domainTopology : TopologicalSpace domain
  measure : MeasureTheory.Measure domain
  meromorphicFunctions : Prop
  characteristicFunctionDefined : Prop
  factorizationTheorem : Prop
  growthControl : Prop

structure NevanlinnaClassEvidence (N : NevanlinnaClassPackage) where
  meromorphicFunctionsClosed : N.meromorphicFunctions
  characteristicFunctionDefinedClosed : N.characteristicFunctionDefined
  factorizationTheoremClosed : N.factorizationTheorem
  growthControlClosed : N.growthControl

def NevanlinnaClassClosed (N : NevanlinnaClassPackage) : Prop :=
  N.meromorphicFunctions ∧ N.characteristicFunctionDefined ∧ N.factorizationTheorem ∧ N.growthControl

theorem nevanlinna_class_closed_from_evidence (N : NevanlinnaClassPackage) (E : NevanlinnaClassEvidence N) :
    NevanlinnaClassClosed N := by
  exact And.intro E.meromorphicFunctionsClosed
    (And.intro E.characteristicFunctionDefinedClosed (And.intro E.factorizationTheoremClosed E.growthControlClosed))

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse