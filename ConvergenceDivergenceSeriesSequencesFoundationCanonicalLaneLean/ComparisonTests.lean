import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure ComparisonTests where
  referenceSeries : Type u
  termInequality : Prop
  limitComparison : Prop
  convergenceTransfer : Prop
  divergenceTransfer : Prop

structure ComparisonTestEvidence (CT : ComparisonTests) where
  termInequalityClosed : CT.termInequality
  limitComparisonClosed : CT.limitComparison
  convergenceTransferClosed : CT.convergenceTransfer
  divergenceTransferClosed : CT.divergenceTransfer

def ComparisonTestClosed (CT : ComparisonTests) : Prop :=
  CT.termInequality ∧ CT.limitComparison ∧ CT.convergenceTransfer ∧ CT.divergenceTransfer

theorem comparison_test_closed_from_evidence (CT : ComparisonTests) (E : ComparisonTestEvidence CT) : ComparisonTestClosed CT := by
  exact And.intro E.termInequalityClosed (And.intro E.limitComparisonClosed (And.intro E.convergenceTransferClosed E.divergenceTransferClosed))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse