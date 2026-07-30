import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure AlgorismPackage where
  hinduArabicNumerals : Bool
  placeValueSystem : Bool
  zeroAsNumber : Bool
  decimalAlgorithms : Bool

structure AlgorismEvidence (A : AlgorismPackage) where
  hinduArabicNumeralsClosed : A.hinduArabicNumerals
  placeValueSystemClosed : A.placeValueSystem
  zeroAsNumberClosed : A.zeroAsNumber
  decimalAlgorithmsClosed : A.decimalAlgorithms

def AlgorismClosed (A : AlgorismPackage) : Prop :=
  A.hinduArabicNumerals ∧ A.placeValueSystem ∧ A.zeroAsNumber ∧ A.decimalAlgorithms

theorem algorism_closed_from_evidence (A : AlgorismPackage) (E : AlgorismEvidence A) :
    AlgorismClosed A := by
  exact And.intro E.hinduArabicNumeralsClosed
    (And.intro E.placeValueSystemClosed
      (And.intro E.zeroAsNumberClosed E.decimalAlgorithmsClosed))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse