import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure PAdicDynamicsPackage (V : NonArchimedeanValuationPackage) where
  map : V.field → V.field
  fixedPoints : Prop
  periodicPoints : Prop
  stabilityProperties : Prop

structure PAdicDynamicsEvidence {V : NonArchimedeanValuationPackage}
    (P : PAdicDynamicsPackage V) where
  fixedPointsClosed : P.fixedPoints
  periodicPointsClosed : P.periodicPoints
  stabilityPropertiesClosed : P.stabilityProperties

def PAdicDynamicsClosed {V : NonArchimedeanValuationPackage}
    (P : PAdicDynamicsPackage V) : Prop :=
  P.fixedPoints ∧ P.periodicPoints ∧ P.stabilityProperties

theorem p_adic_dynamics_closed_from_evidence {V : NonArchimedeanValuationPackage}
    (P : PAdicDynamicsPackage V) (E : PAdicDynamicsEvidence P) : PAdicDynamicsClosed P :=
  And.intro E.fixedPointsClosed (And.intro E.periodicPointsClosed E.stabilityPropertiesClosed)

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse