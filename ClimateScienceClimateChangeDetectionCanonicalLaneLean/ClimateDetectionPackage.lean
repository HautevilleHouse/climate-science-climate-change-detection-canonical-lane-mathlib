import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceClimateChangeDetection.EnergyBalanceModel
import ClimateScienceClimateChangeDetection.IsotopicPaleothermometry
import ClimateScienceClimateChangeDetection.MilankovitchCycles
import ClimateScienceClimateChangeDetection.DansgaardOeschgerEvents

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetection

structure ClimateDetectionPackage where
  energyBalanceModel : EnergyBalanceModel
  isotopicData : IsotopicPaleothermometryData
  milankovitchData : MilankovitchCycles
  dansgaardOeschgerEvent : DansgaardOeschgerEvent

structure ClimateDetectionEvidence (C : ClimateDetectionPackage) where
  energyBalanceClosed : EnergyBalanceModelClosed C.energyBalanceModel
  isotopicClosed : IsotopicPaleothermometryClosed C.isotopicData
  milankovitchClosed : MilankovitchCyclesClosed C.milankovitchData
  dansgaardOeschgerClosed : DansgaardOeschgerClosed C.dansgaardOeschgerEvent

def ClimateDetectionClosed (C : ClimateDetectionPackage) : Prop :=
  EnergyBalanceModelClosed C.energyBalanceModel ∧
  IsotopicPaleothermometryClosed C.isotopicData ∧
  MilankovitchCyclesClosed C.milankovitchData ∧
  DansgaardOeschgerClosed C.dansgaardOeschgerEvent

theorem climate_detection_closed_from_evidence (C : ClimateDetectionPackage) (E : ClimateDetectionEvidence C) :
    ClimateDetectionClosed C := by
  exact And.intro E.energyBalanceClosed
    (And.intro E.isotopicClosed
      (And.intro E.milankovitchClosed E.dansgaardOeschgerClosed))

end ClimateScienceClimateChangeDetection
end HautevilleHouse
