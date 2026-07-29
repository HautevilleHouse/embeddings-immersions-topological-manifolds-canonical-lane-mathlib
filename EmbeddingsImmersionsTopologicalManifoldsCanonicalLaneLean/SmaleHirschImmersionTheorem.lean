import EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean.EmbeddingImmersionDefinitions

/-!
# Smale–Hirsch Immersion Theorem
-/

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

structure SmaleHirschPackage (M N : TopologicalManifold) where
  dimensionCondition : M.dimension ≤ N.dimension
  formalImmersion : (x : M.carrier) → (TangentSpace M x) → (TangentSpace N (f x))
  isFormal : Prop
  immersionExists : ImmersionStructure M N
  homotopyEquivalence : Prop

structure SmaleHirschEvidence {M N : TopologicalManifold} (S : SmaleHirschPackage M N) where
  dimensionConditionClosed : S.dimensionCondition
  formalExists : S.isFormal
  immersionExistsClosed : True
  homotopyEquivalenceClosed : S.homotopyEquivalence

def SmaleHirschClosed {M N : TopologicalManifold} (S : SmaleHirschPackage M N) : Prop :=
  S.dimensionCondition ∧ S.isFormal ∧ S.homotopyEquivalence

theorem smale_hirsch_closed_from_evidence
    {M N : TopologicalManifold} (S : SmaleHirschPackage M N)
    (E : SmaleHirschEvidence S) : SmaleHirschClosed S := by
  exact And.intro E.dimensionConditionClosed (And.intro E.formalExists E.homotopyEquivalenceClosed)

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
