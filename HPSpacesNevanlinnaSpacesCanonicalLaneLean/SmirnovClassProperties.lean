import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HPSpacesNevanlinnaSpacesCanonicalLaneLean.HardySpaceDefinitions

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure SmirnovClassPackage where
  containmentInN : Prop
  closureUnderMultiplication : Prop
  factorizationIntoInnerOuter : Prop
  densityOfPolynomials : Prop

structure SmirnovClassEvidence (S : SmirnovClassPackage) where
  containmentInNClosed : S.containmentInN
  closureUnderMultiplicationClosed : S.closureUnderMultiplication
  factorizationIntoInnerOuterClosed : S.factorizationIntoInnerOuter
  densityOfPolynomialsClosed : S.densityOfPolynomials

def SmirnovClassClosed (S : SmirnovClassPackage) : Prop :=
  S.containmentInN ∧ S.closureUnderMultiplication ∧ S.factorizationIntoInnerOuter ∧ S.densityOfPolynomials

theorem smirnov_class_closed_from_evidence (S : SmirnovClassPackage) (E : SmirnovClassEvidence S) :
    SmirnovClassClosed S := by
  exact And.intro E.containmentInNClosed (And.intro E.closureUnderMultiplicationClosed (And.intro E.factorizationIntoInnerOuterClosed E.densityOfPolynomialsClosed))

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse
