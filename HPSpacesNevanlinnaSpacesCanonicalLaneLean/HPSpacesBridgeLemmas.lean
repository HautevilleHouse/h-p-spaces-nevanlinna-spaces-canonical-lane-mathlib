import canonicalLaneMathlib.AdmissibleClass
import HPSpacesNevanlinnaSpacesCanonicalLaneLean.HPSpacesAdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure AdmissibleClass where
  object : HPAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HPWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse