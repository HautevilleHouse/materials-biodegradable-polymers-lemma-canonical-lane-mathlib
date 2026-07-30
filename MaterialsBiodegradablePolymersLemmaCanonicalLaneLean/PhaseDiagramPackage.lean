import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  compositionRange : Type v
  miscibilityGap : Prop
  crystallineAmorphousTransition : Prop
  phaseBoundaries : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange = P.temperatureRange
  compositionRangeClosed : P.compositionRange = P.compositionRange
  miscibilityGapClosed : P.miscibilityGap
  crystallineAmorphousTransitionClosed : P.crystallineAmorphousTransition
  phaseBoundariesClosed : P.phaseBoundaries

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.miscibilityGap ∧ P.crystallineAmorphousTransition ∧ P.phaseBoundaries

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.miscibilityGapClosed (And.intro E.crystallineAmorphousTransitionClosed E.phaseBoundariesClosed)

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse