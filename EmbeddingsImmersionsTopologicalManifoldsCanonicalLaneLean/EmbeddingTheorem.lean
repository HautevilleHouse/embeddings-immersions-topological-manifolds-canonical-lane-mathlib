import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

structure EmbeddingTheoremPackage where
  sourceDimension : ℕ
  targetDimension : ℕ
  smoothEmbeddingExists : Prop
  whimeyEmbeddingTheorem : Prop
  compactnessCondition : Prop

structure EmbeddingTheoremEvidence (P : EmbeddingTheoremPackage) where
  smoothEmbeddingExistsClosed : P.smoothEmbeddingExists
  whimeyEmbeddingTheoremClosed : P.whimeyEmbeddingTheorem
  compactnessConditionClosed : P.compactnessCondition

def EmbeddingTheoremClosed (P : EmbeddingTheoremPackage) : Prop :=
  P.smoothEmbeddingExists ∧ P.whimeyEmbeddingTheorem ∧ P.compactnessCondition

theorem embedding_theorem_closed_from_evidence (P : EmbeddingTheoremPackage) (E : EmbeddingTheoremEvidence P) :
    EmbeddingTheoremClosed P := by
  exact And.intro E.smoothEmbeddingExistsClosed
    (And.intro E.whimeyEmbeddingTheoremClosed E.compactnessConditionClosed)

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
