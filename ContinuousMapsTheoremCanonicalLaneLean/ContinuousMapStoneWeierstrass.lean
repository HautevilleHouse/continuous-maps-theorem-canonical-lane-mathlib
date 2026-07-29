import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapAscoliTheorem

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure StoneWeierstrassFamily where
  algebra : Set (α → ℝ)
  separatesPoints : Prop
  containsConstant : Prop
  uniformlyClosed : Prop
  densityProp : Prop

def stoneWeierstrassClosed (S : StoneWeierstrassFamily) : Prop :=
  S.separatesPoints ∧ S.containsConstant ∧ S.uniformlyClosed ∧ S.densityProp

theorem stone_weierstrass_from_evidence (S : StoneWeierstrassFamily) (h1 : S.separatesPoints) (h2 : S.containsConstant) (h3 : S.uniformlyClosed) (h4 : S.densityProp) :
    stoneWeierstrassClosed S := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
