import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

structure TopologicalManifoldPropertiesPackage where
  manifold : Type u
  invarianceOfDomain : Prop
  classificationSurfaces : Prop
  dualityTheorem : Prop

structure TopologicalManifoldPropertiesEvidence (P : TopologicalManifoldPropertiesPackage) where
  invarianceOfDomainClosed : P.invarianceOfDomain
  classificationSurfacesClosed : P.classificationSurfaces
  dualityTheoremClosed : P.dualityTheorem

def TopologicalManifoldPropertiesClosed (P : TopologicalManifoldPropertiesPackage) : Prop :=
  P.invarianceOfDomain ∧ P.classificationSurfaces ∧ P.dualityTheorem

theorem topological_manifold_properties_closed_from_evidence (P : TopologicalManifoldPropertiesPackage)
    (E : TopologicalManifoldPropertiesEvidence P) : TopologicalManifoldPropertiesClosed P := by
  exact And.intro E.invarianceOfDomainClosed
    (And.intro E.classificationSurfacesClosed E.dualityTheoremClosed)

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
