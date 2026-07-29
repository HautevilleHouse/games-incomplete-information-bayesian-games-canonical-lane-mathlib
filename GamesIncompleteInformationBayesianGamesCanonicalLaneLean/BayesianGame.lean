import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure BayesianGamePackage where
  playerSet : Type u
  typeSet : Type v
  actionSet : Type w
  payoffProfile : Type x
  commonPrior : Prop
  typeDistribution : Prop
  payoffFunctionsDefined : Prop
  beliefConsistency : Prop

structure BayesianGameEvidence (B : BayesianGamePackage) where
  commonPriorClosed : B.commonPrior
  typeDistributionClosed : B.typeDistribution
  payoffFunctionsDefinedClosed : B.payoffFunctionsDefined
  beliefConsistencyClosed : B.beliefConsistency

def BayesianGameClosed (B : BayesianGamePackage) : Prop :=
  B.commonPrior ∧ B.typeDistribution ∧ B.payoffFunctionsDefined ∧ B.beliefConsistency

theorem bayesian_game_closed_from_evidence (B : BayesianGamePackage)
    (E : BayesianGameEvidence B) : BayesianGameClosed B := by
  exact And.intro E.commonPriorClosed
    (And.intro E.typeDistributionClosed
      (And.intro E.payoffFunctionsDefinedClosed E.beliefConsistencyClosed))

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse