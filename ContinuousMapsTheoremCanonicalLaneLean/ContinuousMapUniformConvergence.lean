import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapSigmaApproximation

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure UniformConvergenceFamily where
  source : Type u
  target : Type v
  targetMetric : target → target → ℝ
  uniformLimitCondition : Prop

def uniformConvergenceClosed (U : UniformConvergenceFamily) : Prop :=
  U.uniformLimitCondition

theorem uniform_convergence_from_evidence (U : UniformConvergenceFamily) (h : U.uniformLimitCondition) :
    uniformConvergenceClosed U := by
  exact h

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
