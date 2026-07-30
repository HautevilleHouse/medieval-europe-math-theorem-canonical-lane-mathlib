import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure AlgorithmiAlgebraPackage where
  alKhwarizmi : Type u
  quadraticSolution : Prop
  completionBalancing : Prop
  inheritanceDivision : Prop
  symbolicRepresentation : Prop

structure AlgorithmiAlgebraEvidence (A : AlgorithmiAlgebraPackage) where
  quadraticSolutionClosed : A.quadraticSolution
  completionBalancingClosed : A.completionBalancing
  inheritanceDivisionClosed : A.inheritanceDivision
  symbolicRepresentationClosed : A.symbolicRepresentation

def AlgorithmiAlgebraClosed (A : AlgorithmiAlgebraPackage) : Prop :=
  A.quadraticSolution ∧ A.completionBalancing ∧ A.inheritanceDivision ∧ A.symbolicRepresentation

theorem algorithmi_algebra_closed_from_evidence (A : AlgorithmiAlgebraPackage)
    (E : AlgorithmiAlgebraEvidence A) : AlgorithmiAlgebraClosed A := by
  exact And.intro E.quadraticSolutionClosed
    (And.intro E.completionBalancingClosed
      (And.intro E.inheritanceDivisionClosed E.symbolicRepresentationClosed))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse