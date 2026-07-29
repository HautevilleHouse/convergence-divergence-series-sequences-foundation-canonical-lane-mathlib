import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure SequenceConvergencePackage where
  epsilonNDefinition : Prop
  uniquenessOfLimits : Prop
  boundedConvergent : Prop
  monotoneConvergence : Prop
  cauchyCriterion : Prop

structure SequenceConvergenceEvidence (S : SequenceConvergencePackage) where
  epsilonNDefinitionClosed : S.epsilonNDefinition
  uniquenessOfLimitsClosed : S.uniquenessOfLimits
  boundedConvergentClosed : S.boundedConvergent
  monotoneConvergenceClosed : S.monotoneConvergence
  cauchyCriterionClosed : S.cauchyCriterion

def SequenceConvergenceClosed (S : SequenceConvergencePackage) : Prop :=
  S.epsilonNDefinition ∧ S.uniquenessOfLimits ∧ S.boundedConvergent ∧ S.monotoneConvergence ∧ S.cauchyCriterion

theorem sequence_convergence_closed_from_evidence (S : SequenceConvergencePackage) (E : SequenceConvergenceEvidence S) : SequenceConvergenceClosed S := by
  exact And.intro E.epsilonNDefinitionClosed (And.intro E.uniquenessOfLimitsClosed (And.intro E.boundedConvergentClosed (And.intro E.monotoneConvergenceClosed E.cauchyCriterionClosed)))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse
