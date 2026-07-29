import canonicalLaneMathlib.AdmissibleClass
import GamesIncompleteInformationBayesianGamesCanonicalLaneLean.BayesianNashEquilibrium

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure Auction (P : Type) (V : Type) where
  valuation : P → V → ℝ
  bid : P → V → ℝ
  allocation : (P → ℝ) → P
  payment : P → ℝ → ℝ

def BayesianAuctionGame (A : Auction P V) : BayesianGame P (ℝ → ℝ) (PlayerType P) :=
  { actionSpace := λ p b => True,
    payoff := λ p v b => A.payment p (b v),
    commonPrior := True }

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse