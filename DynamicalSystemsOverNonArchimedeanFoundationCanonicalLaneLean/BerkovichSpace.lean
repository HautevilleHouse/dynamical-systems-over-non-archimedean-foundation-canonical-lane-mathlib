import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean.NonArchimedeanValuation

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure BerkovichSpace (V : NonArchimedeanValuation) where
  points : Type u
  topology : TopologicalSpace points
  valuationExtension : points → V.valuation V.zero → Prop
  compactness : Prop
  analyticStructure : Prop

structure BerkovichSpaceEvidence {V : NonArchimedeanValuation} (B : BerkovichSpace V) where
  compactnessClosed : B.compactness
  analyticStructureClosed : B.analyticStructure

def BerkovichSpaceClosed {V : NonArchimedeanValuation} (B : BerkovichSpace V) : Prop :=
  B.compactness ∧ B.analyticStructure

theorem berkovich_space_closed_from_evidence {V : NonArchimedeanValuation}
    (B : BerkovichSpace V) (E : BerkovichSpaceEvidence B) : BerkovichSpaceClosed B :=
  And.intro E.compactnessClosed E.analyticStructureClosed

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse