import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapsFoundation

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure ApproximationPackage (M : ContinuousMapsSpace) where
  functionFamily : Type
  denseInCompactOpen : Prop
  closureUnderLimits : Prop

structure ApproximationEvidence (M : ContinuousMapsSpace) (P : ApproximationPackage M) where
  denseInCompactOpenClosed : P.denseInCompactOpen
  closureUnderLimitsClosed : P.closureUnderLimits

def ApproximationClosed (M : ContinuousMapsSpace) (P : ApproximationPackage M) : Prop :=
  P.denseInCompactOpen ∧ P.closureUnderLimits

theorem approximation_closed_from_evidence (M : ContinuousMapsSpace) (P : ApproximationPackage M) (E : ApproximationEvidence M P) : ApproximationClosed M P := by
  exact And.intro E.denseInCompactOpenClosed E.closureUnderLimitsClosed

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse