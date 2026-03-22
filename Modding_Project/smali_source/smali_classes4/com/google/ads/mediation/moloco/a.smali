.class public final synthetic Lcom/google/ads/mediation/moloco/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/google/ads/mediation/moloco/MolocoInterstitialAd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/mediation/moloco/MolocoInterstitialAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/moloco/a;->a:Lcom/google/ads/mediation/moloco/MolocoInterstitialAd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/moloco/a;->a:Lcom/google/ads/mediation/moloco/MolocoInterstitialAd;

    .line 2
    .line 3
    check-cast p1, Lcom/moloco/sdk/publisher/InterstitialAd;

    .line 4
    .line 5
    check-cast p2, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Lcom/google/ads/mediation/moloco/MolocoInterstitialAd;->a(Lcom/google/ads/mediation/moloco/MolocoInterstitialAd;Lcom/moloco/sdk/publisher/InterstitialAd;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
