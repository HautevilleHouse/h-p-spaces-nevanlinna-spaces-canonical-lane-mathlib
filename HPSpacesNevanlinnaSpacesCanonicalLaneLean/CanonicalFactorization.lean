import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HPSpacesNevanlinnaSpacesCanonicalLaneLean.NevanlinnaFactorization
import HautevilleHouse.HPSpacesNevanlinnaSpacesCanonicalLaneLean.BoundaryValues

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure CanonicalFactorizationPackage where
  innerOuterDecomposition : Prop
  factorizationUnique : Prop
  boundaryBehavior : Prop

structure CanonicalFactorizationEvidence (C : CanonicalFactorizationPackage) where
  innerOuterDecompositionClosed : C.innerOuterDecomposition
  factorizationUniqueClosed : C.factorizationUnique
  boundaryBehaviorClosed : C.boundaryBehavior

def CanonicalFactorizationClosed (C : CanonicalFactorizationPackage) : Prop :=
  C.innerOuterDecomposition ∧ C.factorizationUnique ∧ C.boundaryBehavior

theorem canonical_factorization_closed_from_evidence (C : CanonicalFactorizationPackage) (E : CanonicalFactorizationEvidence C) :
    CanonicalFactorizationClosed C := by
  exact And.intro E.innerOuterDecompositionClosed (And.intro E.factorizationUniqueClosed E.boundaryBehaviorClosed)

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse
