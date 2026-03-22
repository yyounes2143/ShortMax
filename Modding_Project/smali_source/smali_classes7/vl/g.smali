.class public Lvl/g;
.super Lvl/a;
.source "ScarRewardedAd.java"

# interfaces
.implements Lnl/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvl/a<",
        "Lcom/google/android/gms/ads/rewarded/RewardedAd;",
        ">;",
        "Lnl/a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lul/a;Lnl/c;Lcom/unity3d/scar/adapter/common/c;Lcom/unity3d/scar/adapter/common/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p2, p4}, Lvl/a;-><init>(Landroid/content/Context;Lnl/c;Lul/a;Lcom/unity3d/scar/adapter/common/c;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lvl/h;

    .line 5
    .line 6
    invoke-direct {p1, p5, p0}, Lvl/h;-><init>(Lcom/unity3d/scar/adapter/common/h;Lvl/g;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lvl/a;->e:Lvl/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvl/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 6
    .line 7
    iget-object v1, p0, Lvl/a;->e:Lvl/b;

    .line 8
    .line 9
    check-cast v1, Lvl/h;

    .line 10
    .line 11
    invoke-virtual {v1}, Lvl/h;->f()Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lvl/a;->f:Lcom/unity3d/scar/adapter/common/c;

    .line 20
    .line 21
    iget-object v0, p0, Lvl/a;->c:Lnl/c;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/unity3d/scar/adapter/common/b;->a(Lnl/c;)Lcom/unity3d/scar/adapter/common/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p1, v0}, Lcom/unity3d/scar/adapter/common/c;->handleError(Lcom/unity3d/scar/adapter/common/i;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method protected c(Lcom/google/android/gms/ads/AdRequest;Lnl/b;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lvl/a;->b:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lvl/a;->c:Lnl/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Lnl/c;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lvl/a;->e:Lvl/b;

    .line 10
    .line 11
    check-cast v1, Lvl/h;

    .line 12
    .line 13
    invoke-virtual {v1}, Lvl/h;->e()Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p2, v0, p1, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
