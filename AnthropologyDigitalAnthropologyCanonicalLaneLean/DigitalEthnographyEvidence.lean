import HautevilleHouse.AnthropologyDigitalAnthropologyCanonicalLaneLean.DigitalFieldStudyPackage

/-!
# Digital Ethnography Evidence Package
-/

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure DigitalEthnographyEvidencePackage (S : SocialNetworkStructure) (D : DigitalFieldStudyPackage S) where
  fieldNotesCoded : Prop
  participantInterviewsRecorded : Prop
  algorithmicCultureDocumented : Prop
  digitalArtifactCollected : Prop

structure DigitalEthnographyEvidence (S : SocialNetworkStructure) (D : DigitalFieldStudyPackage S) (E : DigitalEthnographyEvidencePackage S D) where
  fieldNotesCodedClosed : E.fieldNotesCoded
  participantInterviewsRecordedClosed : E.participantInterviewsRecorded
  algorithmicCultureDocumentedClosed : E.algorithmicCultureDocumented
  digitalArtifactCollectedClosed : E.digitalArtifactCollected

def DigitalEthnographyClosed (S : SocialNetworkStructure) (D : DigitalFieldStudyPackage S) (E : DigitalEthnographyEvidencePackage S D) : Prop :=
  E.fieldNotesCoded ∧ E.participantInterviewsRecorded ∧ E.algorithmicCultureDocumented ∧ E.digitalArtifactCollected

theorem digital_ethnography_closed_from_evidence
    (S : SocialNetworkStructure) (D : DigitalFieldStudyPackage S) (E : DigitalEthnographyEvidencePackage S D)
    (Ev : DigitalEthnographyEvidence S D E) : DigitalEthnographyClosed S D E := by
  exact And.intro Ev.fieldNotesCodedClosed
    (And.intro Ev.participantInterviewsRecordedClosed
      (And.intro Ev.algorithmicCultureDocumentedClosed Ev.digitalArtifactCollectedClosed))

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse