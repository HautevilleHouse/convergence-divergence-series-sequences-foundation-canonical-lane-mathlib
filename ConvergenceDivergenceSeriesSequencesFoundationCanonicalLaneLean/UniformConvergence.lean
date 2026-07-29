import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure UniformConvergencePackage where
  uniformConvergenceDefinition : Prop
  continuityPreservation : Prop
  integrabilityPreservation : Prop
  differentiabilityPreservation : Prop
  weierstrassMTest : Prop

structure UniformConvergenceEvidence (U : UniformConvergencePackage) where
  uniformConvergenceDefinitionClosed : U.uniformConvergenceDefinition
  continuityPreservationClosed : U.continuityPreservation
  integrabilityPreservationClosed : U.integrabilityPreservation
  differentiabilityPreservationClosed : U.differentiabilityPreservation
  weierstrassMTestClosed : U.weierstrassMTest

def UniformConvergenceClosed (U : UniformConvergencePackage) : Prop :=
  U.uniformConvergenceDefinition ∧ U.continuityPreservation ∧ U.integrabilityPreservation ∧ U.differentiabilityPreservation ∧ U.weierstrassMTest

theorem uniform_convergence_closed_from_evidence (U : UniformConvergencePackage) (E : UniformConvergenceEvidence U) : UniformConvergenceClosed U := by
  exact And.intro E.uniformConvergenceDefinitionClosed (And.intro E.continuityPreservationClosed (And.intro E.integrabilityPreservationClosed (And.intro E.differentiabilityPreservationClosed E.weierstrassMTestClosed)))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse
