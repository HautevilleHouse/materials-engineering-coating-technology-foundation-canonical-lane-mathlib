import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundation

structure ThermalBarrierPackage where
  topCoat : Type u
  bondCoat : Type v
  thermalConductivity : Prop
  thermalExpansionMismatch : Prop
  cyclicOxidation : Prop

structure ThermalBarrierEvidence (T : ThermalBarrierPackage) where
  thermalConductivityClosed : T.thermalConductivity
  thermalExpansionMismatchClosed : T.thermalExpansionMismatch
  cyclicOxidationClosed : T.cyclicOxidation

def ThermalBarrierClosed (T : ThermalBarrierPackage) : Prop :=
  T.thermalConductivity ∧ T.thermalExpansionMismatch ∧ T.cyclicOxidation

theorem thermal_barrier_closed_from_evidence (T : ThermalBarrierPackage) (E : ThermalBarrierEvidence T) :
    ThermalBarrierClosed T := by
  exact And.intro E.thermalConductivityClosed
    (And.intro E.thermalExpansionMismatchClosed E.cyclicOxidationClosed)

end MaterialsEngineeringCoatingTechnologyFoundation
end HautevilleHouse