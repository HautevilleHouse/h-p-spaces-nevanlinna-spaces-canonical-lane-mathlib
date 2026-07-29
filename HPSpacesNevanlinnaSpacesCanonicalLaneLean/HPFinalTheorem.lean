import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

def ConstrainedHPNevanlinnaClosure (A : HPAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hp_nevanlinna_endgame (A : HPAdmissibleClass) :
    ConstrainedHPNevanlinnaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse