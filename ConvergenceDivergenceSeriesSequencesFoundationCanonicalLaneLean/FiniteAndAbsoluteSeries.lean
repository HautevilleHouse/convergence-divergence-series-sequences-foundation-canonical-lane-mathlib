import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure FiniteAndAbsoluteSeries where
  finiteSum : Prop
  absoluteSum : Prop
  finiteImpliesAbsolute : Prop
  absoluteImpliesFinite : Prop

structure FiniteAndAbsoluteSeriesEvidence (F : FiniteAndAbsoluteSeries) where
  finiteSumClosed : F.finiteSum
  absoluteSumClosed : F.absoluteSum
  finiteImpliesAbsoluteClosed : F.finiteImpliesAbsolute
  absoluteImpliesFiniteClosed : F.absoluteImpliesFinite

def FiniteAndAbsoluteSeriesClosed (F : FiniteAndAbsoluteSeries) : Prop :=
  F.finiteSum ∧ F.absoluteSum ∧ F.finiteImpliesAbsolute ∧ F.absoluteImpliesFinite

theorem finite_and_absolute_series_closed_from_evidence (F : FiniteAndAbsoluteSeries) (E : FiniteAndAbsoluteSeriesEvidence F) : FiniteAndAbsoluteSeriesClosed F := by
  exact And.intro F.finiteSum (And.intro F.absoluteSum (And.intro F.finiteImpliesAbsolute F.absoluteImpliesFinite))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse