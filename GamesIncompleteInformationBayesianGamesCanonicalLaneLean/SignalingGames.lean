import canonicalLaneMathlib.AdmissibleClass

/-!
# Signaling Games Package
This module defines signaling game structures and equilibrium refinements (e.g., perfect Bayesian equilibrium).
-/

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure SignalingGamePackage where
  senderCount : Nat
  receiverCount : Nat
  typeSpace : Type u
  messageSpace : Type v
  actionSpace : Type w
  beliefSystem : Type x
  payoffFunction : Type y

struct PerfectBayesianEquilibriumPackage {G : SignalingGamePackage} where
  strategyProfile : Type u
  beliefConsistency : Prop
  sequentialRationality : Prop
  equilibriumRefined : Prop

struct PerfectBayesianEquilibriumEvidence {G : SignalingGamePackage}
    (P : PerfectBayesianEquilibriumPackage G) where
  beliefConsistencyClosed : P.beliefConsistency
  sequentialRationalityClosed : P.sequentialRationality
  equilibriumRefinedClosed : P.equilibriumRefined

def PerfectBayesianEquilibriumClosed {G : SignalingGamePackage}
    (P : PerfectBayesianEquilibriumPackage G) : Prop :=
  P.beliefConsistency ∧ P.sequentialRationality ∧ P.equilibriumRefined

theorem perfect_bayesian_equilibrium_closed_from_evidence
    {G : SignalingGamePackage} (P : PerfectBayesianEquilibriumPackage G)
    (Ev : PerfectBayesianEquilibriumEvidence P) : PerfectBayesianEquilibriumClosed P := by
  exact And.intro Ev.beliefConsistencyClosed
    (And.intro Ev.sequentialRationalityClosed Ev.equilibriumRefinedClosed)

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse