import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

def ConstrainedConvergenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convergence_endgame (A : AdmissibleClass) :
    ConstrainedConvergenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse