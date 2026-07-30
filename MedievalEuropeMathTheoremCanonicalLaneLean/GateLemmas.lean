import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedievalEuropeMathTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse