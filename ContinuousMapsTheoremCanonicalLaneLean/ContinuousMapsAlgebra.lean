import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapsAdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure ContinuousMapsAlgebraPackage where
  ringStructure : Prop
  moduleStructure : Prop
  algebraStructure : Prop
  pointwiseOperations : Prop
  closureUnderLimits : Prop

structure ContinuousMapsAlgebraEvidence (C : ContinuousMapsAlgebraPackage) where
  ringStructureClosed : C.ringStructure
  moduleStructureClosed : C.moduleStructure
  algebraStructureClosed : C.algebraStructure
  pointwiseOperationsClosed : C.pointwiseOperations
  closureUnderLimitsClosed : C.closureUnderLimits

def ContinuousMapsAlgebraClosed (C : ContinuousMapsAlgebraPackage) : Prop :=
  C.ringStructure ∧ C.moduleStructure ∧ C.algebraStructure ∧ C.pointwiseOperations ∧ C.closureUnderLimits

theorem continuous_maps_algebra_closed_from_evidence (C : ContinuousMapsAlgebraPackage) (E : ContinuousMapsAlgebraEvidence C) : ContinuousMapsAlgebraClosed C := by
  exact And.intro E.ringStructureClosed (And.intro E.moduleStructureClosed (And.intro E.algebraStructureClosed (And.intro E.pointwiseOperationsClosed E.closureUnderLimitsClosed)))

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse