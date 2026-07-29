import canonicalLaneMathlib.AdmissibleClass
import GamesIncompleteInformationBayesianGamesCanonicalLaneLean.BayesianEquilibrium
import GamesIncompleteInformationBayesianGamesCanonicalLaneLean.MechanismDesign
import GamesIncompleteInformationBayesianGamesCanonicalLaneLean.SignalingGames

/-!
# Final Theorem Closure for Games of Incomplete Information Bayesian Games
This module provides the constrained closure for the admissible class.
-/

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

/-- The closure structure for the Bayesian Games domain. -/
def ConstrainedBayesianGamesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

/-- The endgame proof: the closure holds for any admissible class. -/
theorem constrained_bayesian_games_endgame (A : AdmissibleClass) :
    ConstrainedBayesianGamesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse