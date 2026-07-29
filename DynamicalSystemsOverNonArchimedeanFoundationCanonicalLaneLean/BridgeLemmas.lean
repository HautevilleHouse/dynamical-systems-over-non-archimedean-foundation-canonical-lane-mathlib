import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

def bridgeClosed (A : NonArchimedeanAdmissibleClass) : Prop :=
  NonArchimedeanWitnessClosed A.object

theorem bridge_from_admissible_class (A : NonArchimedeanAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse