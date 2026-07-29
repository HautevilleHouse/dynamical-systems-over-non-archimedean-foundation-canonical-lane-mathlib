import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure NonArchimedeanFixedPointPackage (K : NonArchimedeanField) where
  system : NonArchimedeanDynamicalSystem K
  contractiveCondition : Prop
  fixedPointExists : Prop
  fixedPointUnique : Prop
  iterationConverges : Prop

definition NonArchimedeanFixedPointClosed {K : NonArchimedeanField} (P : NonArchimedeanFixedPointPackage K) : Prop :=
  P.fixedPointExists ∧ P.fixedPointUnique ∧ P.iterationConverges

structure NonArchimedeanFixedPointEvidence {K : NonArchimedeanField} (P : NonArchimedeanFixedPointPackage K) where
  fixedPointExistsClosed : P.fixedPointExists
  fixedPointUniqueClosed : P.fixedPointUnique
  iterationConvergesClosed : P.iterationConverges

theorem non_archimedean_fixed_point_closed {K : NonArchimedeanField} (P : NonArchimedeanFixedPointPackage K) (E : NonArchimedeanFixedPointEvidence P) : NonArchimedeanFixedPointClosed P := by
  exact And.intro E.fixedPointExistsClosed (And.intro E.fixedPointUniqueClosed E.iterationConvergesClosed)

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse