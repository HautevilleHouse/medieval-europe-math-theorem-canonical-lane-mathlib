import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

def ConstrainedMedievalEuropeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medieval_europe_endgame (A : AdmissibleClass) :
    ConstrainedMedievalEuropeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse