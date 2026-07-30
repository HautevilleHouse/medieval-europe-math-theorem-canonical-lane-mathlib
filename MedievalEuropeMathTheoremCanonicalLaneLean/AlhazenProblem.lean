import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure AlhazenProblemPackage where
  sphericalMirror : Type u
  incidentRay : Type v
  reflectedRay : Type w
  reflectionLaw : Prop
  solutionExists : Prop
  kitabAlManazirReference : Prop

structure AlhazenProblemEvidence (A : AlhazenProblemPackage) where
  reflectionLawClosed : A.reflectionLaw
  solutionExistsClosed : A.solutionExists
  kitabAlManazirReferenceClosed : A.kitabAlManazirReference

def AlhazenProblemClosed (A : AlhazenProblemPackage) : Prop :=
  A.reflectionLaw ∧ A.solutionExists ∧ A.kitabAlManazirReference

theorem alhazen_problem_closed_from_evidence (A : AlhazenProblemPackage) (E : AlhazenProblemEvidence A) :
    AlhazenProblemClosed A := by
  exact And.intro E.reflectionLawClosed
    (And.intro E.solutionExistsClosed E.kitabAlManazirReferenceClosed)

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse