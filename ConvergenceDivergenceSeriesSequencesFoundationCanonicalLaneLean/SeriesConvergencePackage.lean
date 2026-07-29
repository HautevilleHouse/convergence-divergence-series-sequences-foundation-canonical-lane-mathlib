import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure SeriesPackage where
  carrier : Type
  series : ℕ → carrier
  partialSums : ℕ → carrier
  sum : carrier
  convergence : Filter.Tendsto partialSums Filter.atTop (nhds sum)
  absoluteConvergence : Prop
  conditionalConvergence : Prop
  rootTestCondition : Prop
  ratioTestCondition : Prop

structure SeriesEvidence (S : SeriesPackage) where
  partialSumConvergenceClosed : S.convergence
  absoluteConvergenceClosed : S.absoluteConvergence
  conditionalConvergenceClosed : S.conditionalConvergence
  rootTestConditionClosed : S.rootTestCondition
  ratioTestConditionClosed : S.ratioTestCondition

def SeriesClosed (S : SeriesPackage) : Prop :=
  S.convergence ∧ S.absoluteConvergence ∧ S.conditionalConvergence ∧
  S.rootTestCondition ∧ S.ratioTestCondition

theorem series_closed_from_evidence (S : SeriesPackage) (E : SeriesEvidence S) : SeriesClosed S :=
  And.intro E.partialSumConvergenceClosed
    (And.intro E.absoluteConvergenceClosed
      (And.intro E.conditionalConvergenceClosed
        (And.intro E.rootTestConditionClosed E.ratioTestConditionClosed)))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse