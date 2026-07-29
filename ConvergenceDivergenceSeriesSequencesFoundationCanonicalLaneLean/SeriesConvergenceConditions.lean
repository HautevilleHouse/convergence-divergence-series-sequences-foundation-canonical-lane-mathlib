import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure SeriesConvergenceConditions where
  termSequence : Type u
  limit : Type v
  partialSumsConverge : Prop
  cauchyCriterion : Prop
  epsilonNArgument : Prop

structure SeriesConvergenceEvidence (C : SeriesConvergenceConditions) where
  partialSumsConvergeClosed : C.partialSumsConverge
  cauchyCriterionClosed : C.cauchyCriterion
  epsilonNArgumentClosed : C.epsilonNArgument

def SeriesConvergenceClosed (C : SeriesConvergenceConditions) : Prop :=
  C.partialSumsConverge ∧ C.cauchyCriterion ∧ C.epsilonNArgument

theorem series_convergence_closed_from_evidence (C : SeriesConvergenceConditions) (E : SeriesConvergenceEvidence C) : SeriesConvergenceClosed C := by
  exact And.intro E.partialSumsConvergeClosed (And.intro E.cauchyCriterionClosed E.epsilonNArgumentClosed)

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse