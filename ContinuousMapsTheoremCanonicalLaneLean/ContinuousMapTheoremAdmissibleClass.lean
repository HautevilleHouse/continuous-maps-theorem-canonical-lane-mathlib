import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure ContinuousMapAdmittedObject where
  sourceTopologicalSpace : Type u
  targetTopologicalSpace : Type v
  continuousMap : sourceTopologicalSpace → targetTopologicalSpace
  uniformityCondition : Prop
  conclusion : uniformityCondition

def ContinuousMapWitnessClosed (O : ContinuousMapAdmittedObject) : Prop :=
  O.uniformityCondition

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
