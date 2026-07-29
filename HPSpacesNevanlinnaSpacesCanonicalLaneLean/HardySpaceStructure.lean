import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure HardySpaceData where
  domain : ℂ
  exponent : ℝ
  functions : ℂ → ℂ
  integrability : Prop
  analyticity : Prop
  hpNorm : ℝ
  closureProperty : Prop

def HardySpaceClosed (H : HardySpaceData) : Prop :=
  H.integrability ∧ H.analyticity ∧ H.closureProperty

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse