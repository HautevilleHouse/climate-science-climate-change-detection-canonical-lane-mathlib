import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

structure IceCorePaleothermometryPackage where
  deuteriumExcess : ℝ
  oxygen18Ratio : ℝ
  temperatureReconstruction : ℝ
  depthProfile : ℝ → ℝ
  accumulationRate : ℝ
  gasAges : ℝ → ℝ
  iceAges : ℝ → ℝ

structure IceCorePaleothermometryEvidence (I : IceCorePaleothermometryPackage) where
  deuteriumExcessClosed : I.deuteriumExcess > 0
  oxygen18RatioClosed : I.oxygen18Ratio < 0
  reconstructionConsistent : I.temperatureReconstruction = 33.4 * I.oxygen18Ratio + 1.2
  gasAgeModelClosed : I.gasAges = I.iceAges - 5000

def IceCorePaleothermometryClosed (I : IceCorePaleothermometryPackage) : Prop :=
  I.deuteriumExcess > 0 ∧ I.oxygen18Ratio < 0 ∧
  I.temperatureReconstruction = 33.4 * I.oxygen18Ratio + 1.2 ∧
  I.gasAges = I.iceAges - 5000

theorem ice_core_paleothermometry_closed_from_evidence (I : IceCorePaleothermometryPackage)
    (E : IceCorePaleothermometryEvidence I) : IceCorePaleothermometryClosed I := by
  exact And.intro E.deuteriumExcessClosed (And.intro E.oxygen18RatioClosed
    (And.intro E.reconstructionConsistent E.gasAgeModelClosed))

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse
