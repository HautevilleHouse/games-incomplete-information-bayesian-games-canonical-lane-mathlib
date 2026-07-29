import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesIncompleteInformationBayesianGamesCanonicalLaneLean

structure AuctionTheoryPackage {B : BayesianGamePackage}
    {Eq : BayesNashEquilibriumPackage B}
    {M : MechanismDesignPackage B Eq} where
  auctionFormat : Type u
  privateValuesModel : Prop
  revenueEquivalence : Prop
  optimalAuctionDesign : Prop
  biddingStrategyCharacterization : Prop

structure AuctionTheoryEvidence {B : BayesianGamePackage}
    {Eq : BayesNashEquilibriumPackage B}
    {M : MechanismDesignPackage B Eq} (A : AuctionTheoryPackage B Eq M) where
  privateValuesModelClosed : A.privateValuesModel
  revenueEquivalenceClosed : A.revenueEquivalence
  optimalAuctionDesignClosed : A.optimalAuctionDesign
  biddingStrategyCharacterizationClosed : A.biddingStrategyCharacterization

def AuctionTheoryClosed {B : BayesianGamePackage}
    {Eq : BayesNashEquilibriumPackage B}
    {M : MechanismDesignPackage B Eq} (A : AuctionTheoryPackage B Eq M) : Prop :=
  A.privateValuesModel ∧ A.revenueEquivalence ∧ A.optimalAuctionDesign ∧ A.biddingStrategyCharacterization

theorem auction_theory_closed_from_evidence {B : BayesianGamePackage}
    {Eq : BayesNashEquilibriumPackage B}
    {M : MechanismDesignPackage B Eq} (A : AuctionTheoryPackage B Eq M)
    (E : AuctionTheoryEvidence A) : AuctionTheoryClosed A := by
  exact And.intro E.privateValuesModelClosed
    (And.intro E.revenueEquivalenceClosed
      (And.intro E.optimalAuctionDesignClosed E.biddingStrategyCharacterizationClosed))

end GamesIncompleteInformationBayesianGamesCanonicalLaneLean
end HautevilleHouse