import HautevilleHouse.AnthropologyDigitalAnthropologyCanonicalLaneLean.DigitalEthnography

/-!
# Data Structuring Package
-/

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure DataStructuringPackage {C : CulturalAnalyticsPackage}
    {E : DigitalEthnographyPackage C} where
  codingScheme : Prop
  thematicAnalysis : Prop
  networkMapping : Prop
  timestampAlignment : Prop

structure DataStructuringEvidence {C : CulturalAnalyticsPackage}
    {E : DigitalEthnographyPackage C} (D : DataStructuringPackage C E) where
  codingSchemeClosed : D.codingScheme
  thematicAnalysisClosed : D.thematicAnalysis
  networkMappingClosed : D.networkMapping
  timestampAlignmentClosed : D.timestampAlignment

def DataStructuringClosed {C : CulturalAnalyticsPackage}
    {E : DigitalEthnographyPackage C} (D : DataStructuringPackage C E) : Prop :=
  D.codingScheme ∧ D.thematicAnalysis ∧ D.networkMapping ∧ D.timestampAlignment

theorem data_structuring_closed_from_evidence
    {C : CulturalAnalyticsPackage} {E : DigitalEthnographyPackage C}
    (D : DataStructuringPackage C E) (Ev : DataStructuringEvidence D) :
    DataStructuringClosed D := by
  exact And.intro Ev.codingSchemeClosed
    (And.intro Ev.thematicAnalysisClosed
      (And.intro Ev.networkMappingClosed Ev.timestampAlignmentClosed))

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse