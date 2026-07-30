import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure RomanSurveyingGeometryPackage where
  agrimensores : Type u
  centuriationGrid : Prop
  boundaryDisputeResolution : Prop
  areaComputation : Prop
  triangulationMethod : Prop

structure RomanSurveyingGeometryEvidence (R : RomanSurveyingGeometryPackage) where
  centuriationGridClosed : R.centuriationGrid
  boundaryDisputeResolutionClosed : R.boundaryDisputeResolution
  areaComputationClosed : R.areaComputation
  triangulationMethodClosed : R.triangulationMethod

def RomanSurveyingGeometryClosed (R : RomanSurveyingGeometryPackage) : Prop :=
  R.centuriationGrid ∧ R.boundaryDisputeResolution ∧ R.areaComputation ∧ R.triangulationMethod

theorem roman_surveying_geometry_closed_from_evidence
    (R : RomanSurveyingGeometryPackage)
    (E : RomanSurveyingGeometryEvidence R) : RomanSurveyingGeometryClosed R := by
  exact And.intro E.centuriationGridClosed
    (And.intro E.boundaryDisputeResolutionClosed
      (And.intro E.areaComputationClosed E.triangulationMethodClosed))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse