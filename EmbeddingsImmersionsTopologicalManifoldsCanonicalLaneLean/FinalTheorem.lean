import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

def ConstrainedEmbeddingImmersionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_embedding_immersion_endgame (A : AdmissibleClass) :
    ConstrainedEmbeddingImmersionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
