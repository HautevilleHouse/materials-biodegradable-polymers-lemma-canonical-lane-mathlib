import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsBiodegradablePolymersLemmaCanonicalLaneLean.CrystallographyPhaseDiagrams
import HautevilleHouse.MaterialsBiodegradablePolymersLemmaCanonicalLaneLean.PolymerDegradationKinetics
import HautevilleHouse.MaterialsBiodegradablePolymersLemmaCanonicalLaneLean.MechanicalPropertyElasticity

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrystallographyClosed (crystallographyPackageFromA A) ∧
  DegradationKineticsClosed (degradationKineticsPackageFromA A) ∧
  ElasticityClosed (elasticityPackageFromA A)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBiodegradablePolymersClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biodegradable_polymers_endgame (A : AdmissibleClass) : ConstrainedBiodegradablePolymersClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse