import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure DegradationKineticsPackage where
  hydrolysisRateConstant : Prop
  enzymeCatalysisModel : Prop
  molecularWeightDecay : Prop
  degradationProductProfile : Prop
  pHAndTemperatureDependence : Prop

structure DegradationKineticsEvidence (D : DegradationKineticsPackage) where
  hydrolysisRateConstantClosed : D.hydrolysisRateConstant
  enzymeCatalysisModelClosed : D.enzymeCatalysisModel
  molecularWeightDecayClosed : D.molecularWeightDecay
  degradationProductProfileClosed : D.degradationProductProfile
  pHAndTemperatureDependenceClosed : D.pHAndTemperatureDependence

def DegradationKineticsClosed (D : DegradationKineticsPackage) : Prop :=
  D.hydrolysisRateConstant ∧ D.enzymeCatalysisModel ∧ D.molecularWeightDecay ∧ D.degradationProductProfile ∧ D.pHAndTemperatureDependence

theorem degradation_kinetics_closed_from_evidence (D : DegradationKineticsPackage) (E : DegradationKineticsEvidence D) : DegradationKineticsClosed D := by
  exact And.intro E.hydrolysisRateConstantClosed (And.intro E.enzymeCatalysisModelClosed (And.intro E.molecularWeightDecayClosed (And.intro E.degradationProductProfileClosed E.pHAndTemperatureDependenceClosed)))

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse