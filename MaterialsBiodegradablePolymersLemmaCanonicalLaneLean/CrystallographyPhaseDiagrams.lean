import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure CrystallographyPackage where
  crystalStructure : Type u
  latticeParameters : Type v
  unitCellVolume : Prop
  bravaisLatticeClassified : Prop
  phaseTransitionTemperature : Prop
  polymorphIdentification : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  unitCellVolumeClosed : C.unitCellVolume
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  phaseTransitionTemperatureClosed : C.phaseTransitionTemperature
  polymorphIdentificationClosed : C.polymorphIdentification

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.unitCellVolume ∧ C.bravaisLatticeClassified ∧ C.phaseTransitionTemperature ∧ C.polymorphIdentification

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.unitCellVolumeClosed (And.intro E.bravaisLatticeClassifiedClosed (And.intro E.phaseTransitionTemperatureClosed E.polymorphIdentificationClosed))

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse