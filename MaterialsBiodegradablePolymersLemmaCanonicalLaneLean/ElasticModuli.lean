import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure ElasticModuliPackage where
  youngModulus : Prop
  poissonRatio : Prop
  shearModulus : Prop
  bulkModulus : Prop
  storageModulus : Prop
  lossModulus : Prop

structure ElasticModuliEvidence (E : ElasticModuliPackage) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus
  storageModulusClosed : E.storageModulus
  lossModulusClosed : E.lossModulus

def ElasticModuliClosed (E : ElasticModuliPackage) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.shearModulus ∧ E.bulkModulus ∧ E.storageModulus ∧ E.lossModulus

theorem elastic_moduli_closed_from_evidence (E : ElasticModuliPackage)
    (Ev : ElasticModuliEvidence E) : ElasticModuliClosed E := by
  exact And.intro Ev.youngModulusClosed (And.intro Ev.poissonRatioClosed
    (And.intro Ev.shearModulusClosed (And.intro Ev.bulkModulusClosed
      (And.intro Ev.storageModulusClosed Ev.lossModulusClosed))))

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse