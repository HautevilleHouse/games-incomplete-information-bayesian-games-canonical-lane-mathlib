import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure GameSpace where
  players : Type u
  actions : Type v
  types : Type w
  beliefs : Type x
  payoff : Type y

structure BayesianAdmittedObject where
  space : GameSpace
  finitePlayers : Prop
  finiteActions : Prop
  commonPrior : Prop
  bayesianNashEquilibrium : Prop
  conclusion : bayesianNashEquilibrium

def BayesianWitnessClosed (O : BayesianAdmittedObject) : Prop :=
  O.bayesianNashEquilibrium

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse