import HautevilleHouse.MaterialsBiodegradablePolymersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure DegradationKineticsPackage where
  hydrolysisRate : Type
  enzymaticDegradation : Type
  pHDependence : Prop
  temperatureDependence : Prop
  molecularWeightLoss : Prop

structure DegradationKineticsEvidence (D : DegradationKineticsPackage) where
  pHDependenceClosed : D.pHDependence
  temperatureDependenceClosed : D.temperatureDependence
  molecularWeightLossClosed : D.molecularWeightLoss

def DegradationKineticsClosed (D : DegradationKineticsPackage) : Prop :=
  D.pHDependence ∧ D.temperatureDependence ∧ D.molecularWeightLoss

theorem degradation_kinetics_closed_from_evidence
    (D : DegradationKineticsPackage) (E : DegradationKineticsEvidence D) :
    DegradationKineticsClosed D := by
  exact And.intro E.pHDependenceClosed
    (And.intro E.temperatureDependenceClosed E.molecularWeightLossClosed)

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse