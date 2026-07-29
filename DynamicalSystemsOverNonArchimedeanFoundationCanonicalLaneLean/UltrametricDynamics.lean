import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure UltrametricDynamicsPackage where
  space : Type u
  topology : TopologicalSpace space
  ultrametric : space -> space -> ℝ
  nonArchimedeanProperty : Prop
  dynamics : space -> space
  dynamicalSystemIsometry : Prop
  ultrametricClosed : Prop
  dynamicsClosed : Prop
  ultrametricPropertyTerm : nonArchimedeanProperty
  dynamicsIsometryTerm : dynamicalSystemIsometry

structure UltrametricDynamicsEvidence (P : UltrametricDynamicsPackage) where
  ultrametricClosed : P.ultrametricClosed
  dynamicsClosed : P.dynamicsClosed

def UltrametricDynamicsClosed (P : UltrametricDynamicsPackage) : Prop :=
  P.ultrametricClosed ∧ P.dynamicsClosed

theorem ultrametric_dynamics_closed_from_evidence
    (P : UltrametricDynamicsPackage) (E : UltrametricDynamicsEvidence P) :
    UltrametricDynamicsClosed P := by
  exact And.intro E.ultrametricClosed E.dynamicsClosed

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse