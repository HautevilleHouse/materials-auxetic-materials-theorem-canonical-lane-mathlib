import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AuxeticMaterial
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AuxeticMaterialClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
