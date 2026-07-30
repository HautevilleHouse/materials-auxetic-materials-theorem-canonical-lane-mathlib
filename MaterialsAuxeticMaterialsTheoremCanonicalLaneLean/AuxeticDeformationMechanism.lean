import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure AuxeticDeformationMechanism where
  hingeBending : Prop
  reentrantBuckle : Prop
  chiralRotation : Prop
  negativeStiffness : Prop
  hingeBendingTerm : hingeBending
  reentrantBuckleTerm : reentrantBuckle
  chiralRotationTerm : chiralRotation
  negativeStiffnessTerm : negativeStiffness

structure AuxeticDeformationMechanismEvidence (M : AuxeticDeformationMechanism) where
  hingeBendingClosed : M.hingeBending
  reentrantBuckleClosed : M.reentrantBuckle
  chiralRotationClosed : M.chiralRotation
  negativeStiffnessClosed : M.negativeStiffness

def AuxeticDeformationMechanismClosed (M : AuxeticDeformationMechanism) : Prop :=
  M.hingeBending ∧ M.reentrantBuckle ∧ M.chiralRotation ∧ M.negativeStiffness

theorem auxetic_deformation_mechanism_closed_from_evidence
    (M : AuxeticDeformationMechanism) (E : AuxeticDeformationMechanismEvidence M) :
    AuxeticDeformationMechanismClosed M := by
  exact And.intro E.hingeBendingClosed
    (And.intro E.reentrantBuckleClosed
      (And.intro E.chiralRotationClosed E.negativeStiffnessClosed))

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse