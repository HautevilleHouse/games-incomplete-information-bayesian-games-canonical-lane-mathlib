import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BayesianGameClosed (object_to_bayesian_game A)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse