import canonicalLaneMathlib.AdmissibleClass

/-!
# Detection and Attribution Package
-/

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

structure DetectionAttributionPackage where
  observationalRecord : String
  modelSimulations : String
  fingerprintMethod : Prop
  hypothesisTesting : Prop
  optimalFingerprint : Prop
  scalingFactor : Float
  detectionThreshold : Float
  attributionConclusion : Prop

structure DetectionAttributionEvidence (D : DetectionAttributionPackage) where
  fingerprintMethodClosed : D.fingerprintMethod
  hypothesisTestingClosed : D.hypothesisTesting
  optimalFingerprintClosed : D.optimalFingerprint
  attributionConclusionClosed : D.attributionConclusion

def DetectionAttributionClosed (D : DetectionAttributionPackage) : Prop :=
  D.fingerprintMethod ∧ D.hypothesisTesting ∧ D.optimalFingerprint ∧ D.attributionConclusion

theorem detection_attribution_closed_from_evidence
    (D : DetectionAttributionPackage) (E : DetectionAttributionEvidence D) :
    DetectionAttributionClosed D := by
  exact And.intro E.fingerprintMethodClosed
    (And.intro E.hypothesisTestingClosed
      (And.intro E.optimalFingerprintClosed E.attributionConclusionClosed))

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse
