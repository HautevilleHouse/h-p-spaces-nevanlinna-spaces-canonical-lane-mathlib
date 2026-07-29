import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure InnerFunctionFactorizationPackage where
  outerFunctionDefined : Prop
  innerFunctionDefined : Prop
  singularInnerFactor : Prop
  blaschkeProductConvergence : Prop
  canonicalFactorization : Prop

structure InnerFunctionFactorizationEvidence (F : InnerFunctionFactorizationPackage) where
  outerFunctionDefinedClosed : F.outerFunctionDefined
  innerFunctionDefinedClosed : F.innerFunctionDefined
  singularInnerFactorClosed : F.singularInnerFactor
  blaschkeProductConvergenceClosed : F.blaschkeProductConvergence
  canonicalFactorizationClosed : F.canonicalFactorization

def InnerFunctionFactorizationClosed (F : InnerFunctionFactorizationPackage) : Prop :=
  F.outerFunctionDefined ∧ F.innerFunctionDefined ∧ F.singularInnerFactor ∧ F.blaschkeProductConvergence ∧ F.canonicalFactorization

theorem inner_function_factorization_closed_from_evidence
    (F : InnerFunctionFactorizationPackage) (E : InnerFunctionFactorizationEvidence F) :
    InnerFunctionFactorizationClosed F := by
  exact And.intro E.outerFunctionDefinedClosed
    (And.intro E.innerFunctionDefinedClosed
      (And.intro E.singularInnerFactorClosed
        (And.intro E.blaschkeProductConvergenceClosed E.canonicalFactorizationClosed)))

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse