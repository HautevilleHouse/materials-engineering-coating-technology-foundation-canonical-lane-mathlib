import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundation

structure CoatingAdhesionPackage where
  substrateSurface : Type u
  coatingMaterial : Type v
  interfaceBonding : Prop
  adhesionStrength : Prop
  failureMode : Prop

structure CoatingAdhesionEvidence (C : CoatingAdhesionPackage) where
  interfaceBondingClosed : C.interfaceBonding
  adhesionStrengthClosed : C.adhesionStrength
  failureModeClosed : C.failureMode

def CoatingAdhesionClosed (C : CoatingAdhesionPackage) : Prop :=
  C.interfaceBonding ∧ C.adhesionStrength ∧ C.failureMode

theorem coating_adhesion_closed_from_evidence (C : CoatingAdhesionPackage) (E : CoatingAdhesionEvidence C) :
    CoatingAdhesionClosed C := by
  exact And.intro E.interfaceBondingClosed
    (And.intro E.adhesionStrengthClosed E.failureModeClosed)

end MaterialsEngineeringCoatingTechnologyFoundation
end HautevilleHouse