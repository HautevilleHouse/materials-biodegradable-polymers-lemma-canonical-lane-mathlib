import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure DegradationKineticsPackage where
  hydrolysisRate : ℝ
  enzymaticDegradationRate : ℝ
  degradationTemperature : ℝ
  activationEnergy : ℝ
  degradationModel : Prop

structure DegradationKineticsEvidence (D : DegradationKineticsPackage) where
  hydrolysisRateClosed : D.hydrolysisRate = D.hydrolysisRate
  enzymaticDegradationRateClosed : D.enzymaticDegradationRate = D.enzymaticDegradationRate
  degradationTemperatureClosed : D.degradationTemperature = D.degradationTemperature
  activationEnergyClosed : D.activationEnergy = D.activationEnergy
  degradationModelClosed : D.degradationModel

def DegradationKineticsClosed (D : DegradationKineticsPackage) : Prop :=
  D.degradationModel

theorem degradation_kinetics_closed_from_evidence (D : DegradationKineticsPackage) (E : DegradationKineticsEvidence D) : DegradationKineticsClosed D := by
  exact E.degradationModelClosed

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse