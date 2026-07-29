import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure MechanismsPackage (G : BayesianGame) where
  outcomes : Type u
  allocationRule : (p : G.Players) → G.Types p → G.Actions p → outcomes
  paymentRule : (p : G.Players) → G.Types p → G.Actions p → ℝ
  mechanismFeasible : Prop

structure MechanismsEvidence {G : BayesianGame} (M : MechanismsPackage G) where
  mechanismFeasibleClosed : M.mechanismFeasible

def MechanismsClosed {G : BayesianGame} (M : MechanismsPackage G) : Prop :=
  M.mechanismFeasible

theorem mechanisms_closed_from_evidence
    {G : BayesianGame} (M : MechanismsPackage G) (E : MechanismsEvidence M) :
    MechanismsClosed M :=
  E.mechanismFeasibleClosed

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse