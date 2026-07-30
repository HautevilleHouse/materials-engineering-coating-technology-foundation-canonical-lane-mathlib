import MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean.CrystallographyPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean

structure PhaseEquilibria where
  phases : List String
  temperaturePressureRange : Prop
  gibbsFreeEnergyMinimized : Prop
  leverRuleApplied : Prop
  coexistenceCurves : Prop

structure PhaseEquilibriaEvidence (P : PhaseEquilibria) where
  temperaturePressureRangeClosed : P.temperaturePressureRange
  gibbsFreeEnergyMinimizedClosed : P.gibbsFreeEnergyMinimized
  leverRuleAppliedClosed : P.leverRuleApplied
  coexistenceCurvesClosed : P.coexistenceCurves

def PhaseEquilibriaClosed (P : PhaseEquilibria) : Prop :=
  P.temperaturePressureRange ∧ P.gibbsFreeEnergyMinimized ∧ P.leverRuleApplied ∧ P.coexistenceCurves

theorem phase_equilibria_closed_from_evidence (P : PhaseEquilibria) (E : PhaseEquilibriaEvidence P) : PhaseEquilibriaClosed P := by
  exact And.intro E.temperaturePressureRangeClosed (And.intro E.gibbsFreeEnergyMinimizedClosed (And.intro E.leverRuleAppliedClosed E.coexistenceCurvesClosed))

end MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean
end HautevilleHouse