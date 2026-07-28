import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure DataEthicsPackage where
  informedConsent : Prop
  privacyProtection : Prop
  dataSovereignty : Prop
  ethicalReview : Prop
  algorithmicAccountability : Prop

structure DataEthicsEvidence (P : DataEthicsPackage) where
  informedConsentClosed : P.informedConsent
  privacyProtectionClosed : P.privacyProtection
  dataSovereigntyClosed : P.dataSovereignty
  ethicalReviewClosed : P.ethicalReview
  algorithmicAccountabilityClosed : P.algorithmicAccountability

def DataEthicsClosed (P : DataEthicsPackage) : Prop :=
  P.informedConsent ∧ P.privacyProtection ∧ P.dataSovereignty ∧ P.ethicalReview ∧ P.algorithmicAccountability

theorem data_ethics_closed_from_evidence (P : DataEthicsPackage)
    (E : DataEthicsEvidence P) : DataEthicsClosed P := by
  exact And.intro E.informedConsentClosed
    (And.intro E.privacyProtectionClosed
      (And.intro E.dataSovereigntyClosed
        (And.intro E.ethicalReviewClosed E.algorithmicAccountabilityClosed)))

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse