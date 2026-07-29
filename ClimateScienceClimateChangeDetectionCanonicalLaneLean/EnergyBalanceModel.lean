import canonicalLaneMathlib.AdmissibleClass

/-!
# Energy Balance Model Package
-/

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarForcing : Float
  albedo : Float
  greenhouseForcing : Float
  heatCapacity : Float
  equilibriumTemperature : Float
  radiativeBalanceEquation : Prop
  feedbackAnalysis : Prop
  climateSensitivity : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  radiativeBalanceEquationClosed : E.radiativeBalanceEquation
  feedbackAnalysisClosed : E.feedbackAnalysis
  climateSensitivityClosed : E.climateSensitivity

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.radiativeBalanceEquation ∧ E.feedbackAnalysis ∧ E.climateSensitivity

theorem energy_balance_model_closed_from_evidence
    (E : EnergyBalanceModelPackage) (Ev : EnergyBalanceModelEvidence E) :
    EnergyBalanceModelClosed E := by
  exact And.intro Ev.radiativeBalanceEquationClosed
    (And.intro Ev.feedbackAnalysisClosed Ev.climateSensitivityClosed)

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse
