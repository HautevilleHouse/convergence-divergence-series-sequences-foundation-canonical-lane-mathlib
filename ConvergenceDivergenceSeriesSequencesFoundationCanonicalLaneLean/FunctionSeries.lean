import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure FunctionSeriesPackage where
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  fourierSeries : Prop
  taylorSeries : Prop
  laurentSeries : Prop

structure FunctionSeriesEvidence (F : FunctionSeriesPackage) where
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceClosed : F.uniformConvergence
  fourierSeriesClosed : F.fourierSeries
  taylorSeriesClosed : F.taylorSeries
  laurentSeriesClosed : F.laurentSeries

def FunctionSeriesClosed (F : FunctionSeriesPackage) : Prop :=
  F.pointwiseConvergence ∧ F.uniformConvergence ∧ F.fourierSeries ∧ F.taylorSeries ∧ F.laurentSeries

theorem function_series_closed_from_evidence (F : FunctionSeriesPackage) (E : FunctionSeriesEvidence F) : FunctionSeriesClosed F := by
  exact And.intro E.pointwiseConvergenceClosed (And.intro E.uniformConvergenceClosed (And.intro E.fourierSeriesClosed (And.intro E.taylorSeriesClosed E.laurentSeriesClosed)))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse
