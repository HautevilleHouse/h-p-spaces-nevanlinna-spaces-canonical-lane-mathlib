import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure HPAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  analyticStructure : Prop
  hardyspaceStructure : Prop
  nevanlinnaStructure : Prop
  conclusion : analyticStructure ∧ hardyspaceStructure ∧ nevanlinnaStructure

structure HPAdmissibleClass where
  object : HPAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : HPAdmissibleClass) : Prop :=
  HPWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def HPWitnessClosed (O : HPAdmittedObject) : Prop :=
  O.conclusion

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse