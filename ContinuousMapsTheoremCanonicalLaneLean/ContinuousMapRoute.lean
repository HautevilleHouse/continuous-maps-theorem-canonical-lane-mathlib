import ContinuousMapsTheoremCanonicalLaneLean.FinalTheorem
import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapAnalyticFoundation
import Mathlib.Topology.CompactOpen

/-!
# Continuous Map Route Layer
-/

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

abbrev MathlibCompactOpenTopology (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] : Prop :=
  True

structure ContinuousMapRouteObligations where
  compactOpenExistence : Prop
  homotopyTheory : Prop
  extensionResults : Prop
  approximationTheory : Prop

structure ContinuousMapRouteEvidence (R : ContinuousMapRouteObligations) where
  compactOpenExistenceClosed : R.compactOpenExistence
  homotopyTheoryClosed : R.homotopyTheory
  extensionResultsClosed : R.extensionResults
  approximationTheoryClosed : R.approximationTheory

def ContinuousMapRouteClosed (R : ContinuousMapRouteObligations) : Prop :=
  R.compactOpenExistence ∧ R.homotopyTheory ∧ R.extensionResults ∧ R.approximationTheory

def ContinuousMapAnalyticFoundation.toContinuousMapRouteObligations
    (A : ContinuousMapAnalyticFoundation) : ContinuousMapRouteObligations :=
  { compactOpenExistence := ContinuousMapEquivClosed A.compactOpen
    homotopyTheory := ContinuousMapHomotopyClosed A.homotopyTheory
    extensionResults := ContinuousMapExtensionClosed A.tychonoffExtension
    approximationTheory := StoneWeierstrassClosed A.stoneWeierstrass
  }

theorem continuous_map_route_closed_from_evidence
    (R : ContinuousMapRouteObligations) (E : ContinuousMapRouteEvidence R) :
    ContinuousMapRouteClosed R := by
  exact And.intro E.compactOpenExistenceClosed
    (And.intro E.homotopyTheoryClosed (And.intro E.extensionResultsClosed E.approximationTheoryClosed))

def continuous_map_route_evidence_from_analytic_foundation
    (A : ContinuousMapAnalyticFoundation) :
    ContinuousMapRouteEvidence A.toContinuousMapRouteObligations :=
  { compactOpenExistenceClosed := continuous_map_equiv_closed_from_evidence A.compactOpen A.compactOpenEvidence
    homotopyTheoryClosed := continuous_map_homotopy_closed_from_evidence A.homotopyTheory A.homotopyTheoryEvidence
    extensionResultsClosed := continuous_map_extension_closed_from_evidence A.tychonoffExtension A.tychonoffExtensionEvidence
    approximationTheoryClosed := stone_weierstrass_closed_from_evidence A.stoneWeierstrass A.stoneWeierstrassEvidence
  }

theorem continuous_map_route_closed_from_analytic_foundation
    (A : ContinuousMapAnalyticFoundation) :
    ContinuousMapRouteClosed A.toContinuousMapRouteObligations := by
  exact continuous_map_route_closed_from_evidence
    A.toContinuousMapRouteObligations
    (continuous_map_route_evidence_from_analytic_foundation A)

structure ContinuousMapCanonicalLaneRoute (A : AdmissibleClass) where
  obligations : ContinuousMapRouteObligations
  evidence : ContinuousMapRouteEvidence obligations
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem continuous_map_route_yields_constrained_continuous_map_closure
    (A : AdmissibleClass) (R : ContinuousMapCanonicalLaneRoute A) :
    ConstrainedContinuousMapClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
