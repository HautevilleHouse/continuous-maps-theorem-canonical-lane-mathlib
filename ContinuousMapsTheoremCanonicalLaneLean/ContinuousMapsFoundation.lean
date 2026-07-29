import ContinuousMapsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuousMapsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  compact : Prop
  hausdorff : Prop

structure ContinuousMapsAdmittedObject where
  space : ContinuousMapsSpace
  targetSpace : ContinuousMapsSpace
  continuousMap : carrier → carrier
  continuous : Prop
  conclusion : continuous

structure ContinuousMapsEndgameState where
  object : ContinuousMapsAdmittedObject

def ContinuousMapsWitnessClosed (O : ContinuousMapsAdmittedObject) : Prop :=
  O.continuous

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse