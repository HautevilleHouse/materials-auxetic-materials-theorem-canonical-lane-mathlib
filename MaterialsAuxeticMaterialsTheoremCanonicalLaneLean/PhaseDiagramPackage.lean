import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAuxeticMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseBoundaries : Type u
  equilibriumPhases : Type v
  gibbsFreeEnergyMinimization : Prop
  convexHullConstruction : Prop
  tieLineIdentification : Prop
  gibbsFreeEnergyMinimizationClosed : gibbsFreeEnergyMinimization
  convexHullConstructionClosed : convexHullConstruction
  tieLineIdentificationClosed : tieLineIdentification

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  gibbsFreeEnergyMinimizationClosed : P.gibbsFreeEnergyMinimization
  convexHullConstructionClosed : P.convexHullConstruction
  tieLineIdentificationClosed : P.tieLineIdentification

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.gibbsFreeEnergyMinimization ∧ P.convexHullConstruction ∧ P.tieLineIdentification

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.gibbsFreeEnergyMinimizationClosed
    (And.intro E.convexHullConstructionClosed E.tieLineIdentificationClosed)

end MaterialsAuxeticMaterialsTheoremCanonicalLaneLean
end HautevilleHouse