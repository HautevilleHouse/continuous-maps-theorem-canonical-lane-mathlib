import ContinuousMapsTheoremCanonicalLaneLean.RiemannianCurvature

/-!
# Continuous Map Equiv Package
-/

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure ContinuousMapEquivPackage (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] where
  forwardMap : C(X, Y)
  backwardMap : C(Y, X)
  forwardContinuous : Continuous forwardMap
  backwardContinuous : Continuous backwardMap
  compositonIdentity : forwardMap ∘ backwardMap = ContinuousMap.id Y ∧ backwardMap ∘ forwardMap = ContinuousMap.id X

structure ContinuousMapEquivEvidence {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    (P : ContinuousMapEquivPackage X Y) where
  forwardContinuousClosed : P.forwardContinuous
  backwardContinuousClosed : P.backwardContinuous
  compositonIdentityClosed : P.compositonIdentity

def ContinuousMapEquivClosed {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    (P : ContinuousMapEquivPackage X Y) : Prop :=
  P.forwardContinuous ∧ P.backwardContinuous ∧ P.compositonIdentity

theorem continuous_map_equiv_closed_from_evidence {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    (P : ContinuousMapEquivPackage X Y) (E : ContinuousMapEquivEvidence P) :
    ContinuousMapEquivClosed P := by
  exact And.intro E.forwardContinuousClosed (And.intro E.backwardContinuousClosed E.compositonIdentityClosed)

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
