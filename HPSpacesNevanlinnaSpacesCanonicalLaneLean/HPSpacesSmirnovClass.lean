import HPSpacesNevanlinnaSpacesCanonicalLaneLean.HPSpacesAdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure SmirnovClassPackage (A : AdmissibleClass) where
  innerFunctionFactor : Prop
  outerFunctionFactor : Prop
  factorizationUnique : Prop
  innerFunctionFactorTerm : innerFunctionFactor
  outerFunctionFactorTerm : outerFunctionFactor
  factorizationUniqueTerm : factorizationUnique

def SmirnovClassClosed (A : AdmissibleClass) : Prop :=
  let S : SmirnovClassPackage A := Sorry
  S.innerFunctionFactor ∧ S.outerFunctionFactor ∧ S.factorizationUnique

theorem smirnov_class_closed (A : AdmissibleClass) : SmirnovClassClosed A := by
  sorry

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse