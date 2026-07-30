import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure MertonMeanSpeedTheoremPackage where
  uniformAcceleration : Prop
  meanSpeedEqualInstantaneousSpeed : Prop
  distanceFormula : Prop
  oxfordCalculators : Prop
  mertonCollegeManuscript : Prop

structure MertonMeanSpeedTheoremEvidence (M : MertonMeanSpeedTheoremPackage) where
  uniformAccelerationClosed : M.uniformAcceleration
  meanSpeedEqualInstantaneousSpeedClosed : M.meanSpeedEqualInstantaneousSpeed
  distanceFormulaClosed : M.distanceFormula

def MertonMeanSpeedTheoremClosed (M : MertonMeanSpeedTheoremPackage) : Prop :=
  M.uniformAcceleration ∧ M.meanSpeedEqualInstantaneousSpeed ∧ M.distanceFormula

theorem merton_mean_speed_theorem_closed_from_evidence (M : MertonMeanSpeedTheoremPackage) (E : MertonMeanSpeedTheoremEvidence M) :
    MertonMeanSpeedTheoremClosed M := by
  exact And.intro E.uniformAccelerationClosed
    (And.intro E.meanSpeedEqualInstantaneousSpeedClosed E.distanceFormulaClosed)

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse