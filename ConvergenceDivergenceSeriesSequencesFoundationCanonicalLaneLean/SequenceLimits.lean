import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure SequenceLimits where
  epsilonN : Prop
  subsequenceLimit : Prop
  cauchyCriterion : Prop
  monotoneConvergence : Prop
  bolzanoWeierstrass : Prop
  supremumInfimum : Prop

structure SequenceLimitsEvidence (L : SequenceLimits) where
  epsilonNClosed : L.epsilonN
  subsequenceLimitClosed : L.subsequenceLimit
  cauchyCriterionClosed : L.cauchyCriterion
  monotoneConvergenceClosed : L.monotoneConvergence
  bolzanoWeierstrassClosed : L.bolzanoWeierstrass
  supremumInfimumClosed : L.supremumInfimum

def SequenceLimitsClosed (L : SequenceLimits) : Prop :=
  L.epsilonN ∧ L.subsequenceLimit ∧ L.cauchyCriterion ∧ L.monotoneConvergence ∧
  L.bolzanoWeierstrass ∧ L.supremumInfimum

theorem sequence_limits_closed_from_evidence (L : SequenceLimits) (E : SequenceLimitsEvidence L) : SequenceLimitsClosed L := by
  exact And.intro E.epsilonNClosed
    (And.intro E.subsequenceLimitClosed
      (And.intro E.cauchyCriterionClosed
        (And.intro E.monotoneConvergenceClosed
          (And.intro E.bolzanoWeierstrassClosed E.supremumInfimumClosed))))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse