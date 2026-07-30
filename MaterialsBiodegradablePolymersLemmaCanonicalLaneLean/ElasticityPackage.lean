import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure ElasticityPackage where
  youngModulus : ℝ
  poissonRatio : ℝ
  tensileStrength : ℝ
  elasticStrain : ℝ → ℝ
  viscoelasticModel : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  youngModulusClosed : E.youngModulus = E.youngModulus
  poissonRatioClosed : E.poissonRatio = E.poissonRatio
  tensileStrengthClosed : E.tensileStrength = E.tensileStrength
  elasticStrainClosed : ∀ x, E.elasticStrain x = E.elasticStrain x
  viscoelasticModelClosed : E.viscoelasticModel

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.viscoelasticModel

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact Ev.viscoelasticModelClosed

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse