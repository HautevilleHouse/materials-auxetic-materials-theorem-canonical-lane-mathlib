import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure AuxeticCriterionPackage where
  reentrantStructure : Prop
  chiralStructure : Prop
  rotatingRigidUnits : Prop
  hingeMechanism : Prop
  effectiveNegativeModulus : Prop

structure AuxeticCriterionEvidence (A : AuxeticCriterionPackage) where
  reentrantStructureClosed : A.reentrantStructure
  chiralStructureClosed : A.chiralStructure
  rotatingRigidUnitsClosed : A.rotatingRigidUnits
  hingeMechanismClosed : A.hingeMechanism
  effectiveNegativeModulusClosed : A.effectiveNegativeModulus

def AuxeticCriterionClosed (A : AuxeticCriterionPackage) : Prop :=
  A.reentrantStructure ∧ A.chiralStructure ∧
  A.rotatingRigidUnits ∧ A.hingeMechanism ∧
  A.effectiveNegativeModulus

theorem auxetic_criterion_closed_from_evidence
    (A : AuxeticCriterionPackage) (E : AuxeticCriterionEvidence A) :
    AuxeticCriterionClosed A := by
  exact And.intro E.reentrantStructureClosed
    (And.intro E.chiralStructureClosed
      (And.intro E.rotatingRigidUnitsClosed
        (And.intro E.hingeMechanismClosed E.effectiveNegativeModulusClosed)))

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse