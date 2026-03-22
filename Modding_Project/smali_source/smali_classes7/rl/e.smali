.class public Lrl/e;
.super Lrl/a;
.source "ScarInterstitialAd.java"

# interfaces
.implements Lnl/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrl/a<",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
        ">;",
        "Lnl/a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lql/a;Lnl/c;Lcom/unity3d/scar/adapter/common/c;Lcom/unity3d/scar/adapter/common/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p2, p4}, Lrl/a;-><init>(Landroid/content/Context;Lnl/c;Lql/a;Lcom/unity3d/scar/adapter/common/c;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lrl/f;

    .line 5
    .line 6
    invoke-direct {p1, p5, p0}, Lrl/f;-><init>(Lcom/unity3d/scar/adapter/common/g;Lrl/e;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lrl/a;->e:Lrl/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrl/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lrl/a;->f:Lcom/unity3d/scar/adapter/common/c;

    .line 12
    .line 13
    iget-object v0, p0, Lrl/a;->c:Lnl/c;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/unity3d/scar/adapter/common/b;->a(Lnl/c;)Lcom/unity3d/scar/adapter/common/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1, v0}, Lcom/unity3d/scar/adapter/common/c;->handleError(Lcom/unity3d/scar/adapter/common/i;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method protected c(Lcom/google/android/gms/ads/AdRequest;Lnl/b;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lrl/a;->b:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lrl/a;->c:Lnl/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Lnl/c;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lrl/a;->e:Lrl/b;

    .line 10
    .line 11
    check-cast v1, Lrl/f;

    .line 12
    .line 13
    invoke-virtual {v1}, Lrl/f;->e()Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p2, v0, p1, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
