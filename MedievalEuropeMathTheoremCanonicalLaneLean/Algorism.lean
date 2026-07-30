import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure AlgorismPackage where
  hinduArabicDigitsAdopted : Prop
  decimalPlaceValue : Prop
  zeroUsed : Prop
  computationRules : Prop
  latinManuscript : Prop

structure AlgorismEvidence (A : AlgorismPackage) where
  hinduArabicDigitsAdoptedClosed : A.hinduArabicDigitsAdopted
  decimalPlaceValueClosed : A.decimalPlaceValue
  zeroUsedClosed : A.zeroUsed

def AlgorismClosed (A : AlgorismPackage) : Prop :=
  A.hinduArabicDigitsAdopted ∧ A.decimalPlaceValue ∧ A.zeroUsed

theorem algorism_closed_from_evidence (A : AlgorismPackage) (E : AlgorismEvidence A) :
    AlgorismClosed A := by
  exact And.intro E.hinduArabicDigitsAdoptedClosed
    (And.intro E.decimalPlaceValueClosed E.zeroUsedClosed)

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse