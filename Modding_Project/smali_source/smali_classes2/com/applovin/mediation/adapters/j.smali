.class public final synthetic Lcom/applovin/mediation/adapters/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

.field public final synthetic b:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

.field public final synthetic c:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/mediation/adapters/j;->a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/j;->b:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/mediation/adapters/j;->c:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/j;->a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/j;->b:Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/mediation/adapters/j;->c:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    .line 6
    .line 7
    check-cast p1, Lcom/moloco/sdk/publisher/RewardedInterstitialAd;

    .line 8
    .line 9
    check-cast p2, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, p1, p2}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter;->f(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/moloco/sdk/publisher/RewardedInterstitialAd;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
