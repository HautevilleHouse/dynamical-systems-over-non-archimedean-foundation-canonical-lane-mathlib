import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure FunctionalEquationLayerPackage where
  dynamicalSystemDomain : Type u
  valuation : NonArchimedeanValuationPackage
  functionalEquation : (domain → domain) → Prop
  fixedPointCondition : Prop
  contractionFactor : ℚ → Prop
  domainComplete : Prop

def FunctionalEquationLayerClosed (F : FunctionalEquationLayerPackage) : Prop :=
  F.functionalEquation (fun x => x) ∧ F.fixedPointCondition ∧ F.domainComplete

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse