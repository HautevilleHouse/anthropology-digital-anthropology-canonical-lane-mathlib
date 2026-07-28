import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure CulturalEvolutionPackage where
  transmissionModel : Prop
  driftModel : Prop
  selectionModel : Prop
  innovationModel : Prop
  digitalMigration : Prop

structure CulturalEvolutionEvidence (P : CulturalEvolutionPackage) where
  transmissionModelClosed : P.transmissionModel
  driftModelClosed : P.driftModel
  selectionModelClosed : P.selectionModel
  innovationModelClosed : P.innovationModel
  digitalMigrationClosed : P.digitalMigration

def CulturalEvolutionClosed (P : CulturalEvolutionPackage) : Prop :=
  P.transmissionModel ∧ P.driftModel ∧ P.selectionModel ∧ P.innovationModel ∧ P.digitalMigration

theorem cultural_evolution_closed_from_evidence (P : CulturalEvolutionPackage)
    (E : CulturalEvolutionEvidence P) : CulturalEvolutionClosed P := by
  exact And.intro E.transmissionModelClosed
    (And.intro E.driftModelClosed
      (And.intro E.selectionModelClosed
        (And.intro E.innovationModelClosed E.digitalMigrationClosed)))

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse