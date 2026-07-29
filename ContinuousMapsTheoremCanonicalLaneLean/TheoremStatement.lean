import ContinuousMapsTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  continuousMapsConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "continuous-maps-theorem-canonical-lane"
def sourceDescription : String := "Continuous Maps Theorem: a continuous bijection of compact Hausdorff spaces is a homeomorphism"
def baselineCertificateLane : String := "continuous_maps_constrained"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository
  theoremName := sourceRepository
  theoremObject := sourceDescription
  classicalBoundary := "standard classical topology boundary"
  continuousMapsConstrainedStatement := "continuous-maps-constrained theorem certificate internalized through admissible-class closure"
  certificateLane := baselineCertificateLane
  carriedRemainder := "classical source boundary carried by theoremBoundaryOpen and sourceTheoremBoundary"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse