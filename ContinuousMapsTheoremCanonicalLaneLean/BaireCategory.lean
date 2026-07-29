import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsTheoremCanonicalLaneLean

structure BaireCategoryPackage where
  space : Type u
  topology : TopologicalSpace space
  completeMetric : MetricSpace space
  countableIntersectionOpenDense : Prop
  denseGDeltaSets : Prop
  residualSetNonempty : Prop
  uniformBoundednessConclusion : Prop

structure BaireCategoryEvidence (B : BaireCategoryPackage) where
  countableIntersectionOpenDenseClosed : B.countableIntersectionOpenDense
  denseGDeltaSetsClosed : B.denseGDeltaSets
  residualSetNonemptyClosed : B.residualSetNonempty
  uniformBoundednessConclusionClosed : B.uniformBoundednessConclusion

def BaireCategoryClosed (B : BaireCategoryPackage) : Prop :=
  B.countableIntersectionOpenDense ∧ B.denseGDeltaSets ∧
  B.residualSetNonempty ∧ B.uniformBoundednessConclusion

theorem baire_category_closed_from_evidence (B : BaireCategoryPackage)
    (E : BaireCategoryEvidence B) : BaireCategoryClosed B := by
  exact And.intro E.countableIntersectionOpenDenseClosed
    (And.intro E.denseGDeltaSetsClosed
      (And.intro E.residualSetNonemptyClosed E.uniformBoundednessConclusionClosed))

end ContinuousMapsTheoremCanonicalLaneLean
end HautevilleHouse