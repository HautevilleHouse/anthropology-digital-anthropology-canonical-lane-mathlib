import HautevilleHouse.AnthropologyDigitalAnthropologyCanonicalLaneLean.SocialNetworkStructure

/-!
# Digital Field Study Package
-/

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure DigitalFieldStudyPackage (S : SocialNetworkStructure) where
  platform : Type u
  participantObservation : Prop
  dataCollectionEthics : Prop
  computationalToolsUsed : Prop
  longitudinalTracking : Prop

structure DigitalFieldStudyEvidence (S : SocialNetworkStructure) (D : DigitalFieldStudyPackage S) where
  participantObservationClosed : D.participantObservation
  dataCollectionEthicsClosed : D.dataCollectionEthics
  computationalToolsUsedClosed : D.computationalToolsUsed
  longitudinalTrackingClosed : D.longitudinalTracking

def DigitalFieldStudyClosed (S : SocialNetworkStructure) (D : DigitalFieldStudyPackage S) : Prop :=
  D.participantObservation ∧ D.dataCollectionEthics ∧ D.computationalToolsUsed ∧ D.longitudinalTracking

theorem digital_field_study_closed_from_evidence
    (S : SocialNetworkStructure) (D : DigitalFieldStudyPackage S) (E : DigitalFieldStudyEvidence S D) :
    DigitalFieldStudyClosed S D := by
  exact And.intro E.participantObservationClosed
    (And.intro E.dataCollectionEthicsClosed
      (And.intro E.computationalToolsUsedClosed E.longitudinalTrackingClosed))

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse