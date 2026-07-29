import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure RigidityTransferPackage {V : NonArchimedeanValuationPackage}
    {B : BerkovichSpacePackage V} {P : PotentialTheoryPackage B} where
  transferMap : B.analyticSpace → B.analyticSpace
  rigidityProperty : Prop
  invarianceUnderDynamics : Prop
  closureUnderTransfer : Prop

structure RigidityTransferEvidence {V : NonArchimedeanValuationPackage}
    {B : BerkovichSpacePackage V} {P : PotentialTheoryPackage B}
    (R : RigidityTransferPackage P) where
  rigidityPropertyClosed : R.rigidityProperty
  invarianceUnderDynamicsClosed : R.invarianceUnderDynamics
  closureUnderTransferClosed : R.closureUnderTransfer

def RigidityTransferClosed {V : NonArchimedeanValuationPackage}
    {B : BerkovichSpacePackage V} {P : PotentialTheoryPackage B}
    (R : RigidityTransferPackage P) : Prop :=
  R.rigidityProperty ∧ R.invarianceUnderDynamics ∧ R.closureUnderTransfer

theorem rigidity_transfer_closed_from_evidence {V : NonArchimedeanValuationPackage}
    {B : BerkovichSpacePackage V} {P : PotentialTheoryPackage B}
    (R : RigidityTransferPackage P) (E : RigidityTransferEvidence R) : RigidityTransferClosed R :=
  And.intro E.rigidityPropertyClosed (And.intro E.invarianceUnderDynamicsClosed E.closureUnderTransferClosed)

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse