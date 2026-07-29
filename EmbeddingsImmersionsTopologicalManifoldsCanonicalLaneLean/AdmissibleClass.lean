import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

structure EmbeddingAdmittedObject where
  sourceManifold : Type u
  targetManifold : Type v
  embeddingMap : sourceManifold → targetManifold
  isEmbedding : Prop
  conclusion : isEmbedding

structure ImmersionAdmittedObject where
  sourceManifold : Type u
  targetManifold : Type v
  immersionMap : sourceManifold → targetManifold
  isImmersion : Prop
  conclusion : isImmersion

structure TopologicalManifoldAdmittedObject where
  manifold : Type u
  topologicalProperties : Prop
  classificationResult : Prop
  conclusion : classificationResult

structure AdmissibleClass where
  object : ChoiceOfAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

inductive ChoiceOfAdmittedObject
| embedding (obj : EmbeddingAdmittedObject)
| immersion (obj : ImmersionAdmittedObject)
| topological (obj : TopologicalManifoldAdmittedObject)

def admittedClosure (A : AdmissibleClass) : Prop :=
  match A.object with
  | ChoiceOfAdmittedObject.embedding obj => obj.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)
  | ChoiceOfAdmittedObject.immersion obj => obj.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)
  | ChoiceOfAdmittedObject.topological obj => obj.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
