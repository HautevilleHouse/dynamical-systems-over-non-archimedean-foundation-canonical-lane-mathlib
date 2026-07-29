import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean

structure BerkovichSpace (K : NonArchimedeanField) where
  analyticSpace : Type u
  topology : TopologicalSpace analyticSpace
  structureSheaf : Type v
  overconvergentFunctions : Prop
  includedClassicalPoints : K.Carrier → analyticSpace

definition BerkovichSpaceClosed {K : NonArchimedeanField} (B : BerkovichSpace K) : Prop :=
  B.overconvergentFunctions

structure BerkovichDynamicalExtension (K : NonArchimedeanField) where
  classicalSystem : NonArchimedeanDynamicalSystem K
  berkovichSpace : BerkovichSpace K
  extendedDynamics : BerkovichSpace.analyticSpace → BerkovichSpace.analyticSpace
  extendsClassical : Prop
  analyticContinuity : Prop
  fixedPointsExtended : Prop

definition BerkovichDynamicalExtensionClosed {K : NonArchimedeanField} (E : BerkovichDynamicalExtension K) : Prop :=
  E.extendsClassical ∧ E.analyticContinuity ∧ E.fixedPointsExtended

theorem berkovich_extension_closed {K : NonArchimedeanField} (E : BerkovichDynamicalExtension K) (h : E.extendsClassical ∧ E.analyticContinuity ∧ E.fixedPointsExtended) : BerkovichDynamicalExtensionClosed E := by
  exact h

end DynamicalSystemsOverNonArchimedeanFoundationCanonicalLaneLean
end HautevilleHouse