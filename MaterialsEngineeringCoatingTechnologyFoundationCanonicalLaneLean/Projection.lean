import MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean

def materialsProjection : Projection MaterialsEndgameState := {
  toFun := fun x => x,
  idempotent := by
    intro x
    rfl
}

theorem materials_projection_idempotent (x : MaterialsEndgameState) :
    materialsProjection.toFun (materialsProjection.toFun x) = materialsProjection.toFun x := by
  exact materialsProjection.idempotent x

end MaterialsEngineeringCoatingTechnologyFoundationCanonicalLaneLean
end HautevilleHouse