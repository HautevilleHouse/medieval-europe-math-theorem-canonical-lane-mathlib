import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure CuriaRegisPackage where
  regnalYear : Nat
  jurisdiction : String
  charterCount : Nat
  sealWitnessed : Prop
  latinTextExtant : Prop

structure CuriaRegisEvidence (C : CuriaRegisPackage) where
  sealWitnessedClosed : C.sealWitnessed
  latinTextExtantClosed : C.latinTextExtant

def CuriaRegisClosed (C : CuriaRegisPackage) : Prop :=
  C.sealWitnessed ∧ C.latinTextExtant

theorem curia_regis_closed_from_evidence (C : CuriaRegisPackage) (E : CuriaRegisEvidence C) :
    CuriaRegisClosed C := by
  exact And.intro E.sealWitnessedClosed E.latinTextExtantClosed

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse