import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure AuxeticAdmittedObject where
  carrier : Type
  auxeticCharacteristic : Prop
  conclusion : auxeticCharacteristic

def AuxeticWitnessClosed (O : AuxeticAdmittedObject) : Prop :=
  O.auxeticCharacteristic

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse