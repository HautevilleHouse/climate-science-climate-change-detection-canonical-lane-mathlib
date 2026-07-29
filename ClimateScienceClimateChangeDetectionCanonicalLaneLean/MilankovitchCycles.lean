import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetection

structure MilankovitchCycles where
  orbitalEccentricity : ℝ
  axialObliquity : ℝ
  precessionIndex : ℝ
  insolationAnomaly : ℝ

structure MilankovitchCyclesEvidence (M : MilankovitchCycles) where
  orbitalEccentricityClosed : M.orbitalEccentricity > 0
  axialObliquityClosed : M.axialObliquity > 0 ∧ M.axialObliquity < π/2
  precessionIndexClosed : M.precessionIndex ≠ 0
  insolationAnomalyClosed : M.insolationAnomaly = M.orbitalEccentricity * Real.cos M.precessionIndex

def MilankovitchCyclesClosed (M : MilankovitchCycles) : Prop :=
  M.orbitalEccentricity > 0 ∧ M.axialObliquity > 0 ∧ M.axialObliquity < π/2 ∧
  M.precessionIndex ≠ 0 ∧ M.insolationAnomaly = M.orbitalEccentricity * Real.cos M.precessionIndex

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCycles) (E : MilankovitchCyclesEvidence M) :
    MilankovitchCyclesClosed M := by
  exact And.intro E.orbitalEccentricityClosed
    (And.intro (And.left E.axialObliquityClosed)
      (And.intro (And.right E.axialObliquityClosed)
        (And.intro E.precessionIndexClosed E.insolationAnomalyClosed)))

end ClimateScienceClimateChangeDetection
end HautevilleHouse
