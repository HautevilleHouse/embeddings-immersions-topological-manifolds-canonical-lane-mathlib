import EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

structure ImmersionTheoremPackage (M N : TopologicalManifoldSpace) where
  sourceManifold : M
  targetManifold : N
  immersionExists : Prop
  immersionTheoremProved : Prop
  evidence : immersionExists ∧ immersionTheoremProved

structure ImmersionTheoremEvidence (P : ImmersionTheoremPackage) where
  immersionExistsClosed : P.immersionExists
  immersionTheoremProvedClosed : P.immersionTheoremProved

def ImmersionTheoremClosed (P : ImmersionTheoremPackage) : Prop :=
  P.immersionExists ∧ P.immersionTheoremProved

theorem immersion_theorem_closed_from_evidence (P : ImmersionTheoremPackage)
    (E : ImmersionTheoremEvidence P) : ImmersionTheoremClosed P := by
  exact And.intro E.immersionExistsClosed E.immersionTheoremProvedClosed

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse