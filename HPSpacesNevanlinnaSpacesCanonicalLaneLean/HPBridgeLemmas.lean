import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HPSpacesNevanlinnaSpacesCanonicalLaneLean

def bridgeClosed (A : HPAdmissibleClass) : Prop :=
  HPWitnessClosed A.object

theorem bridge_from_admissible_class (A : HPAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HPSpacesNevanlinnaSpacesCanonicalLaneLean
end HautevilleHouse