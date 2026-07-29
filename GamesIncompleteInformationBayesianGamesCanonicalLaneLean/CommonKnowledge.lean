import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure BeliefHierarchy (G : BayesianGame) where
  level1Posteriors : G.Players → G.Types G.Players → ℝ
  higherOrder : Nat → Type u
  consistency : Prop

structure CommonKnowledgePackage (G : BayesianGame) where
  hierarchy : BeliefHierarchy G
  commonKnowledgeEvent : Prop
  noTradeTheoremCondition : Prop

structure CommonKnowledgeEvidence {G : BayesianGame} (C : CommonKnowledgePackage G) where
  commonKnowledgeEventClosed : C.commonKnowledgeEvent
  noTradeTheoremConditionClosed : C.noTradeTheoremCondition

def CommonKnowledgeClosed {G : BayesianGame} (C : CommonKnowledgePackage G) : Prop :=
  C.commonKnowledgeEvent ∧ C.noTradeTheoremCondition

theorem common_knowledge_closed_from_evidence
    {G : BayesianGame} (C : CommonKnowledgePackage G) (E : CommonKnowledgeEvidence C) :
    CommonKnowledgeClosed C := by
  exact And.intro E.commonKnowledgeEventClosed E.noTradeTheoremConditionClosed

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse