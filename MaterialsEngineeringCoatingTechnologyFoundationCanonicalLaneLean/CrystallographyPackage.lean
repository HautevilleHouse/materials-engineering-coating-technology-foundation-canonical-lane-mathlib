import MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean

structure CrystallographyPackage where
  crystalSystem : Type u
  bravaisLattice : Prop
  unitCellGeometry : Prop
  millerIndices : Prop
  volumeFraction : Prop
  xrdPatternMatches : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  unitCellGeometryClosed : C.unitCellGeometry
  millerIndicesClosed : C.millerIndices
  volumeFractionClosed : C.volumeFraction
  xrdPatternMatchesClosed : C.xrdPatternMatches

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.unitCellGeometry ∧ C.millerIndices ∧ C.volumeFraction ∧ C.xrdPatternMatches

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.unitCellGeometryClosed (And.intro E.millerIndicesClosed (And.intro E.volumeFractionClosed E.xrdPatternMatchesClosed)))

end MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean
end HautevilleHouse