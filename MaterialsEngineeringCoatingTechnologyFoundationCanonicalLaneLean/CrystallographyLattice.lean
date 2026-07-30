import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundation

structure CrystalLatticePackage where
  latticeType : Type u
  unitCellGeometry : Prop
  bravaisClassification : Prop
  symmetryGroup : Prop
  diffractionPattern : Prop

structure CrystalLatticeEvidence (L : CrystalLatticePackage) where
  unitCellGeometryClosed : L.unitCellGeometry
  bravaisClassificationClosed : L.bravaisClassification
  symmetryGroupClosed : L.symmetryGroup
  diffractionPatternClosed : L.diffractionPattern

def CrystalLatticeClosed (L : CrystalLatticePackage) : Prop :=
  L.unitCellGeometry ∧ L.bravaisClassification ∧ L.symmetryGroup ∧ L.diffractionPattern

theorem crystal_lattice_closed_from_evidence (L : CrystalLatticePackage) (E : CrystalLatticeEvidence L) :
    CrystalLatticeClosed L := by
  exact And.intro E.unitCellGeometryClosed
    (And.intro E.bravaisClassificationClosed
      (And.intro E.symmetryGroupClosed E.diffractionPatternClosed))

end MaterialsEngineeringCoatingTechnologyFoundation
end HautevilleHouse