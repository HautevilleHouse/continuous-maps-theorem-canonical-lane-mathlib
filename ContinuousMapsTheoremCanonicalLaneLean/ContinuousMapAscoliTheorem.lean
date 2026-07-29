import ContinuousMapsTheoremCanonicalLaneLean.ContinuousMapUniformConvergence

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure AscoliFamily where
  functionFamily : Set (α → β)
  equicontinuous : Prop
  pointwiseBounded : Prop
  compactClosure : Prop

def ascoliTheoremClosed (A : AscoliFamily) : Prop :=
  A.equicontinuous ∧ A.pointwiseBounded ∧ A.compactClosure

theorem ascoli_from_evidence (A : AscoliFamily) (h1 : A.equicontinuous) (h2 : A.pointwiseBounded) (h3 : A.compactClosure) :
    ascoliTheoremClosed A := by
  exact And.intro h1 (And.intro h2 h3)

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse
