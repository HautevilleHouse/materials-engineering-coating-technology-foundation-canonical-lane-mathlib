import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCoatingTechnologyFoundation

structure DepositionPackage where
  method : String
  precursor : Type u
  substrateTemperature : Prop
  depositionRate : Prop
  filmMicrostructure : Prop

structure DepositionEvidence (D : DepositionPackage) where
  substrateTemperatureClosed : D.substrateTemperature
  depositionRateClosed : D.depositionRate
  filmMicrostructureClosed : D.filmMicrostructure

def DepositionClosed (D : DepositionPackage) : Prop :=
  D.substrateTemperature ∧ D.depositionRate ∧ D.filmMicrostructure

theorem deposition_closed_from_evidence (D : DepositionPackage) (E : DepositionEvidence D) :
    DepositionClosed D := by
  exact And.intro E.substrateTemperatureClosed
    (And.intro E.depositionRateClosed E.filmMicrostructureClosed)

end MaterialsEngineeringCoatingTechnologyFoundation
end HautevilleHouse