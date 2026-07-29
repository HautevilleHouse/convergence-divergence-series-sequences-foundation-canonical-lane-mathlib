import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure PowerSeriesAnalyticity where
  radiusOfConvergence : Prop
  intervalOfConvergence : Prop
  termwiseDifferentiation : Prop
  termwiseIntegration : Prop
  analyticFunctionRepresentation : Prop
  taylorSeries : Prop

structure PowerSeriesAnalyticityEvidence (P : PowerSeriesAnalyticity) where
  radiusOfConvergenceClosed : P.radiusOfConvergence
  intervalOfConvergenceClosed : P.intervalOfConvergence
  termwiseDifferentiationClosed : P.termwiseDifferentiation
  termwiseIntegrationClosed : P.termwiseIntegration
  analyticFunctionRepresentationClosed : P.analyticFunctionRepresentation
  taylorSeriesClosed : P.taylorSeries

def PowerSeriesAnalyticityClosed (P : PowerSeriesAnalyticity) : Prop :=
  P.radiusOfConvergence ∧ P.intervalOfConvergence ∧
  P.termwiseDifferentiation ∧ P.termwiseIntegration ∧
  P.analyticFunctionRepresentation ∧ P.taylorSeries

theorem power_series_analyticity_closed_from_evidence (P : PowerSeriesAnalyticity) (E : PowerSeriesAnalyticityEvidence P) : PowerSeriesAnalyticityClosed P := by
  exact And.intro E.radiusOfConvergenceClosed
    (And.intro E.intervalOfConvergenceClosed
      (And.intro E.termwiseDifferentiationClosed
        (And.intro E.termwiseIntegrationClosed
          (And.intro E.analyticFunctionRepresentationClosed E.taylorSeriesClosed))))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse