import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure LiberAbaciPackage where
  translationFromLatin : Bool
  commercialArithmetic : Prop
  problemClassification : Prop
  influenceOnEuropeanMath : Prop

structure LiberAbaciEvidence (L : LiberAbaciPackage) where
  translationFromLatinClosed : L.translationFromLatin
  commercialArithmeticClosed : L.commercialArithmetic
  problemClassificationClosed : L.problemClassification
  influenceOnEuropeanMathClosed : L.influenceOnEuropeanMath

def LiberAbaciClosed (L : LiberAbaciPackage) : Prop :=
  L.translationFromLatin ∧ L.commercialArithmetic ∧ L.problemClassification ∧ L.influenceOnEuropeanMath

theorem liber_abaci_closed_from_evidence (L : LiberAbaciPackage) (E : LiberAbaciEvidence L) :
    LiberAbaciClosed L := by
  exact And.intro E.translationFromLatinClosed
    (And.intro E.commercialArithmeticClosed
      (And.intro E.problemClassificationClosed E.influenceOnEuropeanMathClosed))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse