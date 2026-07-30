import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure PolymerCompositionPackage where
  monomerRatio : Type u
  molecularWeightDistribution : Type v
  copolymerSequence : Prop
  branchingDegree : Prop
  glassTransitionTemp : Prop
  copolymerSequenceTerm : copolymerSequence
  branchingDegreeTerm : branchingDegree
  glassTransitionTempTerm : glassTransitionTemp

structure PolymerCompositionEvidence (P : PolymerCompositionPackage) where
  copolymerSequenceClosed : P.copolymerSequence
  branchingDegreeClosed : P.branchingDegree
  glassTransitionTempClosed : P.glassTransitionTemp

def PolymerCompositionClosed (P : PolymerCompositionPackage) : Prop :=
  P.copolymerSequence ∧ P.branchingDegree ∧ P.glassTransitionTemp

theorem polymer_composition_closed_from_evidence (P : PolymerCompositionPackage) (E : PolymerCompositionEvidence P) :
    PolymerCompositionClosed P := by
  exact And.intro E.copolymerSequenceClosed (And.intro E.branchingDegreeClosed E.glassTransitionTempClosed)

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse