import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure DivergenceVelocity where
  slowDivergence : Prop
  logarithmicDivergence : Prop
  powerLawDivergence : Prop
  exponentialDivergence : Prop
  factorialDivergence : Prop
  comparisonScale : Prop

structure DivergenceVelocityEvidence (D : DivergenceVelocity) where
  slowDivergenceClosed : D.slowDivergence
  logarithmicDivergenceClosed : D.logarithmicDivergence
  powerLawDivergenceClosed : D.powerLawDivergence
  exponentialDivergenceClosed : D.exponentialDivergence
  factorialDivergenceClosed : D.factorialDivergence
  comparisonScaleClosed : D.comparisonScale

def DivergenceVelocityClosed (D : DivergenceVelocity) : Prop :=
  D.slowDivergence ∧ D.logarithmicDivergence ∧ D.powerLawDivergence ∧
  D.exponentialDivergence ∧ D.factorialDivergence ∧ D.comparisonScale

theorem divergence_velocity_closed_from_evidence (D : DivergenceVelocity) (E : DivergenceVelocityEvidence D) : DivergenceVelocityClosed D := by
  exact And.intro E.slowDivergenceClosed
    (And.intro E.logarithmicDivergenceClosed
      (And.intro E.powerLawDivergenceClosed
        (And.intro E.exponentialDivergenceClosed
          (And.intro E.factorialDivergenceClosed E.comparisonScaleClosed))))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse