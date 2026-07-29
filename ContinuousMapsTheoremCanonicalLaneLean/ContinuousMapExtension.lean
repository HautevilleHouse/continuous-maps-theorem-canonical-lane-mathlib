import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapEquiv

/-!
# Continuous Map Extension Package
-/

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure ContinuousMapExtensionPackage {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    (A : Set X) (f : C(A, Y)) where
  extensionMap : C(X, Y)
  restrictsToA : extensionMap ∘ Subtype.val = f
  uniqueExtension : ∀ g : C(X, Y), (g ∘ Subtype.val = f) → g = extensionMap

structure ContinuousMapExtensionEvidence {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    {A : Set X} {f : C(A, Y)} (P : ContinuousMapExtensionPackage A f) where
  restrictsToAClosed : P.restrictsToA
  uniqueExtensionClosed : P.uniqueExtension

def ContinuousMapExtensionClosed {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    {A : Set X} {f : C(A, Y)} (P : ContinuousMapExtensionPackage A f) : Prop :=
  P.restrictsToA ∧ P.uniqueExtension

theorem continuous_map_extension_closed_from_evidence {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    {A : Set X} {f : C(A, Y)} (P : ContinuousMapExtensionPackage A f) (E : ContinuousMapExtensionEvidence P) :
    ContinuousMapExtensionClosed P := by
  exact And.intro E.restrictsToAClosed E.uniqueExtensionClosed

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
