import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure NonArchimedeanAdmittedObject where
  carrier : Type
  metric : carrier → carrier → ℚ
  nonArchimedean : Prop
  completeness : Prop
  zeroCharacteristic : Prop
  conclusion : Prop

def NonArchimedeanWitnessClosed (O : NonArchimedeanAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : NonArchimedeanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NonArchimedeanWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse