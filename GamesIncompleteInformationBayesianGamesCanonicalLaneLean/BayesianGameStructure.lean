import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure PlayerType (P : Type) where
  player : P
  typeSpace : Type
  beliefDistribution : typeSpace → Prop

definition PlayerBelief (P : Type) (T : PlayerType P) (t : T.typeSpace) : Prop :=
  T.beliefDistribution t

structure BayesianGame (P : Type) (A : Type) (T : PlayerType P) where
  actionSpace : P → A → Prop
  payoff : P → T.typeSpace → A → ℝ
  commonPrior : Prop

def BayesianGameAdmissible (G : BayesianGame P A T) : Prop :=
  G.commonPrior

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse