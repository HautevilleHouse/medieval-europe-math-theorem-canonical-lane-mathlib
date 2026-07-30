import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MedievalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MedievalAdmittedObject where
  space : MedievalSpace
  manuscriptEvidence : Prop
  scribalTransmission : Prop
  dioceseCanonical : Prop
  conclusion : manuscriptEvidence ∧ scribalTransmission ∧ dioceseCanonical

structure MedievalEndgameState where
  object : MedievalAdmittedObject

def MedievalWitnessClosed (O : MedievalAdmittedObject) : Prop :=
  O.manuscriptEvidence ∧ O.scribalTransmission ∧ O.dioceseCanonical

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse