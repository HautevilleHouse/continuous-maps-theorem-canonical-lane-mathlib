import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapGateLemmas

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure SigmaCompactFamily where
  indexSet : Type u
  compactSubsets : indexSet → (Type v → Prop)
  coveringCondition : Prop

def sigmaApproximationClosed (S : SigmaCompactFamily) : Prop :=
  S.coveringCondition

theorem sigma_approximation_from_evidence (S : SigmaCompactFamily) (h : S.coveringCondition) :
    sigmaApproximationClosed S := by
  exact h

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
