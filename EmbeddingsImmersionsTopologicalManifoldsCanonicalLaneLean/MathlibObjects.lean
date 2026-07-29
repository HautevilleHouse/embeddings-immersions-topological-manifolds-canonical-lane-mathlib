import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic
import Mathlib.Topology.Manifold.Basic

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

structure TopologicalManifoldSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  dimension : ℕ
  isManifold : Prop

structure EmbeddingImmersionAdmittedObject where
  source : TopologicalManifoldSpace
  target : TopologicalManifoldSpace
  map : source.carrier → target.carrier
  isEmbedding : Prop
  isImmersion : Prop
  conclusion : isEmbedding ∧ isImmersion

def EmbeddingImmersionWitnessClosed (O : EmbeddingImmersionAdmittedObject) : Prop :=
  O.isEmbedding ∧ O.isImmersion

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse