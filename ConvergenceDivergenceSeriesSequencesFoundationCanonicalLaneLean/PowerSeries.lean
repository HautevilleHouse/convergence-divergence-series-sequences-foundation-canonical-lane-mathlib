import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure PowerSeriesPackage where
  radiusOfConvergence : Prop
  intervalOfConvergence : Prop
  termwiseDifferentiation : Prop
  termwiseIntegration : Prop
  analyticFunctionRepresentation : Prop

structure PowerSeriesEvidence (P : PowerSeriesPackage) where
  radiusOfConvergenceClosed : P.radiusOfConvergence
  intervalOfConvergenceClosed : P.intervalOfConvergence
  termwiseDifferentiationClosed : P.termwiseDifferentiation
  termwiseIntegrationClosed : P.termwiseIntegration
  analyticFunctionRepresentationClosed : P.analyticFunctionRepresentation

def PowerSeriesClosed (P : PowerSeriesPackage) : Prop :=
  P.radiusOfConvergence ∧ P.intervalOfConvergence ∧ P.termwiseDifferentiation ∧ P.termwiseIntegration ∧ P.analyticFunctionRepresentation

theorem power_series_closed_from_evidence (P : PowerSeriesPackage) (E : PowerSeriesEvidence P) : PowerSeriesClosed P := by
  exact And.intro E.radiusOfConvergenceClosed (And.intro E.intervalOfConvergenceClosed (And.intro E.termwiseDifferentiationClosed (And.intro E.termwiseIntegrationClosed E.analyticFunctionRepresentationClosed)))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse
