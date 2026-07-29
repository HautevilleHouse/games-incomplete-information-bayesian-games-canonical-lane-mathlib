import GamesIncompleteInformationBayesianGamesCanonicalLaneLean.GameObjects

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure EquilibriumPackage where
  bayesianNashExistence : Prop
  purification : Prop
  sequentialEquilibrium : Prop

structure EquilibriumEvidence (E : EquilibriumPackage) where
  bayesianNashExistenceClosed : E.bayesianNashExistence
  purificationClosed : E.purification
  sequentialEquilibriumClosed : E.sequentialEquilibrium

def EquilibriumClosed (E : EquilibriumPackage) : Prop :=
  E.bayesianNashExistence ∧ E.purification ∧ E.sequentialEquilibrium

theorem equilibrium_closed_from_evidence (E : EquilibriumPackage) (Ev : EquilibriumEvidence E) : EquilibriumClosed E :=
  And.intro Ev.bayesianNashExistenceClosed (And.intro Ev.purificationClosed Ev.sequentialEquilibriumClosed)

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse