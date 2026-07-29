import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsTheoremCanonicalLaneLean.ArzelaAscoli

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure StoneWeierstrassPackage (D : ContinuousMapsDomain) (U : UniformConvergenceStructure D)
    (A : ArzelaAscoliPackage D U) where
  subalgebra : Set (D.sourceSpace → ℝ)
  separatesPoints : Prop
  containsConstant : Prop
  closureIsAllContinuous : Prop
  separatesPointsTerm : separatesPoints
  containsConstantTerm : containsConstant

structure StoneWeierstrassEvidence (D : ContinuousMapsDomain) (U : UniformConvergenceStructure D)
    (A : ArzelaAscoliPackage D U) (S : StoneWeierstrassPackage D U A) where
  closureIsAllContinuousClosed : S.closureIsAllContinuous

def StoneWeierstrassClosed (D : ContinuousMapsDomain) (U : UniformConvergenceStructure D)
    (A : ArzelaAscoliPackage D U) (S : StoneWeierstrassPackage D U A) : Prop :=
  S.closureIsAllContinuous

theorem stone_weierstrass_closed_from_evidence (D : ContinuousMapsDomain) (U : UniformConvergenceStructure D)
    (A : ArzelaAscoliPackage D U) (S : StoneWeierstrassPackage D U A)
    (E : StoneWeierstrassEvidence D U A S) : StoneWeierstrassClosed D U A S :=
  E.closureIsAllContinuousClosed

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse