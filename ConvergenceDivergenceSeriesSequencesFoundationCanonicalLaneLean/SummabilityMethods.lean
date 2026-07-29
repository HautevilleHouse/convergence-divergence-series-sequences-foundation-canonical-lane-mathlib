import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure SummabilityMethodsPackage where
  cesaroSummation : Prop
  abelSummation : Prop
  borelSummation : Prop
  eulerSummation : Prop
  ramanujanSummation : Prop

structure SummabilityMethodsEvidence (S : SummabilityMethodsPackage) where
  cesaroSummationClosed : S.cesaroSummation
  abelSummationClosed : S.abelSummation
  borelSummationClosed : S.borelSummation
  eulerSummationClosed : S.eulerSummation
  ramanujanSummationClosed : S.ramanujanSummation

def SummabilityMethodsClosed (S : SummabilityMethodsPackage) : Prop :=
  S.cesaroSummation ∧ S.abelSummation ∧ S.borelSummation ∧ S.eulerSummation ∧ S.ramanujanSummation

theorem summability_methods_closed_from_evidence (S : SummabilityMethodsPackage) (E : SummabilityMethodsEvidence S) : SummabilityMethodsClosed S := by
  exact And.intro E.cesaroSummationClosed (And.intro E.abelSummationClosed (And.intro E.borelSummationClosed (And.intro E.eulerSummationClosed E.ramanujanSummationClosed)))

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse
