import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure FractureToughnessPackage where
  criticalStressIntensity : Prop
  fractureEnergy : Prop
  crackPropagation : Prop
  planeStrainFracture : Prop
  ductileBrittleTransition : Prop

structure FractureToughnessEvidence (F : FractureToughnessPackage) where
  criticalStressIntensityClosed : F.criticalStressIntensity
  fractureEnergyClosed : F.fractureEnergy
  crackPropagationClosed : F.crackPropagation
  planeStrainFractureClosed : F.planeStrainFracture
  ductileBrittleTransitionClosed : F.ductileBrittleTransition

def FractureToughnessClosed (F : FractureToughnessPackage) : Prop :=
  F.criticalStressIntensity ∧ F.fractureEnergy ∧ F.crackPropagation ∧ F.planeStrainFracture ∧ F.ductileBrittleTransition

theorem fracture_toughness_closed_from_evidence (F : FractureToughnessPackage)
    (E : FractureToughnessEvidence F) : FractureToughnessClosed F := by
  exact And.intro E.criticalStressIntensityClosed (And.intro E.fractureEnergyClosed
    (And.intro E.crackPropagationClosed (And.intro E.planeStrainFractureClosed E.ductileBrittleTransitionClosed)))

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse