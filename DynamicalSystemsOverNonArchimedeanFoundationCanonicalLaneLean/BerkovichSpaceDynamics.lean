import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure BerkovichSpaceDynamicsPackage where
  baseField : Type u
  nonArchimedeanValuation : baseField -> ℝ
  analyticSpace : Type v
  topology : TopologicalSpace analyticSpace
  berkovichAction : analyticSpace -> analyticSpace
  actionIsContinuous : Prop
  actionPreservesBerkovichStructure : Prop
  continuousActionTerm : actionIsContinuous
  preservesStructureTerm : actionPreservesBerkovichStructure

structure BerkovichSpaceDynamicsEvidence (B : BerkovichSpaceDynamicsPackage) where
  continuousActionClosed : B.actionIsContinuous
  preservesStructureClosed : B.actionPreservesBerkovichStructure

def BerkovichSpaceDynamicsClosed (B : BerkovichSpaceDynamicsPackage) : Prop :=
  B.actionIsContinuous ∧ B.actionPreservesBerkovichStructure

theorem berkovich_dynamics_closed_from_evidence
    (B : BerkovichSpaceDynamicsPackage) (E : BerkovichSpaceDynamicsEvidence B) :
    BerkovichSpaceDynamicsClosed B := by
  exact And.intro E.continuousActionClosed E.preservesStructureClosed

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse