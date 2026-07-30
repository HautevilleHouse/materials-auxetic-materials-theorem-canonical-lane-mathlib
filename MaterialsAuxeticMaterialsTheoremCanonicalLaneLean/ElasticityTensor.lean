import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  positiveDefinite : Prop
  symmetries : Prop
  voigtNotation : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  positiveDefiniteClosed : E.positiveDefinite
  symmetriesClosed : E.symmetries
  voigtNotationClosed : E.voigtNotation

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.positiveDefinite ∧ E.symmetries ∧ E.voigtNotation

theorem elasticity_tensor_closed_from_evidence
    (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) :
    ElasticityTensorClosed E := by
  exact And.intro Ev.positiveDefiniteClosed
    (And.intro Ev.symmetriesClosed Ev.voigtNotationClosed)

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse