import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | ChoiceOfAdmittedObject.embedding obj => obj.conclusion
  | ChoiceOfAdmittedObject.immersion obj => obj.conclusion
  | ChoiceOfAdmittedObject.topological obj => obj.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A.object with (obj | obj | obj)
  · exact obj.conclusion
  · exact obj.conclusion
  · exact obj.conclusion

end EmbeddingsImmersionsTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
