import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

structure BiocompatibilityPackage where
  cytotoxicityTest : ℝ
  inflammatoryResponse : Prop
  cellAdhesion : Prop
  implantIntegration : Prop

structure BiocompatibilityEvidence (B : BiocompatibilityPackage) where
  cytotoxicityTestClosed : B.cytotoxicityTest = B.cytotoxicityTest
  inflammatoryResponseClosed : B.inflammatoryResponse
  cellAdhesionClosed : B.cellAdhesion
  implantIntegrationClosed : B.implantIntegration

def BiocompatibilityClosed (B : BiocompatibilityPackage) : Prop :=
  B.inflammatoryResponse ∧ B.cellAdhesion ∧ B.implantIntegration

theorem biocompatibility_closed_from_evidence (B : BiocompatibilityPackage) (E : BiocompatibilityEvidence B) : BiocompatibilityClosed B := by
  exact And.intro E.inflammatoryResponseClosed (And.intro E.cellAdhesionClosed E.implantIntegrationClosed)

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse