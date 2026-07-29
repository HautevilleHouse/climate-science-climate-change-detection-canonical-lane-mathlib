import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

def ConstrainedClimateDetectionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_detection_endgame (A : AdmissibleClass) :
    ConstrainedClimateDetectionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse
