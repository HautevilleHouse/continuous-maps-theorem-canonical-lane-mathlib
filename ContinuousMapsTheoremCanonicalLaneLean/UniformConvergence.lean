import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure UniformConvergenceStructure (D : ContinuousMapsDomain) where
  uniformConvergence : TopologicalSpace (D.sourceSpace → D.targetSpace)
  uniformConvergenceOnCompacts : TopologicalSpace (D.sourceSpace → D.targetSpace)
  uniformOnCompactsEqualsCompactOpen : Prop
  completeUniformSpace : Prop
  uniformOnCompactsEqualsCompactOpenTerm : uniformOnCompactsEqualsCompactOpen
  completeUniformSpaceTerm : completeUniformSpace

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse