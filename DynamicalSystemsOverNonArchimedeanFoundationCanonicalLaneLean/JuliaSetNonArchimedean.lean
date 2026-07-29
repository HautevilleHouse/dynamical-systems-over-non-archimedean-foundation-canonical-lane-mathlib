import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean.NonArchimedeanDynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure JuliaSetNonArchimedean (V : NonArchimedeanValuation) (B : BerkovichSpace V)
    (S : NonArchimedeanDynamicalSystem V B) where
  juliaSet : Set B.points
  filledJuliaSet : Set B.points
  repellingPeriodicPoints : Prop
  chaoticBehavior : Prop
  topologicalTransitivity : Prop

structure JuliaSetNonArchimedeanEvidence {V : NonArchimedeanValuation} {B : BerkovichSpace V}
    {S : NonArchimedeanDynamicalSystem V B} (J : JuliaSetNonArchimedean V B S) where
  repellingPeriodicPointsClosed : J.repellingPeriodicPoints
  chaoticBehaviorClosed : J.chaoticBehavior
  topologicalTransitivityClosed : J.topologicalTransitivity

def JuliaSetNonArchimedeanClosed {V : NonArchimedeanValuation} {B : BerkovichSpace V}
    {S : NonArchimedeanDynamicalSystem V B} (J : JuliaSetNonArchimedean V B S) : Prop :=
  J.repellingPeriodicPoints ∧ J.chaoticBehavior ∧ J.topologicalTransitivity

theorem julia_set_non_archimedean_closed_from_evidence {V : NonArchimedeanValuation}
    {B : BerkovichSpace V} {S : NonArchimedeanDynamicalSystem V B}
    (J : JuliaSetNonArchimedean V B S) (E : JuliaSetNonArchimedeanEvidence J) :
    JuliaSetNonArchimedeanClosed J :=
  And.intro E.repellingPeriodicPointsClosed (And.intro E.chaoticBehaviorClosed E.topologicalTransitivityClosed)

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse