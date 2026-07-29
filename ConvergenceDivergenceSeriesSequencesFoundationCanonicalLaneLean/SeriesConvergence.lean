import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure SeriesConvergencePackage where
  partialSumsDefinition : Prop
  geometricSeries : Prop
  pSeries : Prop
  telescopingSeries : Prop
  absoluteConvergence : Prop

structure SeriesConvergenceEvidence (S : SeriesConvergencePackage) where
  partialSumsDefinitionClosed : S.partialSumsDefinition
  geometricSeriesClosed : S.geometricSeries
  pSeriesClosed : S.pSeries
  telescopingSeriesClosed : S.telescopingSeries
  absoluteConvergenceClosed : S.absoluteConvergence

def SeriesConvergenceClosed (S : SeriesConvergencePackage) : Prop :=
  S.partialSumsDefinition ∧ S.geometricSeries ∧ S.pSeries ∧ S.telescopingSeries ∧ S.absoluteConvergence

theorem series_convergence_closed_from_evidence (S : SeriesConvergencePackage) (E : SeriesConvergenceEvidence S) : SeriesConvergenceClosed S := by
  exact And.intro E.partialSumsDefinitionClosed (And.intro E.geometricSeriesClosed (And.intro E.pSeriesClosed (And.intro E.telescopingSeriesClosed E.absoluteConvergenceClosed)))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse
