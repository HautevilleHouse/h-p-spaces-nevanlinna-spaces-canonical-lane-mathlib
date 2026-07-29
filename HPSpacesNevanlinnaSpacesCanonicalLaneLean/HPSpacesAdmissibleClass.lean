import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure HPSpace (p : ℝ) where
  positive : p > 0
  domain : Set ℂ
  harmonicFunctions : Set (ℂ → ℂ)
  property : Prop

structure NevanlinnaSpace where
  meromorphicFunctions : Set (ℂ → ℂ)
  characteristic : ℂ → ℝ
  property : Prop

structure HPAdmissibleObject where
  p : ℝ
  hpSpace : HPSpace hpSpace
  nevanlinnaSpace : NevanlinnaSpace
  inclusionProperty : Prop
  conclusion : inclusionProperty

def HPWitnessClosed (O : HPAdmissibleObject) : Prop :=
  O.inclusionProperty

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse