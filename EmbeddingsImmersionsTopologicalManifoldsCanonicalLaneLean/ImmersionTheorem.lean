import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

structure ImmersionTheoremPackage where
  sourceDimension : ℕ
  targetDimension : ℕ
  immersionExists : Prop
  smaleHirschTheorem : Prop
  hPrincipleCondition : Prop

structure ImmersionTheoremEvidence (P : ImmersionTheoremPackage) where
  immersionExistsClosed : P.immersionExists
  smaleHirschTheoremClosed : P.smaleHirschTheorem
  hPrincipleConditionClosed : P.hPrincipleCondition

def ImmersionTheoremClosed (P : ImmersionTheoremPackage) : Prop :=
  P.immersionExists ∧ P.smaleHirschTheorem ∧ P.hPrincipleCondition

theorem immersion_theorem_closed_from_evidence (P : ImmersionTheoremPackage) (E : ImmersionTheoremEvidence P) :
    ImmersionTheoremClosed P := by
  exact And.intro E.immersionExistsClosed
    (And.intro E.smaleHirschTheoremClosed E.hPrincipleConditionClosed)

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
