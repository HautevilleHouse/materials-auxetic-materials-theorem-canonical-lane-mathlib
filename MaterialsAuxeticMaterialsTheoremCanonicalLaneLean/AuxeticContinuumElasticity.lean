import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure AuxeticContinuumElasticity where
  elasticModuli : Type u
  complianceTensor : Type v
  strainEnergy : Prop
  negativePoissonCoupling : Prop
  strainEnergyTerm : strainEnergy
  negativePoissonCouplingTerm : negativePoissonCoupling

structure AuxeticContinuumElasticityEvidence (E : AuxeticContinuumElasticity) where
  strainEnergyClosed : E.strainEnergy
  negativePoissonCouplingClosed : E.negativePoissonCoupling

def AuxeticContinuumElasticityClosed (E : AuxeticContinuumElasticity) : Prop :=
  E.strainEnergy ∧ E.negativePoissonCoupling

theorem auxetic_continuum_elasticity_closed_from_evidence
    (E : AuxeticContinuumElasticity) (Ev : AuxeticContinuumElasticityEvidence E) :
    AuxeticContinuumElasticityClosed E := by
  exact And.intro Ev.strainEnergyClosed Ev.negativePoissonCouplingClosed

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse