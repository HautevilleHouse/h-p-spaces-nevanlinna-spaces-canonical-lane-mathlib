import HPSpacesNevanlinnaSpacesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse