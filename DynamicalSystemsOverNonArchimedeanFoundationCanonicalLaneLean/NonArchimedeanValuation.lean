import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure NonArchimedeanValuationPackage where
  field_of_definition : Type u
  valuation : field_of_definition → ℚ
  nonArchimedeanProperty : Prop
  residueField : Type v
  discreteValuation : Bool

def NonArchimedeanValuationClosed (V : NonArchimedeanValuationPackage) : Prop :=
  V.nonArchimedeanProperty

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse