import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure AuxeticDesignPackage where
  unitCellGeometry : Type u
  connectivity : Prop
  deformationMode : Prop
  criticalPoissonRatio : Prop
  manufacturability : Prop

structure AuxeticDesignEvidence (D : AuxeticDesignPackage) where
  connectivityClosed : D.connectivity
  deformationModeClosed : D.deformationMode
  criticalPoissonRatioClosed : D.criticalPoissonRatio
  manufacturabilityClosed : D.manufacturability

def AuxeticDesignClosed (D : AuxeticDesignPackage) : Prop :=
  D.connectivity ∧ D.deformationMode ∧
  D.criticalPoissonRatio ∧ D.manufacturability

theorem auxetic_design_closed_from_evidence
    (D : AuxeticDesignPackage) (E : AuxeticDesignEvidence D) :
    AuxeticDesignClosed D := by
  exact And.intro E.connectivityClosed
    (And.intro E.deformationModeClosed
      (And.intro E.criticalPoissonRatioClosed E.manufacturabilityClosed))

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse