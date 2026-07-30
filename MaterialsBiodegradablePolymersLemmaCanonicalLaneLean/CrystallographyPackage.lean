import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure CrystallographyPackage where
  unitCell : Type u
  latticeParameters : Type v
  bravaisLatticeType : String
  spdf : String
  chainPacking : Prop
  crystalPhase : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  unitCellClosed : C.unitCell = C.unitCell
  latticeParametersClosed : C.latticeParameters = C.latticeParameters
  bravaisLatticeTypeClosed : C.bravaisLatticeType = C.bravaisLatticeType
  spdfClosed : C.spdf = C.spdf
  chainPackingClosed : C.chainPacking
  crystalPhaseClosed : C.crystalPhase

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.chainPacking ∧ C.crystalPhase

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.chainPackingClosed E.crystalPhaseClosed

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse