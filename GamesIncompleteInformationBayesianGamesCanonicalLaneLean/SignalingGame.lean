import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure SignalingGamePackage {B : BayesianGamePackage}
    {Eq : BayesNashEquilibriumPackage B} where
  senderType : Type u
  receiverType : Type v
  signalSpace : Type w
  signalingStrategy : Type x
  responseStrategy : Type y
  perfectBayesianEquilibrium : Prop
  intuitiveCriterion : Prop

structure SignalingGameEvidence {B : BayesianGamePackage}
    {Eq : BayesNashEquilibriumPackage B} (S : SignalingGamePackage B Eq) where
  perfectBayesianEquilibriumClosed : S.perfectBayesianEquilibrium
  intuitiveCriterionClosed : S.intuitiveCriterion

def SignalingGameClosed {B : BayesianGamePackage}
    {Eq : BayesNashEquilibriumPackage B} (S : SignalingGamePackage B Eq) : Prop :=
  S.perfectBayesianEquilibrium ∧ S.intuitiveCriterion

theorem signaling_game_closed_from_evidence {B : BayesianGamePackage}
    {Eq : BayesNashEquilibriumPackage B} (S : SignalingGamePackage B Eq)
    (E : SignalingGameEvidence S) : SignalingGameClosed S := by
  exact And.intro E.perfectBayesianEquilibriumClosed E.intuitiveCriterionClosed

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse