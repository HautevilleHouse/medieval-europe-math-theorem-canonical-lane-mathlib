import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure MedievalNumerationPackage where
  numeralSystem : Type u
  positionalNotation : Prop
  zeroSymbol : Prop
  arithmeticOperations : Prop
  commercialUsage : Prop

structure MedievalNumerationEvidence (N : MedievalNumerationPackage) where
  positionalNotationClosed : N.positionalNotation
  zeroSymbolClosed : N.zeroSymbol
  arithmeticOperationsClosed : N.arithmeticOperations
  commercialUsageClosed : N.commercialUsage

def MedievalNumerationClosed (N : MedievalNumerationPackage) : Prop :=
  N.positionalNotation ∧ N.zeroSymbol ∧ N.arithmeticOperations ∧ N.commercialUsage

theorem medieval_numeration_closed_from_evidence (N : MedievalNumerationPackage)
    (E : MedievalNumerationEvidence N) : MedievalNumerationClosed N := by
  exact And.intro E.positionalNotationClosed
    (And.intro E.zeroSymbolClosed
      (And.intro E.arithmeticOperationsClosed E.commercialUsageClosed))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse