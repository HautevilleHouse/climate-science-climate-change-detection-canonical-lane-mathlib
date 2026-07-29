import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

structure ClimateAdmittedObject where
  targetSystem : Type
  detectionSignal : String
  milankovitchCyclesAccounted : Prop
  dansgaardOeschgerEventsAccounted : Prop
  isotopicPaleothermometryValidated : Prop
  energyBalanceModelValidated : Prop
  conclusion : detectionSignal = "climate_change_detected"

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.detectionSignal = "climate_change_detected"

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse