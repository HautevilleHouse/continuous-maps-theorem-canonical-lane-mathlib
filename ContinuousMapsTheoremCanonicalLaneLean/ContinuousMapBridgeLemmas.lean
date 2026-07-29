import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapTheoremAdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuousMapWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
