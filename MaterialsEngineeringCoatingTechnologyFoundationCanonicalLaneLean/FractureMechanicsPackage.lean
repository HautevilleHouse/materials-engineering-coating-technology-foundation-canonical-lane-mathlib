import MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean.ElasticityPackage

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean

structure FractureMechanicsPackage (E : ElasticityPackage) where
  stressIntensityFactor : ℝ
  fractureToughness : ℝ
  crackGrowthCriterion : Prop
  griffithCriterion : Prop
  parisLaw : Prop
  stressIntensityFactorValid : stressIntensityFactor > 0
  fractureToughnessValid : fractureToughness > 0
  crackGrowthCriterionClosed : crackGrowthCriterion
  griffithCriterionClosed : griffithCriterion
  parisLawClosed : parisLaw

structure FractureMechanicsEvidence {E : ElasticityPackage} (F : FractureMechanicsPackage E) where
  crackGrowthCriterionClosed : F.crackGrowthCriterionClosed
  griffithCriterionClosed : F.griffithCriterionClosed
  parisLawClosed : F.parisLawClosed

def FractureMechanicsClosed {E : ElasticityPackage} (F : FractureMechanicsPackage E) : Prop :=
  F.crackGrowthCriterion ∧ F.griffithCriterion ∧ F.parisLaw

theorem fracture_mechanics_closed_from_evidence {E : ElasticityPackage} (F : FractureMechanicsPackage E) (Ev : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro Ev.crackGrowthCriterionClosed (And.intro Ev.griffithCriterionClosed Ev.parisLawClosed)

end MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean
end HautevilleHouse