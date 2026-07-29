import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapsAdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure UniformLimitPackage (A : ContinuousMapsAdmittedObject) where
  sequence : ℕ → (A.sourceSpace → A.targetSpace)
  eachContinuous : ∀ n, (sequence n).isContinuous
  uniformCauchy : Prop
  limitFunction : A.sourceSpace → A.targetSpace
  limitContinuous : Prop
  limitMatchesCauchy : Prop

structure UniformLimitEvidence (A : ContinuousMapsAdmittedObject) (U : UniformLimitPackage A) where
  uniformCauchyClosed : U.uniformCauchy
  limitContinuousClosed : U.limitContinuous
  limitMatchesCauchyClosed : U.limitMatchesCauchy

def UniformLimitClosed (A : ContinuousMapsAdmittedObject) (U : UniformLimitPackage A) : Prop :=
  U.uniformCauchy ∧ U.limitContinuous ∧ U.limitMatchesCauchy

theorem uniform_limit_closed_from_evidence (A : ContinuousMapsAdmittedObject) (U : UniformLimitPackage A) (E : UniformLimitEvidence A U) : UniformLimitClosed A U := by
  exact And.intro E.uniformCauchyClosed (And.intro E.limitContinuousClosed E.limitMatchesCauchyClosed)

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse