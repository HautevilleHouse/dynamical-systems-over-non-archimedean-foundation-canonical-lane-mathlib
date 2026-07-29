import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure PotentialTheoryPackage {V : NonArchimedeanValuationPackage}
    (B : BerkovichSpacePackage V) where
  laplacian : Type u
  energyFunctional : Prop
  equilibriumPotential : Prop
  capacity : Prop

structure PotentialTheoryEvidence {V : NonArchimedeanValuationPackage}
    {B : BerkovichSpacePackage V} (P : PotentialTheoryPackage B) where
  energyFunctionalClosed : P.energyFunctional
  equilibriumPotentialClosed : P.equilibriumPotential
  capacityClosed : P.capacity

def PotentialTheoryClosed {V : NonArchimedeanValuationPackage}
    {B : BerkovichSpacePackage V} (P : PotentialTheoryPackage B) : Prop :=
  P.energyFunctional ∧ P.equilibriumPotential ∧ P.capacity

theorem potential_theory_closed_from_evidence {V : NonArchimedeanValuationPackage}
    {B : BerkovichSpacePackage V} (P : PotentialTheoryPackage B)
    (E : PotentialTheoryEvidence P) : PotentialTheoryClosed P :=
  And.intro E.energyFunctionalClosed (And.intro E.equilibriumPotentialClosed E.capacityClosed)

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse