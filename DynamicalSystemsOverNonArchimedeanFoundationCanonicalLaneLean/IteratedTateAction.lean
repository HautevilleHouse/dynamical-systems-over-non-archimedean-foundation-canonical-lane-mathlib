import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure IteratedTateActionPackage where
  underlyingCurve : TateEllipticCurveDynamicsPackage
  iterations : ℕ → (underlyingCurve.curveField → underlyingCurve.curveField)
  convergenceRadius : ℚ → Prop
  periodicOrbitClassification : Prop
  topologicalEntropy : Prop

def IteratedTateActionClosed (I : IteratedTateActionPackage) : Prop :=
  I.periodicOrbitClassification ∧ I.topologicalEntropy

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse