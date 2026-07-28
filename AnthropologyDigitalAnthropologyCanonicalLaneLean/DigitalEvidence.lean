import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure DigitalEvidence where
  source : String
  timestamp : String
  contentHash : String
  authenticityVerified : Prop

def DigitalEvidenceClosed (E : DigitalEvidence) : Prop :=
  E.authenticityVerified

structure EvidenceChain where
  chain : List DigitalEvidence
  consistency : Prop

def EvidenceChainClosed (C : EvidenceChain) : Prop :=
  C.consistency ∧ (∀ e ∈ C.chain, DigitalEvidenceClosed e)

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse