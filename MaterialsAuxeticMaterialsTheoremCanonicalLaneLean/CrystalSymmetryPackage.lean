import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure CrystalSymmetryPackage where
  latticeSystem : Type u
  pointGroup : Type v
  bravaisLattice : Type w
  symmetryOperations : Prop
  spaceGroupClassification : Prop
  symmetryOperationsClosed : symmetryOperations
  spaceGroupClassificationClosed : spaceGroupClassification

structure CrystalSymmetryEvidence (C : CrystalSymmetryPackage) where
  symmetryOperationsClosed : C.symmetryOperations
  spaceGroupClassificationClosed : C.spaceGroupClassification

def CrystalSymmetryClosed (C : CrystalSymmetryPackage) : Prop :=
  C.symmetryOperations ∧ C.spaceGroupClassification

theorem crystal_symmetry_closed_from_evidence (C : CrystalSymmetryPackage)
    (E : CrystalSymmetryEvidence C) : CrystalSymmetryClosed C := by
  exact And.intro E.symmetryOperationsClosed E.spaceGroupClassificationClosed

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse