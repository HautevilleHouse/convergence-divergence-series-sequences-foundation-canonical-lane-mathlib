import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure RatioTestPackage (A : AdmissibleClass) where
  ratioLimitExists : Prop
  ratioLimitLessThanOne : Prop
  absoluteConvergence : Prop
  ratioLimitExistsProof : ratioLimitExists
  ratioLimitLessThanOneProof : ratioLimitLessThanOne
  absoluteConvergenceProof : absoluteConvergence

structure RootTestPackage (A : AdmissibleClass) where
  rootLimitExists : Prop
  rootLimitLessThanOne : Prop
  absoluteConvergence : Prop
  rootLimitExistsProof : rootLimitExists
  rootLimitLessThanOneProof : rootLimitLessThanOne
  absoluteConvergenceProof : absoluteConvergence

structure IntegralTestPackage (A : AdmissibleClass) where
  functionPositiveDecreasing : Prop
  improperIntegralConverges : Prop
  seriesConverges : Prop
  functionPositiveDecreasingProof : functionPositiveDecreasing
  improperIntegralConvergesProof : improperIntegralConverges
  seriesConvergesProof : seriesConverges

def RatioTestClosed (A : AdmissibleClass) (R : RatioTestPackage A) : Prop :=
  R.ratioLimitExists ∧ R.ratioLimitLessThanOne ∧ R.absoluteConvergence

theorem ratio_test_closed_from_evidence (A : AdmissibleClass) (R : RatioTestPackage A) :
    RatioTestClosed A R := by
  exact And.intro R.ratioLimitExistsProof (And.intro R.ratioLimitLessThanOneProof R.absoluteConvergenceProof)

def RootTestClosed (A : AdmissibleClass) (R : RootTestPackage A) : Prop :=
  R.rootLimitExists ∧ R.rootLimitLessThanOne ∧ R.absoluteConvergence

theorem root_test_closed_from_evidence (A : AdmissibleClass) (R : RootTestPackage A) :
    RootTestClosed A R := by
  exact And.intro R.rootLimitExistsProof (And.intro R.rootLimitLessThanOneProof R.absoluteConvergenceProof)

def IntegralTestClosed (A : AdmissibleClass) (I : IntegralTestPackage A) : Prop :=
  I.functionPositiveDecreasing ∧ I.improperIntegralConverges ∧ I.seriesConverges

theorem integral_test_closed_from_evidence (A : AdmissibleClass) (I : IntegralTestPackage A) :
    IntegralTestClosed A I := by
  exact And.intro I.functionPositiveDecreasingProof (And.intro I.improperIntegralConvergesProof I.seriesConvergesProof)

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse