import MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean.CrystallographyPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean

structure PhaseDiagramPackage {C : CrystallographyPackage} (P : PhaseEquilibria) where
  temperatureRange : Prop
  compositionRange : Prop
  phaseBoundaries : Prop
  eutecticReaction : Prop
  solidusLiquidus : Prop

structure PhaseDiagramEvidence {C : CrystallographyPackage} {P : PhaseEquilibria} (D : PhaseDiagramPackage P) where
  temperatureRangeClosed : D.temperatureRange
  compositionRangeClosed : D.compositionRange
  phaseBoundariesClosed : D.phaseBoundaries
  eutecticReactionClosed : D.eutecticReaction
  solidusLiquidusClosed : D.solidusLiquidus

def PhaseDiagramClosed {C : CrystallographyPackage} {P : PhaseEquilibria} (D : PhaseDiagramPackage P) : Prop :=
  D.temperatureRange ∧ D.compositionRange ∧ D.phaseBoundaries ∧ D.eutecticReaction ∧ D.solidusLiquidus

theorem phase_diagram_closed_from_evidence {C : CrystallographyPackage} {P : PhaseEquilibria} (D : PhaseDiagramPackage P) (E : PhaseDiagramEvidence D) : PhaseDiagramClosed D := by
  exact And.intro E.temperatureRangeClosed (And.intro E.compositionRangeClosed (And.intro E.phaseBoundariesClosed (And.intro E.eutecticReactionClosed E.solidusLiquidusClosed)))

end MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean
end HautevilleHouse