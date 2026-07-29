import GamesIncompleteInformationBayesianGamesCanonicalLaneLean.BayesianGameAdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure CommonPriorAssumptionPackage where
  prior : (p : players) -> types p -> ℝ
  commonPriorProperty : Prop
  consistencyWithBeliefs : Prop

structure CommonPriorAssumptionEvidence (C : CommonPriorAssumptionPackage) where
  commonPriorPropertyClosed : C.commonPriorProperty
  consistencyWithBeliefsClosed : C.consistencyWithBeliefs

def CommonPriorAssumptionClosed (C : CommonPriorAssumptionPackage) : Prop :=
  C.commonPriorProperty ∧ C.consistencyWithBeliefs

theorem common_prior_assumption_closed_from_evidence
    (C : CommonPriorAssumptionPackage) (Ev : CommonPriorAssumptionEvidence C) :
    CommonPriorAssumptionClosed C := by
  exact And.intro Ev.commonPriorPropertyClosed Ev.consistencyWithBeliefsClosed

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse