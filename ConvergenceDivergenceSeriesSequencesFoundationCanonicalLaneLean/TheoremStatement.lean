import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean

structure ConvergentAdmittedObject where
  sequenceType : Type
  termLimit : sequenceType
  convergenceLimitExistence : Prop
  conclusion : convergenceLimitExistence

def ConvergentWitnessClosed (O : ConvergentAdmittedObject) : Prop :=
  O.convergenceLimitExistence

end ConvergenceDivergenceSeriesSequencesFoundationCanonicalLaneLean
end HautevilleHouse