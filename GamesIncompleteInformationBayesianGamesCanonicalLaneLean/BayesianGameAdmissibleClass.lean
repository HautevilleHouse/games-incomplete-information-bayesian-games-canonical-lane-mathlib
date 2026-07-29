import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure BayesianAdmittedObject where
  players : Type u
  types : players -> Type v
  actions : players -> Type w
  payoff : (p : players) -> types p -> (a : actions p) -> ℝ
  prior : (p : players) -> types p -> ℝ
  commonPrior : Prop
  priorConsistency : commonPrior

structure BayesianAdmissibleClass where
  object : BayesianAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : BayesianAdmissibleClass) : Prop :=
  BayesianWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse