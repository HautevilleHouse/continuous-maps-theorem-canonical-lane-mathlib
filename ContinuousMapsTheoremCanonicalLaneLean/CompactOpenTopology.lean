import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure CompactOpenTopologyPackage where
  domain : Type u
  codomain : Type v
  domainTopology : TopologicalSpace domain
  codomainTopology : TopologicalSpace codomain
  compactOpenTopology : TopologicalSpace (domain → codomain)
  subbasis : Set (Set (domain → codomain))
  compactSubsets : Set (Set domain)
  openSubsets : Set (Set codomain)
  subbasisDefinesTopology : Prop
  evaluationContinuous : Prop

structure CompactOpenTopologyEvidence (C : CompactOpenTopologyPackage) where
  subbasisDefinesTopologyClosed : C.subbasisDefinesTopology
  evaluationContinuousClosed : C.evaluationContinuous

def CompactOpenTopologyClosed (C : CompactOpenTopologyPackage) : Prop :=
  C.subbasisDefinesTopology ∧ C.evaluationContinuous

theorem compact_open_topology_closed_from_evidence (C : CompactOpenTopologyPackage)
    (E : CompactOpenTopologyEvidence C) : CompactOpenTopologyClosed C := by
  exact And.intro E.subbasisDefinesTopologyClosed E.evaluationContinuousClosed

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse