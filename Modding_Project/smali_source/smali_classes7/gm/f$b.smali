.class final Lgm/f$b;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgm/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lgm/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/ads/networks/gam/n0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgm/f;Lio/bidmachine/ads/networks/gam/n0;)V
    .locals 0
    .param p1    # Lgm/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/n0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgm/f$b;->a:Lgm/f;

    .line 5
    .line 6
    iput-object p2, p0, Lgm/f$b;->b:Lio/bidmachine/ads/networks/gam/n0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lgm/f$b;->b:Lio/bidmachine/ads/networks/gam/n0;

    .line 2
    .line 3
    iget-object v1, p0, Lgm/f$b;->a:Lgm/f;

    .line 4
    .line 5
    new-instance v2, Lfr/a;

    .line 6
    .line 7
    sget-object v3, Lfr/a;->q:Lfr/a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v2, v3, v4, p1}, Lfr/a;-><init>(Lfr/a;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1, v2}, Lio/bidmachine/ads/networks/gam/n0;->b(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lfr/a;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/rewarded/RewardedAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lgm/f$b;->a:Lgm/f;

    invoke-static {v0, p1}, Lgm/f;->L(Lgm/f;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 3
    iget-object p1, p0, Lgm/f$b;->a:Lgm/f;

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->C()V

    .line 4
    iget-object p1, p0, Lgm/f$b;->b:Lio/bidmachine/ads/networks/gam/n0;

    iget-object v0, p0, Lgm/f$b;->a:Lgm/f;

    invoke-interface {p1, v0}, Lio/bidmachine/ads/networks/gam/n0;->a(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lgm/f$b;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
