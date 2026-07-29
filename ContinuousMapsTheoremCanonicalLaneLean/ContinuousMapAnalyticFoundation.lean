import ContinuousMapsTheoremCanonicalLaneLean.StoneWeierstrass
import Mathlib.Topology.ContinuousMap.Basic

/-!
# Continuous Map Analytic Foundation
-/

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure ContinuousMapAnalyticFoundation where
  compactOpen : ContinuousMapEquivPackage (Unit) (Unit)
  compactOpenEvidence : ContinuousMapEquivEvidence compactOpen
  tychonoffExtension : ContinuousMapExtensionPackage (Set.univ : Set Unit) (fun _ : Unit => ())
  tychonoffExtensionEvidence : ContinuousMapExtensionEvidence tychonoffExtension
  homotopyTheory : ContinuousMapHomotopyPackage (fun _ : Unit => ()) (fun _ : Unit => ())
  homotopyTheoryEvidence : ContinuousMapHomotopyEvidence homotopyTheory
  stoneWeierstrass : StoneWeierstrassPackage (Unit)
  stoneWeierstrassEvidence : StoneWeierstrassEvidence stoneWeierstrass

def ContinuousMapAnalyticFoundationClosed (A : ContinuousMapAnalyticFoundation) : Prop :=
  ContinuousMapEquivClosed A.compactOpen ∧
  ContinuousMapExtensionClosed A.tychonoffExtension ∧
  ContinuousMapHomotopyClosed A.homotopyTheory ∧
  StoneWeierstrassClosed A.stoneWeierstrass

theorem continuous_map_analytic_foundation_closed_from_evidence
    (A : ContinuousMapAnalyticFoundation) :
    ContinuousMapAnalyticFoundationClosed A := by
  refine And.intro (continuous_map_equiv_closed_from_evidence A.compactOpen A.compactOpenEvidence)
    (And.intro (continuous_map_extension_closed_from_evidence A.tychonoffExtension A.tychonoffExtensionEvidence)
      (And.intro (continuous_map_homotopy_closed_from_evidence A.homotopyTheory A.homotopyTheoryEvidence)
        (stone_weierstrass_closed_from_evidence A.stoneWeierstrass A.stoneWeierstrassEvidence)))

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
