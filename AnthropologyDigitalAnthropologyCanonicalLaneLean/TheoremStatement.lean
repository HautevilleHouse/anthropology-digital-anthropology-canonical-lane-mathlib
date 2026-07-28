import canonicalLaneMathlib.AdmissibleClass
import AnthropologyDigitalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  digitalCultureConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "AnthropologyDigitalAnthropologyCanonicalLaneLean",
  theoremName := "Digital Anthropology Closure",
  theoremObject := "Digital Anthropology Admitted Object",
  classicalBoundary := "unrestricted classical closure",
  digitalCultureConstrainedStatement := "digital culture constrained theorem certificate internalized through admissible class",
  certificateLane := "digital_culture_constrained",
  carriedRemainder := "classical source boundary carried by formalization certificate"
}

theorem theorem_statement_defined : sourceTheoremStatement.sourceKey = "AnthropologyDigitalAnthropologyCanonicalLaneLean" := by
  rfl

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse