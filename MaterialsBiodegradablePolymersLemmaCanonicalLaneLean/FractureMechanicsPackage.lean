import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  fractureToughness : ℝ
  crackGrowthRate : ℝ → ℝ
  stressIntensityFactor : ℝ → ℝ
  brittleDuctileTransition : Prop
  fatigueModel : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness = F.fractureToughness
  crackGrowthRateClosed : ∀ t, F.crackGrowthRate t = F.crackGrowthRate t
  stressIntensityFactorClosed : ∀ t, F.stressIntensityFactor t = F.stressIntensityFactor t
  brittleDuctileTransitionClosed : F.brittleDuctileTransition
  fatigueModelClosed : F.fatigueModel

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.brittleDuctileTransition ∧ F.fatigueModel

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (Ev : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro Ev.brittleDuctileTransitionClosed Ev.fatigueModelClosed

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse