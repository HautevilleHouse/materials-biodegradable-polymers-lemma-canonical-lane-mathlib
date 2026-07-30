import HautevilleHouse.MaterialsBiodegradablePolymersLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiodegradablePolymerWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse