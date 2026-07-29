import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure SequenceObject where
  carrier : Type
  sequence : ℕ → carrier
  limit : carrier
  topologicalSpace : TopologicalSpace carrier
  convergence : Filter.Tendsto sequence Filter.atTop (nhds limit)

structure AdmissibleSequenceClass where
  object : SequenceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleSequenceClass) : Prop :=
  SequenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse