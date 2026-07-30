import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  crackPropagationCriterion : Type v
  linearElasticFractureMechanics : Prop
  energyReleaseRate : Prop
  fractureToughness : Prop
  linearElasticFractureMechanicsClosed : linearElasticFractureMechanics
  energyReleaseRateClosed : energyReleaseRate
  fractureToughnessClosed : fractureToughness

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  linearElasticFractureMechanicsClosed : F.linearElasticFractureMechanics
  energyReleaseRateClosed : F.energyReleaseRate
  fractureToughnessClosed : F.fractureToughness

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.linearElasticFractureMechanics ∧ F.energyReleaseRate ∧ F.fractureToughness

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.linearElasticFractureMechanicsClosed
    (And.intro E.energyReleaseRateClosed E.fractureToughnessClosed)

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse