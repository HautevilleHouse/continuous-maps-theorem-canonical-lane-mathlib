import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapExtension

/-!
# Continuous Map Homotopy Package
-/

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure ContinuousMapHomotopyPackage {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    (f g : C(X, Y)) where
  homotopyMap : C(X × UnitInterval, Y)
  atZero : homotopyMap ∘ (fun x : X => (x, 0)) = f
  atOne : homotopyMap ∘ (fun x : X => (x, 1)) = g

structure ContinuousMapHomotopyEvidence {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    {f g : C(X, Y)} (P : ContinuousMapHomotopyPackage f g) where
  atZeroClosed : P.atZero
  atOneClosed : P.atOne

def ContinuousMapHomotopyClosed {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    {f g : C(X, Y)} (P : ContinuousMapHomotopyPackage f g) : Prop :=
  P.atZero ∧ P.atOne

theorem continuous_map_homotopy_closed_from_evidence {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    {f g : C(X, Y)} (P : ContinuousMapHomotopyPackage f g) (E : ContinuousMapHomotopyEvidence P) :
    ContinuousMapHomotopyClosed P := by
  exact And.intro E.atZeroClosed E.atOneClosed

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
