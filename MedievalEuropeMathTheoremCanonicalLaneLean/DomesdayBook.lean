import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure DomesdayBookPackage where
  folioCount : Nat
  hundredList : List String
  ploughlandTotal : Nat
  surveyComplete : Prop
  manuscriptExtant : Prop

structure DomesdayBookEvidence (D : DomesdayBookPackage) where
  surveyCompleteClosed : D.surveyComplete
  manuscriptExtantClosed : D.manuscriptExtant

def DomesdayBookClosed (D : DomesdayBookPackage) : Prop :=
  D.surveyComplete ∧ D.manuscriptExtant

theorem domesday_book_closed_from_evidence (D : DomesdayBookPackage) (E : DomesdayBookEvidence D) :
    DomesdayBookClosed D := by
  exact And.intro E.surveyCompleteClosed E.manuscriptExtantClosed

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse