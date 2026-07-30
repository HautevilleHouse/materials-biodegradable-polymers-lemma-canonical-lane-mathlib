import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure ElasticityPackage where
  youngModulus : Prop
  fractureToughness : Prop
  stressStrainCurve : Prop
  viscoelasticRelaxation : Prop
  degradationTimeEffect : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  youngModulusClosed : E.youngModulus
  fractureToughnessClosed : E.fractureToughness
  stressStrainCurveClosed : E.stressStrainCurve
  viscoelasticRelaxationClosed : E.viscoelasticRelaxation
  degradationTimeEffectClosed : E.degradationTimeEffect

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngModulus ∧ E.fractureToughness ∧ E.stressStrainCurve ∧ E.viscoelasticRelaxation ∧ E.degradationTimeEffect

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.youngModulusClosed (And.intro Ev.fractureToughnessClosed (And.intro Ev.stressStrainCurveClosed (And.intro Ev.viscoelasticRelaxationClosed Ev.degradationTimeEffectClosed)))

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse