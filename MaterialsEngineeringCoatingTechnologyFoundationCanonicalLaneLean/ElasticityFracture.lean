import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundation

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  hookeLaw : Prop
  yieldCriterion : Prop
  fractureToughness : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationClosed : E.hookeLaw
  yieldCriterionClosed : E.yieldCriterion
  fractureToughnessClosed : E.fractureToughness

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookeLaw ∧ E.yieldCriterion ∧ E.fractureToughness

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.yieldCriterionClosed Ev.fractureToughnessClosed)

end MaterialsEngineeringCoatingTechnologyFoundation
end HautevilleHouse