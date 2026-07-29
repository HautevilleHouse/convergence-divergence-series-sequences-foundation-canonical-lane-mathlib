import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure SeriesConvergenceCriteria where
  partialSumCauchy : Prop
  termVanishes : Prop
  absoluteConvergence : Prop
  conditionalConvergence : Prop
  comparisonTest : Prop
  ratioTest : Prop
  rootTest : Prop
  integralTest : Prop
  alternatingSeriesTest : Prop

structure SeriesConvergenceCriteriaEvidence (C : SeriesConvergenceCriteria) where
  partialSumCauchyClosed : C.partialSumCauchy
  termVanishesClosed : C.termVanishes
  absoluteConvergenceClosed : C.absoluteConvergence
  conditionalConvergenceClosed : C.conditionalConvergence
  comparisonTestClosed : C.comparisonTest
  ratioTestClosed : C.ratioTest
  rootTestClosed : C.rootTest
  integralTestClosed : C.integralTest
  alternatingSeriesTestClosed : C.alternatingSeriesTest

def SeriesConvergenceCriteriaClosed (C : SeriesConvergenceCriteria) : Prop :=
  C.partialSumCauchy ∧ C.termVanishes ∧ C.absoluteConvergence ∧ C.conditionalConvergence ∧
  C.comparisonTest ∧ C.ratioTest ∧ C.rootTest ∧ C.integralTest ∧ C.alternatingSeriesTest

theorem series_convergence_criteria_closed_from_evidence (C : SeriesConvergenceCriteria) (E : SeriesConvergenceCriteriaEvidence C) : SeriesConvergenceCriteriaClosed C := by
  exact And.intro E.partialSumCauchyClosed
    (And.intro E.termVanishesClosed
      (And.intro E.absoluteConvergenceClosed
        (And.intro E.conditionalConvergenceClosed
          (And.intro E.comparisonTestClosed
            (And.intro E.ratioTestClosed
              (And.intro E.rootTestClosed
                (And.intro E.integralTestClosed E.alternatingSeriesTestClosed)))))))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse