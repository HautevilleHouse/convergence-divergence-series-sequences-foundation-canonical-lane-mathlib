import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure UniformConvergencePackage where
  carrier : Type
  functionSequence : ℕ → (carrier → ℝ)
  limitFunction : carrier → ℝ
  pointwiseConvergence : ∀ x, Filter.Tendsto (λ n => functionSequence n x) Filter.atTop (nhds (limitFunction x))
  uniformConvergence : ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x, |functionSequence n x - limitFunction x| < ε
  uniformCauchy : ∀ ε > 0, ∃ N, ∀ m,n ≥ N, ∀ x, |functionSequence m x - functionSequence n x| < ε
  supremumNormConvergence : Prop

theorem uniform_convergence_implies_pointwise (U : UniformConvergencePackage) :
  ∀ x, Filter.Tendsto (λ n => U.functionSequence n x) Filter.atTop (nhds (U.limitFunction x)) :=
  U.pointwiseConvergence

theorem uniform_cauchy_iff_uniform_convergence (U : UniformConvergencePackage) :
  (∀ ε > 0, ∃ N, ∀ m,n ≥ N, ∀ x, |U.functionSequence m x - U.functionSequence n x| < ε) ↔
  (∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x, |U.functionSequence n x - U.limitFunction x| < ε) :=
  by
    constructor
    · intro h ε hε
      rcases h ε hε with ⟨N, hN⟩
      exact ⟨N, λ n hn x => hN n n hn hn x⟩
    · intro h ε hε
      rcases h (ε/2) (by linarith) with ⟨N, hN⟩
      refine ⟨N, λ m hm n hn x => ?_⟩
      have h1 : |U.functionSequence m x - U.limitFunction x| < ε/2 := hN m hm x
      have h2 : |U.functionSequence n x - U.limitFunction x| < ε/2 := hN n hn x
      calc
        |U.functionSequence m x - U.functionSequence n x| =
          |(U.functionSequence m x - U.limitFunction x) - (U.functionSequence n x - U.limitFunction x)| := by ring
        _ ≤ |U.functionSequence m x - U.limitFunction x| + |U.functionSequence n x - U.limitFunction x| := abs_sub _ _
        _ < ε/2 + ε/2 := add_lt_add h1 h2
        _ = ε := by norm_num

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse