import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure BayesianGame where
  Players : Type u
  Actions : Players → Type v
  Types : Players → Type w
  Payoffs : (p : Players) → (Actions p) → (Types p) → ℝ
  CommonPrior : Prop

type BayesianGameEvidence (G : BayesianGame) where
  commonPriorClosed : G.CommonPrior

def BayesianGameClosed (G : BayesianGame) : Prop :=
  G.CommonPrior

theorem bayesian_game_closed_from_evidence (G : BayesianGame) (E : BayesianGameEvidence G) :
    BayesianGameClosed G :=
  E.commonPriorClosed

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse