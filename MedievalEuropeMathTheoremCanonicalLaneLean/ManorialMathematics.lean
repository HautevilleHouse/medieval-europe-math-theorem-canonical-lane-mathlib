import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure ManorialMathematicsPackage where
  fieldSystem : Type u
  cropRotation : Prop
  landTenure : Prop
  productivityModel : Prop
  seasonalConstraints : Prop

structure ManorialMathematicsEvidence (M : ManorialMathematicsPackage) where
  cropRotationClosed : M.cropRotation
  landTenureClosed : M.landTenure
  productivityModelClosed : M.productivityModel
  seasonalConstraintsClosed : M.seasonalConstraints

def ManorialMathematicsClosed (M : ManorialMathematicsPackage) : Prop :=
  M.cropRotation ∧ M.landTenure ∧ M.productivityModel ∧ M.seasonalConstraints

theorem manorial_math_closed_from_evidence (M : ManorialMathematicsPackage)
    (E : ManorialMathematicsEvidence M) : ManorialMathematicsClosed M := by
  exact And.intro E.cropRotationClosed
    (And.intro E.landTenureClosed
      (And.intro E.productivityModelClosed E.seasonalConstraintsClosed))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse