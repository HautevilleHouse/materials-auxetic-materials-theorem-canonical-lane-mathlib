import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  symmetryProperties : Prop
  positiveDefiniteness : Prop
  auxeticCondition : Prop
  symmetryPropertiesClosed : symmetryProperties
  positiveDefinitenessClosed : positiveDefiniteness
  auxeticConditionClosed : auxeticCondition

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  symmetryPropertiesClosed : E.symmetryProperties
  positiveDefinitenessClosed : E.positiveDefiniteness
  auxeticConditionClosed : E.auxeticCondition

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.symmetryProperties ∧ E.positiveDefiniteness ∧ E.auxeticCondition

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.symmetryPropertiesClosed
    (And.intro Ev.positiveDefinitenessClosed Ev.auxeticConditionClosed)

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse