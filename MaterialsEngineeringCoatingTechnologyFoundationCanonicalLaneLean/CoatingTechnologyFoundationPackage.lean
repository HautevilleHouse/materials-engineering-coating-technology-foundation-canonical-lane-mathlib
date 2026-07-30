import canonicalLaneMathlib.AdmissibleClass
import ..CrystallographyPackage
import ..PhaseDiagramPackage
import ..ElasticityPackage
import ..FractureMechanicsPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean

structure CoatingTechnologyFoundationPackage where
  crystallography : CrystallographyPackage
  phaseDiagram : PhaseDiagramPackage
  elasticity : ElasticityPackage
  fractureMechanics : FractureMechanicsPackage
  coatingMaterial : Type u
  substrateMaterial : Type v
  adhesionStrength : ℝ
  thermalExpansionMatch : Prop

def CoatingTechnologyFoundationClosed (C : CoatingTechnologyFoundationPackage) : Prop :=
  CrystallographyPackageClosed C.crystallography ∧
  PhaseDiagramPackageClosed C.phaseDiagram ∧
  ElasticityPackageClosed C.elasticity ∧
  FractureMechanicsPackageClosed C.fractureMechanics ∧
  C.thermalExpansionMatch

end MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean
end HautevilleHouse
