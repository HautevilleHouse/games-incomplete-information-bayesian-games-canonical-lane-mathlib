import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure BayesianAdmittedObject where
  game : Type
  players : Type
  types : Type
  strategies : Type
  equilibrium : Prop
  conclusion : equilibrium

def BayesianWitnessClosed (O : BayesianAdmittedObject) : Prop :=
  O.equilibrium

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse