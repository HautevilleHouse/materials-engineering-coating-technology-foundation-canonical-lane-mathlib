import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundation

structure PhaseDiagramPackage where
  components : Nat
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundaries : Prop
  gibbsFreeEnergy : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  pressureRangeClosed : P.pressureRange
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.phaseBoundaries ∧ P.gibbsFreeEnergy

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed
    (And.intro E.pressureRangeClosed
      (And.intro E.phaseBoundariesClosed E.gibbsFreeEnergyClosed))

end MaterialsEngineeringCoatingTechnologyFoundation
end HautevilleHouse