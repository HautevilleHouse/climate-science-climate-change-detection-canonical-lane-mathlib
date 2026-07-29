import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

structure ClimateProxiesPackage where
  treeRingWidth : ℝ
  iceCoreAccumulation : ℝ
  coralGrowthRate : ℝ
  sedimentLayerThickness : ℝ
  proxyDataClosed : Prop

structure ClimateProxiesEvidence (P : ClimateProxiesPackage) where
  treeRingWidthClosed : P.treeRingWidth > 0
  iceCoreAccumulationClosed : P.iceCoreAccumulation > 0
  coralGrowthRateClosed : P.coralGrowthRate > 0
  sedimentLayerThicknessClosed : P.sedimentLayerThickness > 0
  proxyDataClosedClosed : P.proxyDataClosed

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse