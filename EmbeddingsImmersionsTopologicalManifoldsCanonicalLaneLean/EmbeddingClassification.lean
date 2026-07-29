import EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

structure EmbeddingClassificationPackage (M N : TopologicalManifoldSpace) where
  sourceManifold : M
  targetManifold : N
  embeddingClassified : Prop
  classificationStatement : Prop
  evidence : embeddingClassified ∧ classificationStatement

structure EmbeddingClassificationEvidence (P : EmbeddingClassificationPackage) where
  embeddingClassifiedClosed : P.embeddingClassified
  classificationStatementClosed : P.classificationStatement

def EmbeddingClassificationClosed (P : EmbeddingClassificationPackage) : Prop :=
  P.embeddingClassified ∧ P.classificationStatement

theorem embedding_classification_closed_from_evidence (P : EmbeddingClassificationPackage)
    (E : EmbeddingClassificationEvidence P) : EmbeddingClassificationClosed P := by
  exact And.intro E.embeddingClassifiedClosed E.classificationStatementClosed

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse