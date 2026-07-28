import canonicalLaneMathlib.NetworkAnalysis

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure NetworkAnalysisPackage where
  graphModel : Prop
  centralityMeasures : Prop
  communityDetection : Prop
  temporalDynamics : Prop

structure NetworkAnalysisEvidence (N : NetworkAnalysisPackage) where
  graphModelClosed : N.graphModel
  centralityMeasuresClosed : N.centralityMeasures
  communityDetectionClosed : N.communityDetection
  temporalDynamicsClosed : N.temporalDynamics

def NetworkAnalysisClosed (N : NetworkAnalysisPackage) : Prop :=
  N.graphModel ∧ N.centralityMeasures ∧ N.communityDetection ∧ N.temporalDynamics

theorem network_analysis_closed_from_evidence (N : NetworkAnalysisPackage) (Ev : NetworkAnalysisEvidence N) :
    NetworkAnalysisClosed N := by
  exact And.intro Ev.graphModelClosed
    (And.intro Ev.centralityMeasuresClosed
      (And.intro Ev.communityDetectionClosed Ev.temporalDynamicsClosed))

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse