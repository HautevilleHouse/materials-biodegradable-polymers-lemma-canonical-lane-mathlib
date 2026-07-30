import HautevilleHouse.MaterialsBiodegradablePolymersLemmaCanonicalLaneLean.MechanicalPropertyEvolution

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure BiocompatibilityInterfacePackage where
  cellResponseModel : Prop
  inflammatoryResponse : Prop
  toxicityProfile : Prop
  bioresorptionRate : Prop

structure BiocompatibilityInterfaceEvidence (B : BiocompatibilityInterfacePackage) where
  cellResponseModelClosed : B.cellResponseModel
  inflammatoryResponseClosed : B.inflammatoryResponse
  toxicityProfileClosed : B.toxicityProfile
  bioresorptionRateClosed : B.bioresorptionRate

def BiocompatibilityInterfaceClosed (B : BiocompatibilityInterfacePackage) : Prop :=
  B.cellResponseModel ∧ B.inflammatoryResponse ∧ B.toxicityProfile ∧ B.bioresorptionRate

theorem biocompatibility_interface_closed_from_evidence
    (B : BiocompatibilityInterfacePackage) (E : BiocompatibilityInterfaceEvidence B) :
    BiocompatibilityInterfaceClosed B := by
  exact And.intro E.cellResponseModelClosed
    (And.intro E.inflammatoryResponseClosed
      (And.intro E.toxicityProfileClosed E.bioresorptionRateClosed))

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse