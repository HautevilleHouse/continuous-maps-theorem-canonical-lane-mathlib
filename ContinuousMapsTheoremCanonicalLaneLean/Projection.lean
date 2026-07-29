import ContinuousMapsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def continuousMapProjection : Projection ContinuousMapEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem continuous_map_projection_idempotent (x : ContinuousMapEndgameState) :
    continuousMapProjection.toFun (continuousMapProjection.toFun x) = continuousMapProjection.toFun x := by
  exact continuousMapProjection.idempotent x

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
