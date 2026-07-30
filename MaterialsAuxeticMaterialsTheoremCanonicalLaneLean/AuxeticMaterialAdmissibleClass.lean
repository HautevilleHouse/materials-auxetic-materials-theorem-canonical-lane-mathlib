import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure AuxeticAdmittedObject where
  structureModel : AuxeticLatticeStructure
  deformationMechanism : AuxeticDeformationMechanism
  continuumModel : AuxeticContinuumElasticity
  auxeticBehaviorConfirmed : Prop
  conclusion : auxeticBehaviorConfirmed

structure AuxeticEndgameState where
  object : AuxeticAdmittedObject

def AuxeticWitnessClosed (O : AuxeticAdmittedObject) : Prop :=
  O.auxeticBehaviorConfirmed

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse