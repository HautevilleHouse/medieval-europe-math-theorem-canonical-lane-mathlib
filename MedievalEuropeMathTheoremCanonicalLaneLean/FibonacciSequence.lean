import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure FibonacciSequencePackage where
  initialTerms : List Nat
  recurrenceValid : Prop
  closedFormProp : Prop
  rabbitProblem : Prop
  liberAbaciCitation : Prop

structure FibonacciSequenceEvidence (F : FibonacciSequencePackage) where
  recurrenceValidClosed : F.recurrenceValid
  closedFormPropClosed : F.closedFormProp
  liberAbaciCitationClosed : F.liberAbaciCitation

def FibonacciSequenceClosed (F : FibonacciSequencePackage) : Prop :=
  F.recurrenceValid ∧ F.closedFormProp ∧ F.liberAbaciCitation

theorem fibonacci_sequence_closed_from_evidence (F : FibonacciSequencePackage) (E : FibonacciSequenceEvidence F) :
    FibonacciSequenceClosed F := by
  exact And.intro E.recurrenceValidClosed
    (And.intro E.closedFormPropClosed E.liberAbaciCitationClosed)

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse