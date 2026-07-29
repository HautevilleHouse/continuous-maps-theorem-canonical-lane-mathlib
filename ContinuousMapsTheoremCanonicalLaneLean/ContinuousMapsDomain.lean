import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure ContinuousMapsDomain where
  sourceSpace : Type u
  targetSpace : Type v
  sourceTopology : TopologicalSpace sourceSpace
  targetTopology : TopologicalSpace targetSpace
  continuousMapsSet : Set (sourceSpace → targetSpace)
  sourceCompact : Prop
  targetHausdorff : Prop
  sourceCompactTerm : sourceCompact
  targetHausdorffTerm : targetHausdorff

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse