import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedievalEuropeMathTheoremCanonicalLaneLean

structure OresmeGraphPackage where
  latitudeOfForms : Type u
  longitude : Type v
  intensityAtPoint : Type w
  graphUsed : Prop
  tractatusDeConfigurationibus : Prop

structure OresmeGraphEvidence (O : OresmeGraphPackage) where
  graphUsedClosed : O.graphUsed
  tractatusDeConfigurationibusClosed : O.tractatusDeConfigurationibus

def OresmeGraphClosed (O : OresmeGraphPackage) : Prop :=
  O.graphUsed ∧ O.tractatusDeConfigurationibus

theorem oresme_graph_closed_from_evidence (O : OresmeGraphPackage) (E : OresmeGraphEvidence O) :
    OresmeGraphClosed O := by
  exact And.intro E.graphUsedClosed E.tractatusDeConfigurationibusClosed

end MedievalEuropeMathTheoremCanonicalLaneLean
end HautevilleHouse