import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsAuxeticMaterialsTheoremCanonicalLaneLean.AuxeticElasticityTensor

/-!
# Auxetic Microstructure Geometry Package

This module defines the re-entrant cell geometry that produces auxetic behavior.
-/

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure ReEntrantCellGeometry where
  cellAngle : ℝ
  strutLength : ℝ
  reEntrantAngleNegative : Prop
  negativePoissonRatioDerived : Prop

structure ReEntrantCellGeometryEvidence (G : ReEntrantCellGeometry) where
  reEntrantAngleNegativeClosed : G.reEntrantAngleNegative
  negativePoissonRatioDerivedClosed : G.negativePoissonRatioDerived

def ReEntrantCellGeometryClosed (G : ReEntrantCellGeometry) : Prop :=
  G.reEntrantAngleNegative ∧ G.negativePoissonRatioDerived

theorem re_entrant_cell_geometry_closed_from_evidence (G : ReEntrantCellGeometry)
    (Ev : ReEntrantCellGeometryEvidence G) : ReEntrantCellGeometryClosed G := by
  exact And.intro Ev.reEntrantAngleNegativeClosed Ev.negativePoissonRatioDerivedClosed

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse