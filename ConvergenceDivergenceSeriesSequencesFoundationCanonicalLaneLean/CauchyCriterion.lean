import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure CauchyCriterion where
  sequenceType : Type u
  partialSumCauchy : Prop
  epsilonNCharacterization : Prop
  completenessImplication : Prop

structure CauchyCriterionEvidence (C : CauchyCriterion) where
  partialSumCauchyClosed : C.partialSumCauchy
  epsilonNCharacterizationClosed : C.epsilonNCharacterization
  completenessImplicationClosed : C.completenessImplication

def CauchyCriterionClosed (C : CauchyCriterion) : Prop :=
  C.partialSumCauchy ∧ C.epsilonNCharacterization ∧ C.completenessImplication

theorem cauchy_criterion_closed_from_evidence (C : CauchyCriterion) (E : CauchyCriterionEvidence C) : CauchyCriterionClosed C := by
  exact And.intro E.partialSumCauchyClosed (And.intro E.epsilonNCharacterizationClosed E.completenessImplicationClosed)

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse