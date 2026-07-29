import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

structure ClimateChangeDetectionAttributionPackage where
  temperatureTrend : Prop
  fingerprintPattern : Prop
  naturalForcingVariability : Prop
  anthropogenicSignal : Prop
  detectionStatistic : Prop

structure ClimateChangeDetectionAttributionEvidence (P : ClimateChangeDetectionAttributionPackage) where
  temperatureTrendClosed : P.temperatureTrend
  fingerprintPatternClosed : P.fingerprintPattern
  naturalForcingVariabilityClosed : P.naturalForcingVariability
  anthropogenicSignalClosed : P.anthropogenicSignal
  detectionStatisticClosed : P.detectionStatistic

def ClimateChangeDetectionAttributionClosed (P : ClimateChangeDetectionAttributionPackage) : Prop :=
  P.temperatureTrend ∧ P.fingerprintPattern ∧ P.naturalForcingVariability ∧ P.anthropogenicSignal ∧ P.detectionStatistic

theorem climate_change_detection_attribution_closed_from_evidence (P : ClimateChangeDetectionAttributionPackage) (E : ClimateChangeDetectionAttributionEvidence P) :
    ClimateChangeDetectionAttributionClosed P := by
  exact And.intro E.temperatureTrendClosed
    (And.intro E.fingerprintPatternClosed
      (And.intro E.naturalForcingVariabilityClosed
        (And.intro E.anthropogenicSignalClosed E.detectionStatisticClosed)))

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse