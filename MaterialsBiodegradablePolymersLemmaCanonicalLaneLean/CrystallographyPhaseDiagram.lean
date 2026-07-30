import HautevilleHouse.MaterialsBiodegradablePolymersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure CrystallographyPhaseDiagramPackage where
  polymerType : Type
  temperatureRange : Type
  compositionRange : Type
  crystalStructureIdentified : Prop
  phaseBoundariesMapped : Prop
  crystallinityFraction : Prop

structure CrystallographyPhaseDiagramEvidence (P : CrystallographyPhaseDiagramPackage) where
  crystalStructureIdentifiedClosed : P.crystalStructureIdentified
  phaseBoundariesMappedClosed : P.phaseBoundariesMapped
  crystallinityFractionClosed : P.crystallinityFraction

def CrystallographyPhaseDiagramClosed (P : CrystallographyPhaseDiagramPackage) : Prop :=
  P.crystalStructureIdentified ∧ P.phaseBoundariesMapped ∧ P.crystallinityFraction

theorem crystallography_phase_diagram_closed_from_evidence
    (P : CrystallographyPhaseDiagramPackage) (E : CrystallographyPhaseDiagramEvidence P) :
    CrystallographyPhaseDiagramClosed P := by
  exact And.intro E.crystalStructureIdentifiedClosed
    (And.intro E.phaseBoundariesMappedClosed E.crystallinityFractionClosed)

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse