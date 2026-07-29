import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean.NonArchimedeanDynamicsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NonArchimedeanWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedDynamicsOverNonArchimedeanFoundationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamics_over_non_archimedean_foundation_endgame (A : AdmissibleClass) :
    ConstrainedDynamicsOverNonArchimedeanFoundationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse