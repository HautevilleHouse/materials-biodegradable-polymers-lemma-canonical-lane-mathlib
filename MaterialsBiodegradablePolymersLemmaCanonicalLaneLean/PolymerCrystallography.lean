import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure PolymerCrystallographyPackage where
  unitCell : Type
  lamellarThickness : Prop
  crystallineFraction : Prop
  spheruliteRadius : Prop
  growthRate : Prop

structure PolymerCrystallographyEvidence (P : PolymerCrystallographyPackage) where
  lamellarThicknessClosed : P.lamellarThickness
  crystallineFractionClosed : P.crystallineFraction
  spheruliteRadiusClosed : P.spheruliteRadius
  growthRateClosed : P.growthRate

def PolymerCrystallographyClosed (P : PolymerCrystallographyPackage) : Prop :=
  P.lamellarThickness ∧ P.crystallineFraction ∧ P.spheruliteRadius ∧ P.growthRate

theorem polymer_crystallography_closed_from_evidence (P : PolymerCrystallographyPackage)
    (E : PolymerCrystallographyEvidence P) : PolymerCrystallographyClosed P := by
  exact And.intro E.lamellarThicknessClosed (And.intro E.crystallineFractionClosed
    (And.intro E.spheruliteRadiusClosed E.growthRateClosed))

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse