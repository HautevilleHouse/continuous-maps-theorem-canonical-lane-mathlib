import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure ContinuousFunctionsStructure (D : ContinuousMapsDomain) where
  pointwiseConvergence : TopologicalSpace (D.sourceSpace → D.targetSpace)
  compactOpenTopology : TopologicalSpace (D.sourceSpace → D.targetSpace)
  compactOpenRefinesPointwise : Prop
  evaluationContinuous : Prop
  compactOpenRefinesPointwiseTerm : compactOpenRefinesPointwise
  evaluationContinuousTerm : evaluationContinuous

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse