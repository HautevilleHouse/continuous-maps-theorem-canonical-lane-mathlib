import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapGateLemmas

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

def ConstrainedContinuousMapClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_map_endgame (A : AdmissibleClass) :
    ConstrainedContinuousMapClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
