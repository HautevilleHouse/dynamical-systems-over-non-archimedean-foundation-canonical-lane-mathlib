import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure TreeDynamicsPackage where
  tree : Type u
  topology : TopologicalSpace tree
  boundary : Type v
  boundaryTopology : TopologicalSpace boundary
  actionOnTree : tree -> tree
  actionOnBoundary : boundary -> boundary
  continuousTreeAction : Prop
  continuousBoundaryAction : Prop
  treeActionTerm : continuousTreeAction
  boundaryActionTerm : continuousBoundaryAction

structure TreeDynamicsEvidence (T : TreeDynamicsPackage) where
  treeActionClosed : T.continuousTreeAction
  boundaryActionClosed : T.continuousBoundaryAction

def TreeDynamicsClosed (T : TreeDynamicsPackage) : Prop :=
  T.continuousTreeAction ∧ T.continuousBoundaryAction

theorem tree_dynamics_closed_from_evidence
    (T : TreeDynamicsPackage) (E : TreeDynamicsEvidence T) :
    TreeDynamicsClosed T := by
  exact And.intro E.treeActionClosed E.boundaryActionClosed

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse