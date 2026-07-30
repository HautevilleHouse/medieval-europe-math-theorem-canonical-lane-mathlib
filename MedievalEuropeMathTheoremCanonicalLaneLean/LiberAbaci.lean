import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure LiberAbaciPackage where
  hinduArabicNumerals : Prop
  computationMethods : Prop
  commercialArithmetic : Prop
  sequenceProblems : Prop

structure LiberAbaciEvidence (L : LiberAbaciPackage) where
  hinduArabicNumeralsClosed : L.hinduArabicNumerals
  computationMethodsClosed : L.computationMethods
  commercialArithmeticClosed : L.commercialArithmetic
  sequenceProblemsClosed : L.sequenceProblems

def LiberAbaciClosed (L : LiberAbaciPackage) : Prop :=
  L.hinduArabicNumerals ∧ L.computationMethods ∧
  L.commercialArithmetic ∧ L.sequenceProblems

theorem liber_abaci_closed_from_evidence (L : LiberAbaciPackage)
    (E : LiberAbaciEvidence L) : LiberAbaciClosed L := by
  exact And.intro E.hinduArabicNumeralsClosed
    (And.intro E.computationMethodsClosed
      (And.intro E.commercialArithmeticClosed E.sequenceProblemsClosed))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse