import HPSpacesNevanlinnaSpacesCanonicalLaneLean.HPSpacesGateLemmas

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

def ConstrainedHPClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hp_endgame (A : AdmissibleClass) :
    ConstrainedHPClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse