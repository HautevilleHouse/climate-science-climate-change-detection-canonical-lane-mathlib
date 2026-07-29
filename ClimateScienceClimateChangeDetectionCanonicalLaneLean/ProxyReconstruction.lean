import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateChangeDetectionCanonicalLaneLean

structure ProxyReconstructionPackage where
  treeRingWidth : Prop
  iceCoreChemistry : Prop
  sedimentVarves : Prop
  coralGrowth : Prop
  speleothemRecords : Prop

structure ProxyReconstructionEvidence (P : ProxyReconstructionPackage) where
  treeRingWidthClosed : P.treeRingWidth
  iceCoreChemistryClosed : P.iceCoreChemistry
  sedimentVarvesClosed : P.sedimentVarves
  coralGrowthClosed : P.coralGrowth
  speleothemRecordsClosed : P.speleothemRecords

def ProxyReconstructionClosed (P : ProxyReconstructionPackage) : Prop :=
  P.treeRingWidth ∧ P.iceCoreChemistry ∧ P.sedimentVarves ∧ P.coralGrowth ∧ P.speleothemRecords

theorem proxy_reconstruction_closed_from_evidence (P : ProxyReconstructionPackage) (E : ProxyReconstructionEvidence P) : ProxyReconstructionClosed P := by
  exact And.intro E.treeRingWidthClosed (And.intro E.iceCoreChemistryClosed (And.intro E.sedimentVarvesClosed (And.intro E.coralGrowthClosed E.speleothemRecordsClosed)))

end ClimateScienceClimateChangeDetectionCanonicalLaneLean
end HautevilleHouse