import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure PoissonRatioBridge where
  negativePoissonRatio : Prop
  isotropicElasticity : Prop
  strainEnergyDensity : Prop
  bridgeWitness : negativePoissonRatio

structure PoissonRatioBridgeEvidence (B : PoissonRatioBridge) where
  negativePoissonRatioClosed : B.negativePoissonRatio
  isotropicElasticityClosed : B.isotropicElasticity
  strainEnergyDensityClosed : B.strainEnergyDensity

def PoissonRatioBridgeClosed (B : PoissonRatioBridge) : Prop :=
  B.negativePoissonRatio ∧ B.isotropicElasticity ∧ B.strainEnergyDensity

theorem poisson_ratio_bridge_closed_from_evidence
    (B : PoissonRatioBridge) (E : PoissonRatioBridgeEvidence B) :
    PoissonRatioBridgeClosed B := by
  exact And.intro E.negativePoissonRatioClosed
    (And.intro E.isotropicElasticityClosed E.strainEnergyDensityClosed)

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse