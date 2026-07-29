import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure RootAndRatioTests where
  ratioTest : Prop
  rootTest : Prop
  ratioImpliesRoot : Prop
  rootAtBoundary : Prop
  ratioAtBoundary : Prop

structure RootAndRatioTestEvidence (R : RootAndRatioTests) where
  ratioTestClosed : R.ratioTest
  rootTestClosed : R.rootTest
  ratioImpliesRootClosed : R.ratioImpliesRoot
  rootAtBoundaryClosed : R.rootAtBoundary
  ratioAtBoundaryClosed : R.ratioAtBoundary

def RootAndRatioTestClosed (R : RootAndRatioTests) : Prop :=
  R.ratioTest ∧ R.rootTest ∧ R.ratioImpliesRoot ∧ R.rootAtBoundary ∧ R.ratioAtBoundary

theorem root_and_ratio_test_closed_from_evidence (R : RootAndRatioTests) (E : RootAndRatioTestEvidence R) : RootAndRatioTestClosed R := by
  exact And.intro E.ratioTestClosed (And.intro E.rootTestClosed (And.intro E.ratioImpliesRootClosed (And.intro E.rootAtBoundaryClosed E.ratioAtBoundaryClosed)))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse