import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

structure MilankovitchOrbitalForcingPackage where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolationCurve : ℝ → ℝ
  obliquityPeriod : ℝ
  precessionPeriod : ℝ
  eccentricityPeriod : ℝ

structure MilankovitchOrbitalForcingEvidence (M : MilankovitchOrbitalForcingPackage) where
  eccentricityClosed : M.eccentricity > 0 ∧ M.eccentricity < 0.06
  obliquityClosed : M.obliquity = 23.5
  precessionClosed : M.precession > 0
  insolationDerived : M.insolationCurve 65 = 1365 * (1 + M.eccentricity * Real.sin M.precession)

def MilankovitchOrbitalForcingClosed (M : MilankovitchOrbitalForcingPackage) : Prop :=
  (M.eccentricity > 0 ∧ M.eccentricity < 0.06) ∧ M.obliquity = 23.5 ∧
  M.precession > 0 ∧ M.insolationCurve 65 = 1365 * (1 + M.eccentricity * Real.sin M.precession)

theorem milankovitch_orbital_forcing_closed_from_evidence
    (M : MilankovitchOrbitalForcingPackage)
    (E : MilankovitchOrbitalForcingEvidence M) : MilankovitchOrbitalForcingClosed M := by
  exact And.intro E.eccentricityClosed (And.intro E.obliquityClosed
    (And.intro E.precessionClosed E.insolationDerived))

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse
