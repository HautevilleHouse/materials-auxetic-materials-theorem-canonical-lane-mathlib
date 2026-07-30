import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure AuxeticResponsePackage {L : CrystalLatticePackage} {E : ElasticityTensorPackage L} {F : FractureMechanicsPackage L E} where
  negativePoissonRatio : Prop
  largeStrainRecovery : Prop
  microstructuralDesign : Prop
  auxeticEnhancement : Prop
  negativePoissonRatioClosed : Prop
  largeStrainRecoveryClosed : Prop
  microstructuralDesignClosed : Prop
  auxeticEnhancementClosed : Prop

structure AuxeticResponseEvidence {L : CrystalLatticePackage} {E : ElasticityTensorPackage L} {F : FractureMechanicsPackage L E} (A : AuxeticResponsePackage L E F) where
  negativePoissonRatioClosedClosed : A.negativePoissonRatioClosed
  largeStrainRecoveryClosedClosed : A.largeStrainRecoveryClosed
  microstructuralDesignClosedClosed : A.microstructuralDesignClosed
  auxeticEnhancementClosedClosed : A.auxeticEnhancementClosed

def AuxeticResponseClosed {L : CrystalLatticePackage} {E : ElasticityTensorPackage L} {F : FractureMechanicsPackage L E} (A : AuxeticResponsePackage L E F) : Prop :=
  A.negativePoissonRatio ∧ A.largeStrainRecovery ∧ A.microstructuralDesign ∧ A.auxeticEnhancement ∧
  A.negativePoissonRatioClosed ∧ A.largeStrainRecoveryClosed ∧ A.microstructuralDesignClosed ∧ A.auxeticEnhancementClosed

theorem auxetic_response_closed_from_evidence {L : CrystalLatticePackage} {E : ElasticityTensorPackage L} {F : FractureMechanicsPackage L E} (A : AuxeticResponsePackage L E F) (Av : AuxeticResponseEvidence A) : AuxeticResponseClosed A := by
  exact And.intro Av.negativePoissonRatioClosedClosed (And.intro Av.largeStrainRecoveryClosedClosed (And.intro Av.microstructuralDesignClosedClosed Av.auxeticEnhancementClosedClosed))

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse