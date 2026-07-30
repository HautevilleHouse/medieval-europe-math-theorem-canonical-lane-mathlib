import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure OresmeVelocityPackage where
  uniformDiffusio : Prop
  difformDiffusio : Prop
  meanSpeedTheorem : Prop
  graphicalRepresentation : Prop

structure MertonCollegeCalculus where
  intensionOfForms : Prop
  remissionOfForms : Prop
  latitudeOfForms : Prop

def OresmeProportionalityClosed (O : OresmeVelocityPackage) (M : MertonCollegeCalculus) : Prop :=
  O.uniformDiffusio ∧ O.difformDiffusio ∧ O.meanSpeedTheorem ∧ O.graphicalRepresentation ∧
  M.intensionOfForms ∧ M.remissionOfForms ∧ M.latitudeOfForms

theorem oresme_proportionality_closed_from_evidence (O : OresmeVelocityPackage) (M : MertonCollegeCalculus)
    (hOU : O.uniformDiffusio) (hOD : O.difformDiffusio) (hOM : O.meanSpeedTheorem) (hOG : O.graphicalRepresentation)
    (hMI : M.intensionOfForms) (hMR : M.remissionOfForms) (hML : M.latitudeOfForms) :
    OresmeProportionalityClosed O M := by
  exact And.intro hOU (And.intro hOD (And.intro hOM (And.intro hOG (And.intro hMI (And.intro hMR hML)))))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse
