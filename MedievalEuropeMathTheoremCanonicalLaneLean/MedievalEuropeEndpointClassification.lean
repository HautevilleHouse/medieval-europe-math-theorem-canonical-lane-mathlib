import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure EpochClassificationPackage where
  targetManuscript : Type u
  manuscriptTradition : Prop
  textualCriticalReconstruction : Prop
  historicalConsensus : Prop

structure EpochClassificationEvidence (E : EpochClassificationPackage) where
  manuscriptTraditionClosed : E.manuscriptTradition
  textualCriticalReconstructionClosed : E.textualCriticalReconstruction
  historicalConsensusClosed : E.historicalConsensus

def EpochClassificationClosed (E : EpochClassificationPackage) : Prop :=
  E.manuscriptTradition ∧ E.textualCriticalReconstruction ∧ E.historicalConsensus

theorem epoch_classification_closed_from_evidence (E : EpochClassificationPackage)
    (Ev : EpochClassificationEvidence E) : EpochClassificationClosed E := by
  exact And.intro Ev.manuscriptTraditionClosed
    (And.intro Ev.textualCriticalReconstructionClosed Ev.historicalConsensusClosed)

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse