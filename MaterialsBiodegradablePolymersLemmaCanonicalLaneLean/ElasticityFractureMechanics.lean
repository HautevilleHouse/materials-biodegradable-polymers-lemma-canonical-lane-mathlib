import HautevilleHouse.MaterialsBiodegradablePolymersLemmaCanonicalLaneLean.CrystallographyPhaseDiagram

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure ElasticityFractureMechanicsPackage where
  elasticModulus : Type
  fractureToughness : Type
  stressStrainCurve : Prop
  crackPropagationModel : Prop
  degradationRateCoupling : Prop

structure ElasticityFractureMechanicsEvidence (E : ElasticityFractureMechanicsPackage) where
  stressStrainCurveClosed : E.stressStrainCurve
  crackPropagationModelClosed : E.crackPropagationModel
  degradationRateCouplingClosed : E.degradationRateCoupling

def ElasticityFractureMechanicsClosed (E : ElasticityFractureMechanicsPackage) : Prop :=
  E.stressStrainCurve ∧ E.crackPropagationModel ∧ E.degradationRateCoupling

theorem elasticity_fracture_mechanics_closed_from_evidence
    (E : ElasticityFractureMechanicsPackage) (Ev : ElasticityFractureMechanicsEvidence E) :
    ElasticityFractureMechanicsClosed E := by
  exact And.intro Ev.stressStrainCurveClosed
    (And.intro Ev.crackPropagationModelClosed Ev.degradationRateCouplingClosed)

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse