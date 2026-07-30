import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

def ConstrainedMedievalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medieval_endgame (A : AdmissibleClass) :
    ConstrainedMedievalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse