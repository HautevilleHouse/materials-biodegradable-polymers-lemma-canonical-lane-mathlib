import HautevilleHouse.MaterialsBiodegradablePolymersLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : BiodegradablePolymerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiodegradablePolymerWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse