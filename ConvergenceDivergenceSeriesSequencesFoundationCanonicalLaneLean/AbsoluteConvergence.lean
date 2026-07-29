import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure AbsoluteConvergence where
  absoluteSeries : Type u
  absoluteConvergenceImpliesConvergence : Prop
  rearrangementInvariance : Prop
  comparisonWithAbsolute : Prop

structure AbsoluteConvergenceEvidence (A : AbsoluteConvergence) where
  absoluteConvergenceImpliesConvergenceClosed : A.absoluteConvergenceImpliesConvergence
  rearrangementInvarianceClosed : A.rearrangementInvariance
  comparisonWithAbsoluteClosed : A.comparisonWithAbsolute

def AbsoluteConvergenceClosed (A : AbsoluteConvergence) : Prop :=
  A.absoluteConvergenceImpliesConvergence ∧ A.rearrangementInvariance ∧ A.comparisonWithAbsolute

theorem absolute_convergence_closed_from_evidence (A : AbsoluteConvergence) (E : AbsoluteConvergenceEvidence A) : AbsoluteConvergenceClosed A := by
  exact And.intro E.absoluteConvergenceImpliesConvergenceClosed (And.intro E.rearrangementInvarianceClosed E.comparisonWithAbsoluteClosed)

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse