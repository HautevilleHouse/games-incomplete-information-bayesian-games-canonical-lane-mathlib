import canonicalLaneMathlib.AdmissibleClass

/-!
# Bayesian Equilibrium Package
This module defines Bayesian Nash equilibrium concepts for games with incomplete information.
-/

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure BayesianGamePackage where
  playerCount : Nat
  typeSpace : Type u
  actionSpace : Type v
  beliefSystem : Type w
  utilityFunction : Type x
  commonPrior : Prop
  payoffStructure : Prop

structure BayesianNashEquilibriumPackage {G : BayesianGamePackage} where
  strategyProfile : Type u
  bestResponseProperty : Prop
  interimEfficiency : Prop
  exAnteEfficiency : Prop
  equilibriumExists : Prop

structure BayesianNashEquilibriumEvidence {G : BayesianGamePackage}
    (E : BayesianNashEquilibriumPackage G) where
  bestResponsePropertyClosed : E.bestResponseProperty
  interimEfficiencyClosed : E.interimEfficiency
  exAnteEfficiencyClosed : E.exAnteEfficiency
  equilibriumExistsClosed : E.equilibriumExists

def BayesianNashEquilibriumClosed {G : BayesianGamePackage}
    (E : BayesianNashEquilibriumPackage G) : Prop :=
  E.bestResponseProperty ∧ E.interimEfficiency ∧ E.exAnteEfficiency ∧ E.equilibriumExists

theorem bayesian_nash_equilibrium_closed_from_evidence
    {G : BayesianGamePackage} (E : BayesianNashEquilibriumPackage G)
    (Ev : BayesianNashEquilibriumEvidence E) : BayesianNashEquilibriumClosed E := by
  exact And.intro Ev.bestResponsePropertyClosed
    (And.intro Ev.interimEfficiencyClosed
      (And.intro Ev.exAnteEfficiencyClosed Ev.equilibriumExistsClosed))

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse