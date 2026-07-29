import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure BernsteinPolynomialPackage where
  f : ℝ → ℝ
  a b : ℝ
  interval : Set ℝ := Set.Icc a b
  n : ℕ
  BernsteinTerm (k : ℕ) (x : ℝ) : ℝ :=
    (Nat.choose n k) * (x - a)^k * (b - x)^(n-k) / (b - a)^n
  BernsteinPolynomial (x : ℝ) : ℝ :=
    ∑ k in Finset.range (n+1), f (a + (b-a)*((k : ℝ)/n)) * BernsteinTerm k x
  uniformConvergence : ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x ∈ interval, |BernsteinPolynomial x - f x| < ε

theorem bernstein_approximates_continuous (f : ℝ → ℝ) (hcont : ContinuousOn f (Set.Icc a b)) :
  ∀ ε > 0, ∃ (p : ℝ → ℝ) (hp : Polynomial ℝ), ∀ x ∈ Set.Icc a b, |p x - f x| < ε :=
  by
    intro ε hε
    have h := BernsteinPolynomialPackage.uniformConvergence
    -- This theorem provides the Weierstrass approximation.
    sorry

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse