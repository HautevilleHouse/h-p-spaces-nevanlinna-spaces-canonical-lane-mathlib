import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

structure HPAdmittedObject where
  space : Type u
  measure : ℳ⁺(space)
  hFunction : space → ℂ
  hpSpace : Prop
  nevanlinnaClass : Prop
  boundaryValues : space → ℂ
  conclusion : boundaryValues = 0

structure AdmissibleClass where
  object : HPAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HPWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse