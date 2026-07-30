import MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean.MaterialsMathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean

structure ElasticityPackage where
  modulusYoung : ℝ
  poissonRatio : ℝ
  hookeLaw : Prop
  stressStrainRelation : Prop
  elasticStrainEnergy : Prop
  modulusYoungValid : modulusYoung > 0
  poissonRatioValid : -1 < poissonRatio ∧ poissonRatio < 0.5
  hookeLawClosed : hookeLaw
  stressStrainRelationClosed : stressStrainRelation
  elasticStrainEnergyClosed : elasticStrainEnergy

structure ElasticityEvidence (E : ElasticityPackage) where
  hookeLawClosed : E.hookeLawClosed
  stressStrainRelationClosed : E.stressStrainRelationClosed
  elasticStrainEnergyClosed : E.elasticStrainEnergyClosed

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookeLaw ∧ E.stressStrainRelation ∧ E.elasticStrainEnergy

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.hookeLawClosed (And.intro Ev.stressStrainRelationClosed Ev.elasticStrainEnergyClosed)

end MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean
end HautevilleHouse