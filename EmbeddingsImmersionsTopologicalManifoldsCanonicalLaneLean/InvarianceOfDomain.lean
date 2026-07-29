import EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean.EmbeddingImmersionDefinitions
import Mathlib.Topology.Algebra.Order.Basic

/-!
# Invariance of Domain
-/

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

structure InvarianceOfDomainPackage (M N : TopologicalManifold) where
  embeddingGiven : EmbeddingStructure M N
  sameDimension : M.dimension = N.dimension
  openImage : IsOpen (Set.range embeddingGiven.f)
  homeoontoimage : Homeomorphic M (Set.range embeddingGiven.f)

structure InvarianceOfDomainEvidence {M N : TopologicalManifold}
    (I : InvarianceOfDomainPackage M N) where
  sameDimensionClosed : I.sameDimension
  openImageClosed : I.openImage
  homeoontoimageClosed : I.homeoontoimage

def InvarianceOfDomainClosed {M N : TopologicalManifold}
    (I : InvarianceOfDomainPackage M N) : Prop :=
  I.sameDimension ∧ I.openImage ∧ I.homeoontoimage

theorem invariance_of_domain_closed_from_evidence
    {M N : TopologicalManifold} (I : InvarianceOfDomainPackage M N)
    (E : InvarianceOfDomainEvidence I) : InvarianceOfDomainClosed I := by
  exact And.intro E.sameDimensionClosed (And.intro E.openImageClosed E.homeoontoimageClosed)

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
