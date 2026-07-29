import HPSpacesNevanlinnaSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

def HPWitnessClosed (O : HPAdmittedObject) : Prop :=
  O.conclusion

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HPWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse