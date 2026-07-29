import canonicalLaneMathlib.AdmissibleClass

/-!
# Ice Core Paleotemperature Package
-/

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

structure IceCorePaleotemperaturePackage where
  coreSite : String
  depthResolution : Float
  isotopeRatio : String
  temperatureProxy : Prop
  ageModel : Prop
  orbitalTuning : Prop
  millennialVariability : Prop

structure IceCorePaleotemperatureEvidence (I : IceCorePaleotemperaturePackage) where
  temperatureProxyClosed : I.temperatureProxy
  ageModelClosed : I.ageModel
  orbitalTuningClosed : I.orbitalTuning
  millennialVariabilityClosed : I.millennialVariability

def IceCorePaleotemperatureClosed (I : IceCorePaleotemperaturePackage) : Prop :=
  I.temperatureProxy ∧ I.ageModel ∧ I.orbitalTuning ∧ I.millennialVariability

theorem ice_core_paleotemperature_closed_from_evidence
    (I : IceCorePaleotemperaturePackage) (E : IceCorePaleotemperatureEvidence I) :
    IceCorePaleotemperatureClosed I := by
  exact And.intro E.temperatureProxyClosed
    (And.intro E.ageModelClosed
      (And.intro E.orbitalTuningClosed E.millennialVariabilityClosed))

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse
