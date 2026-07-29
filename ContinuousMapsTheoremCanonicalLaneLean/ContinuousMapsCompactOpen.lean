import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapsAdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure CompactOpenTopologyPackage where
  compactOpenTopology : Prop
  evaluationContinuous : Prop
  compositionContinuous : Prop
  homeomorphismToFunctionSpace : Prop

structure CompactOpenTopologyEvidence (C : CompactOpenTopologyPackage) where
  compactOpenTopologyClosed : C.compactOpenTopology
  evaluationContinuousClosed : C.evaluationContinuous
  compositionContinuousClosed : C.compositionContinuous
  homeomorphismToFunctionSpaceClosed : C.homeomorphismToFunctionSpace

def CompactOpenTopologyClosed (C : CompactOpenTopologyPackage) : Prop :=
  C.compactOpenTopology ∧ C.evaluationContinuous ∧ C.compositionContinuous ∧ C.homeomorphismToFunctionSpace

theorem compact_open_topology_closed_from_evidence (C : CompactOpenTopologyPackage) (E : CompactOpenTopologyEvidence C) : CompactOpenTopologyClosed C := by
  exact And.intro E.compactOpenTopologyClosed (And.intro E.evaluationContinuousClosed (And.intro E.compositionContinuousClosed E.homeomorphismToFunctionSpaceClosed))

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse