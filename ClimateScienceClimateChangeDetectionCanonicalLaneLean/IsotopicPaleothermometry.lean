import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetection

structure IsotopicPaleothermometryData where
  deltaO18 : ℝ
  temperature : ℝ
  equilibriumFractionation : ℝ
  calibrationSlope : ℝ
  calibrationIntercept : ℝ

structure IsotopicPaleothermometryEvidence (D : IsotopicPaleothermometryData) where
  deltaO18Measured : D.deltaO18 ≠ 0
  equilibriumFractionationComputed : D.equilibriumFractionation = D.calibrationSlope * D.temperature + D.calibrationIntercept
  calibrationValid : D.calibrationSlope < 0

def IsotopicPaleothermometryClosed (D : IsotopicPaleothermometryData) : Prop :=
  D.deltaO18 ≠ 0 ∧ D.equilibriumFractionation = D.calibrationSlope * D.temperature + D.calibrationIntercept ∧ D.calibrationSlope < 0

theorem isotopic_paleothermometry_closed_from_evidence (D : IsotopicPaleothermometryData) (E : IsotopicPaleothermometryEvidence D) :
    IsotopicPaleothermometryClosed D := by
  exact And.intro E.deltaO18Measured (And.intro E.equilibriumFractionationComputed E.calibrationValid)

end ClimateScienceClimateChangeDetection
end HautevilleHouse
