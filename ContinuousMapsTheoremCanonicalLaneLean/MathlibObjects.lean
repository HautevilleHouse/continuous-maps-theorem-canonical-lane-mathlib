import ContinuousMapsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuousMapSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuousMapAdmittedObject where
  space : ContinuousMapSpace
  compactOpenTopology : Prop
  functionSpace : Type
  functionTopology : TopologicalSpace functionSpace
  continuousMapProperty : Prop
  conclusion : continuousMapProperty

structure ContinuousMapEndgameState where
  object : ContinuousMapAdmittedObject

def ContinuousMapWitnessClosed (O : ContinuousMapAdmittedObject) : Prop :=
  O.continuousMapProperty

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
