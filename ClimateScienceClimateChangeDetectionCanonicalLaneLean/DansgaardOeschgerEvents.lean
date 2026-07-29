import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetection

structure DansgaardOeschgerEvent where
  warmingRate : ℝ
  coolingRate : ℝ
  amplitude : ℝ
  duration : ℝ
  occurrenceCount : ℕ

structure DansgaardOeschgerEvidence (E : DansgaardOeschgerEvent) where
  warmingRatePositive : E.warmingRate > 0
  coolingRateNegative : E.coolingRate < 0
  amplitudeClosed : E.amplitude > 0
  durationClosed : E.duration > 0
  occurrenceCountClosed : E.occurrenceCount ≥ 20

def DansgaardOeschgerClosed (E : DansgaardOeschgerEvent) : Prop :=
  E.warmingRate > 0 ∧ E.coolingRate < 0 ∧ E.amplitude > 0 ∧ E.duration > 0 ∧ E.occurrenceCount ≥ 20

theorem dansgaard_oeschger_closed_from_evidence (E : DansgaardOeschgerEvent) (Ev : DansgaardOeschgerEvidence E) :
    DansgaardOeschgerClosed E := by
  exact And.intro Ev.warmingRatePositive
    (And.intro Ev.coolingRateNegative
      (And.intro Ev.amplitudeClosed
        (And.intro Ev.durationClosed Ev.occurrenceCountClosed)))

end ClimateScienceClimateChangeDetection
end HautevilleHouse
