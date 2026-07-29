import GamesIncompleteInformationBayesianGamesCanonicalLaneLean.GameObjects

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure InformationStructurePackage where
  typeSpace : Prop
  beliefHierarchies : Prop
  commonKnowledge : Prop
  conditionalProbabilityConsistency : Prop

structure InformationStructureEvidence (I : InformationStructurePackage) where
  typeSpaceClosed : I.typeSpace
  beliefHierarchiesClosed : I.beliefHierarchies
  commonKnowledgeClosed : I.commonKnowledge
  conditionalProbabilityConsistencyClosed : I.conditionalProbabilityConsistency

def InformationStructureClosed (I : InformationStructurePackage) : Prop :=
  I.typeSpace ∧ I.beliefHierarchies ∧ I.commonKnowledge ∧ I.conditionalProbabilityConsistency

theorem information_structure_closed_from_evidence (I : InformationStructurePackage) (Ev : InformationStructureEvidence I) : InformationStructureClosed I :=
  And.intro Ev.typeSpaceClosed (And.intro Ev.beliefHierarchiesClosed (And.intro Ev.commonKnowledgeClosed Ev.conditionalProbabilityConsistencyClosed))

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse