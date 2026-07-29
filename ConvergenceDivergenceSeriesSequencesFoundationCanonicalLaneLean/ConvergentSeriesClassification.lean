import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure ConvergentSeriesClassification where
  absoluteConvergentCategory : Prop
  conditionallyConvergentCategory : Prop
  divergentCategory : Prop
  sumComputation : Prop
  rearrangementTheorem : Prop

structure ConvergentSeriesClassificationEvidence (C : ConvergentSeriesClassification) where
  absoluteConvergentCategoryClosed : C.absoluteConvergentCategory
  conditionallyConvergentCategoryClosed : C.conditionallyConvergentCategory
  divergentCategoryClosed : C.divergentCategory
  sumComputationClosed : C.sumComputation
  rearrangementTheoremClosed : C.rearrangementTheorem

def ConvergentSeriesClassificationClosed (C : ConvergentSeriesClassification) : Prop :=
  C.absoluteConvergentCategory ∧ C.conditionallyConvergentCategory ∧
  C.divergentCategory ∧ C.sumComputation ∧ C.rearrangementTheorem

theorem convergent_series_classification_closed_from_evidence (C : ConvergentSeriesClassification) (E : ConvergentSeriesClassificationEvidence C) : ConvergentSeriesClassificationClosed C := by
  exact And.intro E.absoluteConvergentCategoryClosed
    (And.intro E.conditionallyConvergentCategoryClosed
      (And.intro E.divergentCategoryClosed
        (And.intro E.sumComputationClosed E.rearrangementTheoremClosed)))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse