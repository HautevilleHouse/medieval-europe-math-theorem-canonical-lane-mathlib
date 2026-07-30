import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure ScholasticLogicPackage where
  termLogic : Prop
  propositionalLogic : Prop
  syllogistic : Prop
  suppositionTheory : Prop

structure ScholasticLogicEvidence (S : ScholasticLogicPackage) where
  termLogicClosed : S.termLogic
  propositionalLogicClosed : S.propositionalLogic
  syllogisticClosed : S.syllogistic
  suppositionTheoryClosed : S.suppositionTheory

def ScholasticLogicClosed (S : ScholasticLogicPackage) : Prop :=
  S.termLogic ∧ S.propositionalLogic ∧ S.syllogistic ∧ S.suppositionTheory

theorem scholastic_logic_closed_from_evidence (S : ScholasticLogicPackage)
    (E : ScholasticLogicEvidence S) : ScholasticLogicClosed S := by
  exact And.intro E.termLogicClosed
    (And.intro E.propositionalLogicClosed
      (And.intro E.syllogisticClosed E.suppositionTheoryClosed))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse