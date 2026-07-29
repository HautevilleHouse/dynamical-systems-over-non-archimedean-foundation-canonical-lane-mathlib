import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure NonArchimedeanEntropyPackage where
  dynamicalSystem : UltrametricDynamicsPackage
  entropyFunction : Type u
  topologicalEntropyDefined : Prop
  measureTheoreticEntropyDefined : Prop
  variationalPrincipleHolds : Prop
  entropyUpperBound : Prop
  topologicalEntropyTerm : topologicalEntropyDefined
  measureEntropyTerm : measureTheoreticEntropyDefined
  variationalPrincipleTerm : variationalPrincipleHolds
  entropyBoundTerm : entropyUpperBound

structure NonArchimedeanEntropyEvidence (E : NonArchimedeanEntropyPackage) where
  topologicalEntropyClosed : E.topologicalEntropyDefined
  measureEntropyClosed : E.measureTheoreticEntropyDefined
  variationalPrincipleClosed : E.variationalPrincipleHolds
  entropyBoundClosed : E.entropyUpperBound

def NonArchimedeanEntropyClosed (E : NonArchimedeanEntropyPackage) : Prop :=
  E.topologicalEntropyDefined ∧ E.measureTheoreticEntropyDefined ∧
  E.variationalPrincipleHolds ∧ E.entropyUpperBound

theorem non_archimedean_entropy_closed_from_evidence
    (E : NonArchimedeanEntropyPackage) (Ev : NonArchimedeanEntropyEvidence E) :
    NonArchimedeanEntropyClosed E := by
  exact And.intro Ev.topologicalEntropyClosed
    (And.intro Ev.measureEntropyClosed
      (And.intro Ev.variationalPrincipleClosed Ev.entropyBoundClosed))

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse