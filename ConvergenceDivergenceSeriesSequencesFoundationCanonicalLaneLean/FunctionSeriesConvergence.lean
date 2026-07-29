import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure FunctionSeriesConvergence where
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  weierstrassMTest : Prop
  uniformCauchyCriterion : Prop
  termwiseContinuity : Prop
  termwiseDifferentiability : Prop
  termwiseIntegrability : Prop

structure FunctionSeriesConvergenceEvidence (F : FunctionSeriesConvergence) where
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceClosed : F.uniformConvergence
  weierstrassMTestClosed : F.weierstrassMTest
  uniformCauchyCriterionClosed : F.uniformCauchyCriterion
  termwiseContinuityClosed : F.termwiseContinuity
  termwiseDifferentiabilityClosed : F.termwiseDifferentiability
  termwiseIntegrabilityClosed : F.termwiseIntegrability

def FunctionSeriesConvergenceClosed (F : FunctionSeriesConvergence) : Prop :=
  F.pointwiseConvergence ∧ F.uniformConvergence ∧ F.weierstrassMTest ∧
  F.uniformCauchyCriterion ∧ F.termwiseContinuity ∧
  F.termwiseDifferentiability ∧ F.termwiseIntegrability

theorem function_series_convergence_closed_from_evidence (F : FunctionSeriesConvergence) (E : FunctionSeriesConvergenceEvidence F) : FunctionSeriesConvergenceClosed F := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.uniformConvergenceClosed
      (And.intro E.weierstrassMTestClosed
        (And.intro E.uniformCauchyCriterionClosed
          (And.intro E.termwiseContinuityClosed
            (And.intro E.termwiseDifferentiabilityClosed E.termwiseIntegrabilityClosed)))))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse