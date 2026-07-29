import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure TateEllipticCurvePackage where
  baseField : Type u
  valuation : ValuationPackage
  coefficients : ℤ × ℤ
  jInvariant : baseField
  tateParameter : baseField
  analyticUniformization : Prop
  hasBadReduction : Prop

structure TateEllipticCurveEvidence (T : TateEllipticCurvePackage) where
  analyticUniformizationClosed : T.analyticUniformization
  hasBadReductionClosed : T.hasBadReduction

def TateEllipticCurveClosed (T : TateEllipticCurvePackage) : Prop :=
  T.analyticUniformization ∧ T.hasBadReduction

theorem tate_elliptic_curve_closed_from_evidence
    (T : TateEllipticCurvePackage) (E : TateEllipticCurveEvidence T) :
    TateEllipticCurveClosed T := by
  exact And.intro E.analyticUniformizationClosed E.hasBadReductionClosed

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse