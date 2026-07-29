import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ContinuousMapsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContinuousMapsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse