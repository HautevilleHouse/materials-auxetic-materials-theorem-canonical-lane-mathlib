import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure PoissonRatioPackage where
  negativePoissonRatio : Prop
  auxeticBehavior : Prop
  strainEnergy : Prop
  microstructureModel : Prop

structure PoissonRatioEvidence (P : PoissonRatioPackage) where
  negativePoissonRatioClosed : P.negativePoissonRatio
  auxeticBehaviorClosed : P.auxeticBehavior
  strainEnergyClosed : P.strainEnergy
  microstructureModelClosed : P.microstructureModel

def PoissonRatioClosed (P : PoissonRatioPackage) : Prop :=
  P.negativePoissonRatio ∧ P.auxeticBehavior ∧
  P.strainEnergy ∧ P.microstructureModel

theorem poisson_ratio_closed_from_evidence
    (P : PoissonRatioPackage) (E : PoissonRatioEvidence P) :
    PoissonRatioClosed P := by
  exact And.intro E.negativePoissonRatioClosed
    (And.intro E.auxeticBehaviorClosed
      (And.intro E.strainEnergyClosed E.microstructureModelClosed))

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse