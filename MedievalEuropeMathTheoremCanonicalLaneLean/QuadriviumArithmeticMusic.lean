import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure BoethianArithmeticPackage where
  numberTheory : Prop
  ratioProportions : Prop
  perfectNumbers : Prop

structure PythagoreanMusicTheory where
  consonanceRatios : Prop
  tetrachordStructure : Prop
  musicaMundana : Prop

def QuadriviumClosed (A : BoethianArithmeticPackage) (M : PythagoreanMusicTheory) : Prop :=
  A.numberTheory ∧ A.ratioProportions ∧ A.perfectNumbers ∧
  M.consonanceRatios ∧ M.tetrachordStructure ∧ M.musicaMundana

theorem quadrivium_closed_from_evidence (A : BoethianArithmeticPackage) (M : PythagoreanMusicTheory)
    (hAN : A.numberTheory) (hAR : A.ratioProportions) (hAP : A.perfectNumbers)
    (hMC : M.consonanceRatios) (hMT : M.tetrachordStructure) (hMM : M.musicaMundana) :
    QuadriviumClosed A M := by
  exact And.intro hAN (And.intro hAR (And.intro hAP (And.intro hMC (And.intro hMT hMM))))

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse
