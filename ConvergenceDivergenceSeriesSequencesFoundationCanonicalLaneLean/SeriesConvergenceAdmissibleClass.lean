import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure SeriesAdmittedObject where
  sequenceType : Type
  termFunction : Nat → sequenceType
  limitInSpace : sequenceType
  termNormed : sequenceType → ℝ
  tailBounded : Prop
  conclusion : tailBounded

structure AdmissibleClass where
  object : SeriesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.tailBounded) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse