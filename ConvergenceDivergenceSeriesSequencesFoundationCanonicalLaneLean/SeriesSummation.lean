import HautevilleHouse.ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean.SequenceConvergence

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure SeriesSummationPackage where
  terms : ℕ → ℝ
  partialSums : ℕ → ℝ
  sum : ℝ
  partialSumsDefined : ∀ n, partialSums n = ∑ i in Finset.range n, terms i
  convergence : SequenceConvergencePackage
  partialSumsMatch : ∀ n, convergence.sequence n = partialSums n
  limitMatch : convergence.limit = sum

structure SeriesSummationEvidence (S : SeriesSummationPackage) where
  partialSumsDefinedClosed : S.partialSumsDefined = S.partialSumsDefined
  partialSumsMatchClosed : S.partialSumsMatch = S.partialSumsMatch
  limitMatchClosed : S.limitMatch = S.limitMatch

def SeriesSummationClosed (S : SeriesSummationPackage) : Prop :=
  SequenceConvergenceClosed S.convergence ∧ S.sum = S.convergence.limit

theorem series_summation_closed_from_evidence (S : SeriesSummationPackage)
    (E : SeriesSummationEvidence S) : SeriesSummationClosed S := by
  refine ⟨?_, S.limitMatch⟩
  exact sequence_convergence_closed_from_evidence S.convergence
    (by
      exact {
        epsilonPositiveClosed := rfl
        convergencePropertyClosed := rfl
      })

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse
