import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HPSpacesNevanlinnaSpacesCanonicalLaneLean.HardySpaceDefinitions

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure FactorizationPackage where
  innerFunction : Type u
  outerFunction : Type v
  singularInner : Prop
  blaschkeProduct : Prop
  factorizationExists : Prop

structure FactorizationEvidence (F : FactorizationPackage) where
  innerFunctionClosed : F.innerFunction = F.innerFunction
  outerFunctionClosed : F.outerFunction = F.outerFunction
  singularInnerClosed : F.singularInner
  blaschkeProductClosed : F.blaschkeProduct
  factorizationExistsClosed : F.factorizationExists

def FactorizationClosed (F : FactorizationPackage) : Prop :=
  F.singularInner ∧ F.blaschkeProduct ∧ F.factorizationExists

theorem factorization_closed_from_evidence (F : FactorizationPackage) (E : FactorizationEvidence F) :
    FactorizationClosed F := by
  exact And.intro E.singularInnerClosed (And.intro E.blaschkeProductClosed E.factorizationExistsClosed)

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse
