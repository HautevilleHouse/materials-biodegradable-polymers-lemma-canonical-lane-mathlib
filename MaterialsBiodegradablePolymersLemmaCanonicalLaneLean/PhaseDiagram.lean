import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Prop
  compositionRange : Prop
  miscibilityGap : Prop
  binodalCurve : Prop
  spinodalCurve : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  compositionRangeClosed : P.compositionRange
  miscibilityGapClosed : P.miscibilityGap
  binodalCurveClosed : P.binodalCurve
  spinodalCurveClosed : P.spinodalCurve

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.compositionRange ∧ P.miscibilityGap ∧ P.binodalCurve ∧ P.spinodalCurve

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed (And.intro E.compositionRangeClosed
    (And.intro E.miscibilityGapClosed (And.intro E.binodalCurveClosed E.spinodalCurveClosed)))

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse