import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure BoundaryValueData where
  radialLimitExists : Prop
  nontangentialLimitExists : Prop
  boundaryFunctionDefined : Prop
  fatouTheorem : Prop
  zeroBoundaryConclusion : Prop

def BoundaryValueClosed (B : BoundaryValueData) : Prop :=
  B.nontangentialLimitExists ∧ B.fatouTheorem ∧ B.zeroBoundaryConclusion

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse