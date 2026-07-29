import ContinuousMapsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ContinuousMapAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContinuousMapWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
