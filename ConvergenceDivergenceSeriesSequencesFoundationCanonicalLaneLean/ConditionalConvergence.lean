import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure AlternatingSeriesPackage (A : AdmissibleClass) where
  termsAlternatingSign : Prop
  absoluteTermsDecreaseToZero : Prop
  seriesConvergesConditionally : Prop
  termsAlternatingSignProof : termsAlternatingSign
  absoluteTermsDecreaseToZeroProof : absoluteTermsDecreaseToZero
  seriesConvergesConditionallyProof : seriesConvergesConditionally

structure DirichletTestPackage (A : AdmissibleClass) where
  partialSumsBounded : Prop
  termsDecreaseToZero : Prop
  seriesConverges : Prop
  partialSumsBoundedProof : partialSumsBounded
  termsDecreaseToZeroProof : termsDecreaseToZero
  seriesConvergesProof : seriesConverges

structure AbelTestPackage (A : AdmissibleClass) where
  seriesConvergesUniformly : Prop
  termsMonotonicBounded : Prop
  productSeriesConverges : Prop
  seriesConvergesUniformlyProof : seriesConvergesUniformly
  termsMonotonicBoundedProof : termsMonotonicBounded
  productSeriesConvergesProof : productSeriesConverges

def AlternatingSeriesClosed (A : AdmissibleClass) (P : AlternatingSeriesPackage A) : Prop :=
  P.termsAlternatingSign ∧ P.absoluteTermsDecreaseToZero ∧ P.seriesConvergesConditionally

theorem alternating_series_closed_from_evidence (A : AdmissibleClass) (P : AlternatingSeriesPackage A) :
    AlternatingSeriesClosed A P := by
  exact And.intro P.termsAlternatingSignProof (And.intro P.absoluteTermsDecreaseToZeroProof P.seriesConvergesConditionallyProof)

def DirichletTestClosed (A : AdmissibleClass) (D : DirichletTestPackage A) : Prop :=
  D.partialSumsBounded ∧ D.termsDecreaseToZero ∧ D.seriesConverges

theorem dirichlet_test_closed_from_evidence (A : AdmissibleClass) (D : DirichletTestPackage A) :
    DirichletTestClosed A D := by
  exact And.intro D.partialSumsBoundedProof (And.intro D.termsDecreaseToZeroProof D.seriesConvergesProof)

def AbelTestClosed (A : AdmissibleClass) (Ab : AbelTestPackage A) : Prop :=
  Ab.seriesConvergesUniformly ∧ Ab.termsMonotonicBounded ∧ Ab.productSeriesConverges

theorem abel_test_closed_from_evidence (A : AdmissibleClass) (Ab : AbelTestPackage A) :
    AbelTestClosed A Ab := by
  exact And.intro Ab.seriesConvergesUniformlyProof (And.intro Ab.termsMonotonicBoundedProof Ab.productSeriesConvergesProof)

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse