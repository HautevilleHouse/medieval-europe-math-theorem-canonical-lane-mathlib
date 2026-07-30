import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedievalEuropeMathTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MedievalEuropeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MedievalEuropeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse