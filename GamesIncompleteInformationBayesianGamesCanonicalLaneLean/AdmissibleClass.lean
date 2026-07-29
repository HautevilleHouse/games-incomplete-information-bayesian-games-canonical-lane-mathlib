import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure GamesAdmittedObject where
  game : Type
  equilibrium : Prop
  closureWitness : equilibrium

def GamesWitnessClosed (O : GamesAdmittedObject) : Prop :=
  O.equilibrium

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse