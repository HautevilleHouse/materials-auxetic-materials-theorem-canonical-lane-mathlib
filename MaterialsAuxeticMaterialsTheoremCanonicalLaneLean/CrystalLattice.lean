import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure CrystalLatticePackage where
  unitCell : Type u
  bravaisLattice : Type v
  latticeVectors : Prop
  symmetryGroup : Prop
  pointGroupClassification : Prop

structure CrystalLatticeEvidence (L : CrystalLatticePackage) where
  latticeVectorsClosed : L.latticeVectors
  symmetryGroupClosed : L.symmetryGroup
  pointGroupClassificationClosed : L.pointGroupClassification

def CrystalLatticeClosed (L : CrystalLatticePackage) : Prop :=
  L.latticeVectors ∧ L.symmetryGroup ∧ L.pointGroupClassification

theorem crystal_lattice_closed_from_evidence
    (L : CrystalLatticePackage) (E : CrystalLatticeEvidence L) :
    CrystalLatticeClosed L := by
  exact And.intro E.latticeVectorsClosed
    (And.intro E.symmetryGroupClosed E.pointGroupClassificationClosed)

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse