import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure FracturePackage where
  fractureToughness : Type u
  crackPropagation : Type v
  ductileBrittleTransition : Prop
  fatigueLife : Prop
  environmentalStressCracking : Prop
  ductileBrittleTransitionTerm : ductileBrittleTransition
  fatigueLifeTerm : fatigueLife
  environmentalStressCrackingTerm : environmentalStressCracking

structure FractureEvidence (F : FracturePackage) where
  ductileBrittleTransitionClosed : F.ductileBrittleTransition
  fatigueLifeClosed : F.fatigueLife
  environmentalStressCrackingClosed : F.environmentalStressCracking

def FractureClosed (F : FracturePackage) : Prop :=
  F.ductileBrittleTransition ∧ F.fatigueLife ∧ F.environmentalStressCracking

theorem fracture_closed_from_evidence (F : FracturePackage) (E : FractureEvidence F) :
    FractureClosed F := by
  exact And.intro E.ductileBrittleTransitionClosed (And.intro E.fatigueLifeClosed E.environmentalStressCrackingClosed)

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse