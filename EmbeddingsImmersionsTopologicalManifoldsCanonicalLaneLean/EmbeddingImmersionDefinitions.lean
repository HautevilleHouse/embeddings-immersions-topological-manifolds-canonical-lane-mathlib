import EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic
import Mathlib.Geometry.Manifold.Basic

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

structure TopologicalManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  charted : ChartedSpace ℝ carrier
  smooth : Prop
  dimension : ℕ

def embedding (M N : TopologicalManifold) (f : M.carrier → N.carrier) : Prop :=
  Continuous f ∧ Function.Injective f ∧ ∀ x : M.carrier, ∀ U ∈ 𝓝 x, f '' U ∈ 𝓝 (f x)

def immersion (M N : TopologicalManifold) (f : M.carrier → N.carrier) : Prop :=
  Differentiable M.smooth N.smooth f ∧ ∀ x : M.carrier, (tangentMap f x).Injective

structure EmbeddingStructure (M N : TopologicalManifold) where
  f : M.carrier → N.carrier
  isEmbedding : embedding M N f

structure ImmersionStructure (M N : TopologicalManifold) where
  f : M.carrier → N.carrier
  isImmersion : immersion M N f

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
