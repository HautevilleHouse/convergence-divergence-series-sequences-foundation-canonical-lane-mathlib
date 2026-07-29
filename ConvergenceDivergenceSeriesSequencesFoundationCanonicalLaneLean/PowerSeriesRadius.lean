import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure PowerSeriesRadius where
  powerSeries : Type u
  radiusOfConvergence : Prop
  cauchyHadamardFormula : Prop
  convergenceOnDisk : Prop
  divergenceOutsideDisk : Prop

structure PowerSeriesRadiusEvidence (P : PowerSeriesRadius) where
  radiusOfConvergenceClosed : P.radiusOfConvergence
  cauchyHadamardFormulaClosed : P.cauchyHadamardFormula
  convergenceOnDiskClosed : P.convergenceOnDisk
  divergenceOutsideDiskClosed : P.divergenceOutsideDisk

def PowerSeriesRadiusClosed (P : PowerSeriesRadius) : Prop :=
  P.radiusOfConvergence ∧ P.cauchyHadamardFormula ∧ P.convergenceOnDisk ∧ P.divergenceOutsideDisk

theorem power_series_radius_closed_from_evidence (P : PowerSeriesRadius) (E : PowerSeriesRadiusEvidence P) : PowerSeriesRadiusClosed P := by
  exact And.intro E.radiusOfConvergenceClosed (And.intro E.cauchyHadamardFormulaClosed (And.intro E.convergenceOnDiskClosed E.divergenceOutsideDiskClosed))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse