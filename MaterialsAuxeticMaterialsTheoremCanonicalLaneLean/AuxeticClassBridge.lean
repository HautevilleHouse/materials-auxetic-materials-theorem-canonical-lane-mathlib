import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure AuxeticClassEvidence where
  negativePoissonRatio : ℝ < 0
  elasticStability : Prop
  reentrantStructure : Prop
  stabilityTerm : elasticStability
  reentrantTerm : reentrantStructure

def AuxeticClassClosed (A : AuxeticClassEvidence) : Prop :=
  A.elasticStability ∧ A.reentrantStructure

theorem auxetic_class_closed_from_evidence (A : AuxeticClassEvidence) : AuxeticClassClosed A := by
  exact And.intro A.stabilityTerm A.reentrantTerm

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
