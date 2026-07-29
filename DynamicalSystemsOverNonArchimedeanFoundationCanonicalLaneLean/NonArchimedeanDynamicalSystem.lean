import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean.BerkovichSpace

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure NonArchimedeanDynamicalSystem (V : NonArchimedeanValuation) (B : BerkovichSpace V) where
  timeDomain : Type u
  transition : timeDomain → B.points → B.points
  continuous : Prop
  groupAction : Prop
  invariantMeasure : Prop

structure NonArchimedeanDynamicalSystemEvidence {V : NonArchimedeanValuation}
    {B : BerkovichSpace V} (S : NonArchimedeanDynamicalSystem V B) where
  continuousClosed : S.continuous
  groupActionClosed : S.groupAction
  invariantMeasureClosed : S.invariantMeasure

def NonArchimedeanDynamicalSystemClosed {V : NonArchimedeanValuation}
    {B : BerkovichSpace V} (S : NonArchimedeanDynamicalSystem V B) : Prop :=
  S.continuous ∧ S.groupAction ∧ S.invariantMeasure

theorem non_archimedean_dynamical_system_closed_from_evidence {V : NonArchimedeanValuation}
    {B : BerkovichSpace V} (S : NonArchimedeanDynamicalSystem V B)
    (E : NonArchimedeanDynamicalSystemEvidence S) : NonArchimedeanDynamicalSystemClosed S :=
  And.intro E.continuousClosed (And.intro E.groupActionClosed E.invariantMeasureClosed)

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse