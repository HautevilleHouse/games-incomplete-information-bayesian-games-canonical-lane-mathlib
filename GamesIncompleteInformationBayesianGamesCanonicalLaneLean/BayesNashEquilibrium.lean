import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure BayesNashEquilibriumPackage {B : BayesianGamePackage} where
  strategyProfile : Type u
  bestResponseCondition : Prop
  interimPayoff : Type v
  existenceOfEquilibrium : Prop
  strategyFeasibility : Prop

structure BayesNashEquilibriumEvidence {B : BayesianGamePackage}
    (Eq : BayesNashEquilibriumPackage B) where
  bestResponseConditionClosed : Eq.bestResponseCondition
  interimPayoffClosed : Eq.interimPayoff
  existenceOfEquilibriumClosed : Eq.existenceOfEquilibrium
  strategyFeasibilityClosed : Eq.strategyFeasibility

def BayesNashEquilibriumClosed {B : BayesianGamePackage}
    (Eq : BayesNashEquilibriumPackage B) : Prop :=
  Eq.bestResponseCondition ∧ Eq.interimPayoff ∧ Eq.existenceOfEquilibrium ∧ Eq.strategyFeasibility

theorem bayes_nash_equilibrium_closed_from_evidence {B : BayesianGamePackage}
    (Eq : BayesNashEquilibriumPackage B) (E : BayesNashEquilibriumEvidence Eq) :
    BayesNashEquilibriumClosed Eq := by
  exact And.intro E.bestResponseConditionClosed
    (And.intro E.interimPayoffClosed
      (And.intro E.existenceOfEquilibriumClosed E.strategyFeasibilityClosed))

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse