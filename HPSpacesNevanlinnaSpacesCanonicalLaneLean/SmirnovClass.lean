import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure SmirnovClassData where
  outerFunction : ℂ → ℂ
  innerFunction : ℂ → ℂ
  singularInner : Prop
  canonicalFactorization : Prop
  boundaryBehavior : Prop

def SmirnovClassClosed (S : SmirnovClassData) : Prop :=
  S.canonicalFactorization ∧ S.boundaryBehavior

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse