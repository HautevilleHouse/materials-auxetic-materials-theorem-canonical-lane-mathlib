import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure CrystalLatticePackage where
  bravaisLattice : Type u
  unitCell : Type v
  basisVectors : Type w
  symmetryGroup : Type x
  latticeParameters : Prop
  unitCellVolume : Prop
  basisVectorsDefined : Prop
  symmetryGroupClosed : Prop

structure CrystalLatticeEvidence (L : CrystalLatticePackage) where
  latticeParametersClosed : L.latticeParameters
  unitCellVolumeClosed : L.unitCellVolume
  basisVectorsDefinedClosed : L.basisVectorsDefined
  symmetryGroupClosedClosed : L.symmetryGroupClosed

def CrystalLatticeClosed (L : CrystalLatticePackage) : Prop :=
  L.latticeParameters ∧ L.unitCellVolume ∧ L.basisVectorsDefined ∧ L.symmetryGroupClosed

theorem crystal_lattice_closed_from_evidence (L : CrystalLatticePackage) (E : CrystalLatticeEvidence L) : CrystalLatticeClosed L := by
  exact And.intro E.latticeParametersClosed (And.intro E.unitCellVolumeClosed (And.intro E.basisVectorsDefinedClosed E.symmetryGroupClosedClosed))

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse