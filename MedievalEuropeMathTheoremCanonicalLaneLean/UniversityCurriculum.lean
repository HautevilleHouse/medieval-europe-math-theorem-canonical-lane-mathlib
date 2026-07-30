import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure UniversityCurriculumPackage where
  quadriviumArithmetic : Bool
  computationalTechniques : Prop
  teachingMethods : Prop
  textbookPropagation : Prop

structure UniversityCurriculumEvidence (U : UniversityCurriculumPackage) where
  quadriviumArithmeticClosed : U.quadriviumArithmetic
  computationalTechniquesClosed : U.computationalTechniques
  teachingMethodsClosed : U.teachingMethods
  textbookPropagationClosed : U.textbookPropagation

def UniversityCurriculumClosed (U : UniversityCurriculumPackage) : Prop :=
  U.quadriviumArithmetic ∧ U.computationalTechniques ∧ U.teachingMethods ∧ U.textbookPropagation

theorem university_curriculum_closed_from_evidence (U : UniversityCurriculumPackage) (E : UniversityCurriculumEvidence U) :
    UniversityCurriculumClosed U := by
  exact And.intro E.quadriviumArithmeticClosed
    (And.intro E.computationalTechniquesClosed
      (And.intro E.teachingMethodsClosed E.textbookPropagationClosed))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse