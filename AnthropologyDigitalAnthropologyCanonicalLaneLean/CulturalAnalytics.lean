import HautevilleHouse.AnthropologyDigitalAnthropologyCanonicalLaneLean.DataStructuring

/-!
# Cultural Analytics Package
-/

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure CulturalAnalyticsPackage where
  computationalMethods : Prop
  socialNetworkAnalysis : Prop
  textMining : Prop
  dataVisualization : Prop

structure CulturalAnalyticsEvidence (C : CulturalAnalyticsPackage) where
  computationalMethodsClosed : C.computationalMethods
  socialNetworkAnalysisClosed : C.socialNetworkAnalysis
  textMiningClosed : C.textMining
  dataVisualizationClosed : C.dataVisualization

def CulturalAnalyticsClosed (C : CulturalAnalyticsPackage) : Prop :=
  C.computationalMethods ∧ C.socialNetworkAnalysis ∧ C.textMining ∧ C.dataVisualization

theorem cultural_analytics_closed_from_evidence
    (C : CulturalAnalyticsPackage) (Ev : CulturalAnalyticsEvidence C) :
    CulturalAnalyticsClosed C := by
  exact And.intro Ev.computationalMethodsClosed
    (And.intro Ev.socialNetworkAnalysisClosed
      (And.intro Ev.textMiningClosed Ev.dataVisualizationClosed))

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse