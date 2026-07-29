import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsTheoremCanonicalLaneLean.UniformConvergence

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure ArzelaAscoliPackage (D : ContinuousMapsDomain) (U : UniformConvergenceStructure D) where
  equicontinuousFamily : Set (D.sourceSpace → D.targetSpace)
  pointwiseBounded : Prop
  closureCompactInCompactOpen : Prop
  equicontinuousImpliesPrecompact : Prop
  pointwiseBoundedTerm : pointwiseBounded
  equicontinuousImpliesPrecompactTerm : equicontinuousImpliesPrecompact

structure ArzelaAscoliEvidence (D : ContinuousMapsDomain) (U : UniformConvergenceStructure D)
    (A : ArzelaAscoliPackage D U) where
  closureCompactInCompactOpenClosed : A.closureCompactInCompactOpen

def ArzelaAscoliClosed (D : ContinuousMapsDomain) (U : UniformConvergenceStructure D)
    (A : ArzelaAscoliPackage D U) : Prop :=
  A.closureCompactInCompactOpen

theorem arzela_ascoli_closed_from_evidence (D : ContinuousMapsDomain) (U : UniformConvergenceStructure D)
    (A : ArzelaAscoliPackage D U) (E : ArzelaAscoliEvidence D U A) : ArzelaAscoliClosed D U A :=
  E.closureCompactInCompactOpenClosed

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse