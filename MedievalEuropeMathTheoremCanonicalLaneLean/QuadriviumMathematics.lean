import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure QuadriviumMathematicsPackage where
  arithmeticPropaedeutic : Prop
  geometricPropaedeutic : Prop
  musicPropaedeutic : Prop
  astronomicPropaedeutic : Prop

structure QuadriviumMathematicsEvidence (Q : QuadriviumMathematicsPackage) where
  arithmeticPropaedeuticClosed : Q.arithmeticPropaedeutic
  geometricPropaedeuticClosed : Q.geometricPropaedeutic
  musicPropaedeuticClosed : Q.musicPropaedeutic
  astronomicPropaedeuticClosed : Q.astronomicPropaedeutic

def QuadriviumMathematicsClosed (Q : QuadriviumMathematicsPackage) : Prop :=
  Q.arithmeticPropaedeutic ∧ Q.geometricPropaedeutic ∧
  Q.musicPropaedeutic ∧ Q.astronomicPropaedeutic

theorem quadrivium_mathematics_closed_from_evidence (Q : QuadriviumMathematicsPackage)
    (E : QuadriviumMathematicsEvidence Q) : QuadriviumMathematicsClosed Q := by
  exact And.intro E.arithmeticPropaedeuticClosed
    (And.intro E.geometricPropaedeuticClosed
      (And.intro E.musicPropaedeuticClosed E.astronomicPropaedeuticClosed))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse