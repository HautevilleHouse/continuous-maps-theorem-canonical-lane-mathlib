import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure AscoliArzelaPackage where
  sourceSpace : Type u
  targetSpace : Type v
  sourceTopology : TopologicalSpace sourceSpace
  targetMetric : MetricSpace targetSpace
  functionFamily : Set (sourceSpace → targetSpace)
  equicontinuity : Prop
  pointwiseBoundedness : Prop
  compactClosure : Prop
  closureCompact : Prop

structure AscoliArzelaEvidence (A : AscoliArzelaPackage) where
  equicontinuityClosed : A.equicontinuity
  pointwiseBoundednessClosed : A.pointwiseBoundedness
  closureCompactClosed : A.closureCompact

def AscoliArzelaClosed (A : AscoliArzelaPackage) : Prop :=
  A.equicontinuity ∧ A.pointwiseBoundedness ∧ A.closureCompact

theorem ascoli_arzela_closed_from_evidence (A : AscoliArzelaPackage)
    (E : AscoliArzelaEvidence A) : AscoliArzelaClosed A := by
  exact And.intro E.equicontinuityClosed
    (And.intro E.pointwiseBoundednessClosed E.closureCompactClosed)

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse