import canonicalLaneMathlib.AdmissibleClass

/-!
# Auxetic Elasticity Tensor Package

This module defines the elastic tensor structure governing auxetic materials.
The defining property is a negative Poisson ratio across all loading directions.
-/

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure ElasticityTensor where
  rankFourTensor : Type u
  majorSymmetry : Prop
  minorSymmetry : Prop
  positiveDefiniteStiffness : Prop
  negativePoissonRatio : Prop

structure ElasticityTensorEvidence (E : ElasticityTensor) where
  majorSymmetryClosed : E.majorSymmetry
  minorSymmetryClosed : E.minorSymmetry
  positiveDefiniteStiffnessClosed : E.positiveDefiniteStiffness
  negativePoissonRatioClosed : E.negativePoissonRatio

def ElasticityTensorClosed (E : ElasticityTensor) : Prop :=
  E.majorSymmetry ∧ E.minorSymmetry ∧ E.positiveDefiniteStiffness ∧ E.negativePoissonRatio

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensor)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.majorSymmetryClosed
    (And.intro Ev.minorSymmetryClosed
      (And.intro Ev.positiveDefiniteStiffnessClosed Ev.negativePoissonRatioClosed))

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse