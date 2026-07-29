import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.HalfPlane

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure HardySpace (p : ℝ) where
  domain : Set ℂ
  measure : Type u
  holomorphic : (ℂ → ℂ) → Prop
  integrable : (ℂ → ℂ) → Prop
  norm : (ℂ → ℂ) → ℝ
  normedSpace : Prop
  completeness : Prop
  p_positive : p > 0

structure NevanlinnaClass where
  domain : Set ℂ
  holomorphic : (ℂ → ℂ) → Prop
  growthCondition : (ℂ → ℂ) → Prop
  factorization : Prop

structure SmirnovClass where
  domain : Set ℂ
  holomorphic : (ℂ → ℂ) → Prop
  growthCondition : (ℂ → ℂ) → Prop
  factorization : Prop

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse
