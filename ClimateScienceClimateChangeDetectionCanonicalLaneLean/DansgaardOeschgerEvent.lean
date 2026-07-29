import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

structure DansgaardOeschgerEventPackage where
  abruptWarmingMagnitude : ℝ
  warmingDuration : ℝ
  coolingDuration : ℝ
  timing : ℝ
  stadialDuration : ℝ
  interstadialDuration : ℝ
  isotopeExcursion : ℝ

structure DansgaardOeschgerEventEvidence (D : DansgaardOeschgerEventPackage) where
  abruptWarmingClosed : D.abruptWarmingMagnitude ≥ 8 ∧ D.abruptWarmingMagnitude ≤ 15
  warmingDurationClosed : D.warmingDuration < 100
  coolingDurationClosed : D.coolingDuration > 500
  timingClosed : D.timing ≥ 0
  isotopeExcursionClosed : D.isotopeExcursion < 0

def DansgaardOeschgerEventClosed (D : DansgaardOeschgerEventPackage) : Prop :=
  (D.abruptWarmingMagnitude ≥ 8 ∧ D.abruptWarmingMagnitude ≤ 15) ∧
  D.warmingDuration < 100 ∧ D.coolingDuration > 500 ∧
  D.timing ≥ 0 ∧ D.isotopeExcursion < 0

theorem dansgaard_oeschger_event_closed_from_evidence
    (D : DansgaardOeschgerEventPackage)
    (E : DansgaardOeschgerEventEvidence D) : DansgaardOeschgerEventClosed D := by
  exact And.intro E.abruptWarmingClosed (And.intro E.warmingDurationClosed
    (And.intro E.coolingDurationClosed (And.intro E.timingClosed E.isotopeExcursionClosed)))

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse
