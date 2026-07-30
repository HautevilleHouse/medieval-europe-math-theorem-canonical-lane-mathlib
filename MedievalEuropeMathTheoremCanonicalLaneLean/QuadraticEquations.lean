import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure QuadraticEquationsPackage where
  alKhwarizmiClassification : Bool
  geometricProof : Prop
  sixStandardForms : Prop
  algebraicSolution : Prop

structure QuadraticEquationsEvidence (Q : QuadraticEquationsPackage) where
  alKhwarizmiClassificationClosed : Q.alKhwarizmiClassification
  geometricProofClosed : Q.geometricProof
  sixStandardFormsClosed : Q.sixStandardForms
  algebraicSolutionClosed : Q.algebraicSolution

def QuadraticEquationsClosed (Q : QuadraticEquationsPackage) : Prop :=
  Q.alKhwarizmiClassification ∧ Q.geometricProof ∧ Q.sixStandardForms ∧ Q.algebraicSolution

theorem quadratic_equations_closed_from_evidence (Q : QuadraticEquationsPackage) (E : QuadraticEquationsEvidence Q) :
    QuadraticEquationsClosed Q := by
  exact And.intro E.alKhwarizmiClassificationClosed
    (And.intro E.geometricProofClosed
      (And.intro E.sixStandardFormsClosed E.algebraicSolutionClosed))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse