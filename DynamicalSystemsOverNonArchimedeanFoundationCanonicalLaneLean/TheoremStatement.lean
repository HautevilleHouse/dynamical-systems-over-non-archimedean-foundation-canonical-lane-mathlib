import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure DynamicalAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  nonArchimedeanStructure : Prop
  dynamicalSystem : space → space
  invariantMeasure : Prop
  conclusion : nonArchimedeanStructure ∧ invariantMeasure

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.nonArchimedeanStructure ∧ O.invariantMeasure

theorem dynamical_witness_closed_from_object (O : DynamicalAdmittedObject) :
    DynamicalWitnessClosed O := by
  exact O.conclusion

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse