import canonicalLaneMathlib.AdmissibleClass

/-!
# Mechanism Design Package
This module defines mechanism design concepts: revelation principle, incentive compatibility, and implementation.
-/

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure MechanismDesignPackage where
  agentCount : Nat
  typeSpace : Type u
  outcomeSpace : Type v
  socialChoiceFunction : Type w
  mechanism : Type x
  equilibriumConcept : Type y

structure RevelationPrinciplePackage {M : MechanismDesignPackage} where
  directMechanism : Prop
  truthtellingEquilibrium : Prop
  incentiveCompatibility : Prop
  equivalenceHolds : Prop

structure RevelationPrincipleEvidence {M : MechanismDesignPackage}
    (R : RevelationPrinciplePackage M) where
  directMechanismClosed : R.directMechanism
  truthtellingEquilibriumClosed : R.truthtellingEquilibrium
  incentiveCompatibilityClosed : R.incentiveCompatibility
  equivalenceHoldsClosed : R.equivalenceHolds

def RevelationPrincipleClosed {M : MechanismDesignPackage}
    (R : RevelationPrinciplePackage M) : Prop :=
  R.directMechanism ∧ R.truthtellingEquilibrium ∧ R.incentiveCompatibility ∧ R.equivalenceHolds

theorem revelation_principle_closed_from_evidence
    {M : MechanismDesignPackage} (R : RevelationPrinciplePackage M)
    (Ev : RevelationPrincipleEvidence R) : RevelationPrincipleClosed R := by
  exact And.intro Ev.directMechanismClosed
    (And.intro Ev.truthtellingEquilibriumClosed
      (And.intro Ev.incentiveCompatibilityClosed Ev.equivalenceHoldsClosed))

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse