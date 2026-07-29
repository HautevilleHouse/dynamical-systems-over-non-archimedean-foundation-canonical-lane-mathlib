import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure TateEllipticCurveDynamicsPackage where
  curveField : Type u
  valuation : NonArchimedeanValuationPackage
  tateParameter : ℚ → Prop
  uniformization : Prop
  dynamicalMorphism : (curveField → curveField) → Prop
  potentialWellDefined : Prop

def TateEllipticCurveDynamicsClosed (T : TateEllipticCurveDynamicsPackage) : Prop :=
  T.tateParameter 0 ∧ T.uniformization ∧ T.potentialWellDefined

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse