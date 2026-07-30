import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedievalEuropeMathTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MedievalEuropeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse