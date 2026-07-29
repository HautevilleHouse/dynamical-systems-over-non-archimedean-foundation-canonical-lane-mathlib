import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure NonArchimedeanField where
  Carrier : Type u
  valuedRing : Valued Carrier ℚ
  complete : Prop
  nonTrivial : Prop

definition NonArchimedeanFieldClosed (K : NonArchimedeanField) : Prop :=
  K.complete ∧ K.nonTrivial

structure UltrametricBall (K : NonArchimedeanField) where
  center : K.Carrier
  radius : ℚ
  ballSet : Set K.Carrier
  openSet : Prop
  closedSet : Prop

definition UltrametricBallClosed (K : NonArchimedeanField) (B : UltrametricBall K) : Prop :=
  B.openSet ∧ B.closedSet

structure NonArchimedeanDynamicalSystem (K : NonArchimedeanField) where
  phaseSpace : Type v
  topology : TopologicalSpace phaseSpace
  dynamics : K.Carrier → phaseSpace → phaseSpace
  continuousDynamics : Prop
  groupAction : Prop
  fixedPointSet : Set phaseSpace

definition NonArchimedeanDynamicalSystemClosed {K : NonArchimedeanField} (S : NonArchimedeanDynamicalSystem K) : Prop :=
  S.continuousDynamics ∧ S.groupAction

theorem non_archimedean_dynamical_system_closed {K : NonArchimedeanField} (S : NonArchimedeanDynamicalSystem K) (h : S.continuousDynamics ∧ S.groupAction) : NonArchimedeanDynamicalSystemClosed S := by
  exact h

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse