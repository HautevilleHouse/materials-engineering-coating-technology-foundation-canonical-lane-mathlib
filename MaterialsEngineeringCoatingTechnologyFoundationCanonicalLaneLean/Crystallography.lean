import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type u
  unitCell : Type v
  bravaisLattice : Prop
  symmetry : Prop
  xrdPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  symmetryClosed : C.symmetry
  xrdPatternClosed : C.xrdPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.symmetry ∧ C.xrdPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.symmetryClosed E.xrdPatternClosed)

end MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean
end HautevilleHouse