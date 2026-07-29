import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure BayesianNashEquilibriumPackage {G : BayesianGame} where
  strategies : (p : G.Players) → G.Types p → G.Actions p
  incentiveConstraints : Prop
  exAnteExpectedPayoffs : Prop
  exPostStability : Prop

structure BayesianNashEvidence {G : BayesianGame} (B : BayesianNashEquilibriumPackage G) where
  incentiveConstraintsClosed : B.incentiveConstraints
  exAnteExpectedPayoffsClosed : B.exAnteExpectedPayoffs
  exPostStabilityClosed : B.exPostStability

def BayesianNashClosed {G : BayesianGame} (B : BayesianNashEquilibriumPackage G) : Prop :=
  B.incentiveConstraints ∧ B.exAnteExpectedPayoffs ∧ B.exPostStability

theorem bayesian_nash_closed_from_evidence
    {G : BayesianGame} (B : BayesianNashEquilibriumPackage G) (E : BayesianNashEvidence B) :
    BayesianNashClosed B := by
  exact And.intro E.incentiveConstraintsClosed
    (And.intro E.exAnteExpectedPayoffsClosed E.exPostStabilityClosed)

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse