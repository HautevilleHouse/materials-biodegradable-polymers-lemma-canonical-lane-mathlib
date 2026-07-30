import HautevilleHouse.MaterialsBiodegradablePolymersLemmaCanonicalLaneLean.DegradationKinetics

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure MechanicalPropertyEvolutionPackage where
  tensileStrengthDecay : Prop
  elasticModulusEvolution : Prop
  strainAtBreak : Prop
  timeToFailureModel : Prop

structure MechanicalPropertyEvolutionEvidence (M : MechanicalPropertyEvolutionPackage) where
  tensileStrengthDecayClosed : M.tensileStrengthDecay
  elasticModulusEvolutionClosed : M.elasticModulusEvolution
  strainAtBreakClosed : M.strainAtBreak
  timeToFailureModelClosed : M.timeToFailureModel

def MechanicalPropertyEvolutionClosed (M : MechanicalPropertyEvolutionPackage) : Prop :=
  M.tensileStrengthDecay ∧ M.elasticModulusEvolution ∧ M.strainAtBreak ∧ M.timeToFailureModel

theorem mechanical_property_evolution_closed_from_evidence
    (M : MechanicalPropertyEvolutionPackage) (E : MechanicalPropertyEvolutionEvidence M) :
    MechanicalPropertyEvolutionClosed M := by
  exact And.intro E.tensileStrengthDecayClosed
    (And.intro E.elasticModulusEvolutionClosed
      (And.intro E.strainAtBreakClosed E.timeToFailureModelClosed))

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse