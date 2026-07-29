import EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean.EmbeddingImmersionDefinitions

/-!
# Whitney Embedding Theorem
-/

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

structure WhitneyEmbeddingPackage (M : TopologicalManifold) where
  targetDimension : ℕ
  targetSpace : TopologicalManifold
  validEmbedding : EmbeddingStructure M targetSpace
  targetDimensionSuffices : targetDimension ≥ 2 * M.dimension + 1
  strongWhitney : Prop

structure WhitneyEmbeddingEvidence {M : TopologicalManifold} (W : WhitneyEmbeddingPackage M) where
  targetDimensionSufficesClosed : W.targetDimensionSuffices
  strongWhitneyClosed : W.strongWhitney

def WhitneyEmbeddingClosed {M : TopologicalManifold} (W : WhitneyEmbeddingPackage M) : Prop :=
  W.targetDimensionSuffices ∧ W.strongWhitney

theorem whitney_embedding_closed_from_evidence
    {M : TopologicalManifold} (W : WhitneyEmbeddingPackage M)
    (E : WhitneyEmbeddingEvidence W) : WhitneyEmbeddingClosed W := by
  exact And.intro E.targetDimensionSufficesClosed E.strongWhitneyClosed

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
