import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure RevelationPrinciplePackage {G : BayesianGame} (E : MechanismsPackage G) where
  directMechanismExists : Prop
  truthTellingEquilibrium : Prop
  payoffEquivalenceToOriginal : Prop

structure RevelationPrincipleEvidence {G : BayesianGame} {E : MechanismsPackage G}
    (R : RevelationPrinciplePackage E) where
  directMechanismExistsClosed : R.directMechanismExists
  truthTellingEquilibriumClosed : R.truthTellingEquilibrium
  payoffEquivalenceToOriginalClosed : R.payoffEquivalenceToOriginal

def RevelationPrincipleClosed {G : BayesianGame} {E : MechanismsPackage G}
    (R : RevelationPrinciplePackage E) : Prop :=
  R.directMechanismExists ∧ R.truthTellingEquilibrium ∧ R.payoffEquivalenceToOriginal

theorem revelation_principle_closed_from_evidence
    {G : BayesianGame} {E : MechanismsPackage G}
    (R : RevelationPrinciplePackage E) (Ev : RevelationPrincipleEvidence R) :
    RevelationPrincipleClosed R := by
  exact And.intro Ev.directMechanismExistsClosed
    (And.intro Ev.truthTellingEquilibriumClosed Ev.payoffEquivalenceToOriginalClosed)

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse