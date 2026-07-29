import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

structure DetectionAttributionPackage where
  globalMeanTemperature : ℝ
  co2Concentration : ℝ
  aerosolForcing : ℝ
  solarForcing : ℝ
  volcanicForcing : ℝ
  naturalVariability : ℝ
  anthropogenicSignalDetected : Prop

structure DetectionAttributionEvidence (D : DetectionAttributionPackage) where
  temperatureClosed : D.globalMeanTemperature = 14.8
  co2Closed : D.co2Concentration = 420
  signalConsistent : D.anthropogenicSignalDetected ↔ D.globalMeanTemperature - D.naturalVariability > 0.5
  forcingsSatisfied : D.co2Concentration * 0.01 - D.aerosolForcing * 0.02 = D.globalMeanTemperature - D.naturalVariability - D.solarForcing + D.volcanicForcing

def DetectionAttributionClosed (D : DetectionAttributionPackage) : Prop :=
  D.globalMeanTemperature = 14.8 ∧ D.co2Concentration = 420 ∧
  (D.anthropogenicSignalDetected ↔ D.globalMeanTemperature - D.naturalVariability > 0.5) ∧
  D.co2Concentration * 0.01 - D.aerosolForcing * 0.02 = D.globalMeanTemperature - D.naturalVariability - D.solarForcing + D.volcanicForcing

theorem detection_attribution_closed_from_evidence (D : DetectionAttributionPackage)
    (E : DetectionAttributionEvidence D) : DetectionAttributionClosed D := by
  exact And.intro E.temperatureClosed (And.intro E.co2Closed
    (And.intro E.signalConsistent E.forcingsSatisfied))

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse
