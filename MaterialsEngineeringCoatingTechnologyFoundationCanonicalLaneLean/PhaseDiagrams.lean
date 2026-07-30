import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Prop
  compositionRange : Prop
  phaseBoundaries : Prop
  eutecticPoint : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  compositionRangeClosed : P.compositionRange

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.eutecticPoint

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed E.compositionRangeClosed

end MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean
end HautevilleHouse
