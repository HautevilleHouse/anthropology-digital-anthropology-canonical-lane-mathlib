import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure DigitalFieldContext where
  platform : String
  fieldSite : String
  timePeriod : String
  dataTypes : List String
  ethicalClearance : Prop

structure DigitalFieldData where
  context : DigitalFieldContext
  rawData : Type
  metadata : String
  dataIntegrity : Prop

def DigitalFieldDataClosed (D : DigitalFieldData) : Prop :=
  D.context.ethicalClearance ∧ D.dataIntegrity

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse