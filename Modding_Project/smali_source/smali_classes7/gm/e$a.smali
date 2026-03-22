.class final Lgm/e$a;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lgm/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/ads/networks/gam/n0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgm/e;Lio/bidmachine/ads/networks/gam/n0;)V
    .locals 0
    .param p1    # Lgm/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/n0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgm/e$a;->a:Lgm/e;

    .line 5
    .line 6
    iput-object p2, p0, Lgm/e$a;->b:Lio/bidmachine/ads/networks/gam/n0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lgm/e$a;->a:Lgm/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lgm/e;->L(Lgm/e;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lgm/e$a;->a:Lgm/e;

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->C()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgm/e$a;->b:Lio/bidmachine/ads/networks/gam/n0;

    .line 12
    .line 13
    iget-object v0, p0, Lgm/e$a;->a:Lgm/e;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Lio/bidmachine/ads/networks/gam/n0;->a(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lgm/e$a;->b:Lio/bidmachine/ads/networks/gam/n0;

    .line 2
    .line 3
    iget-object v1, p0, Lgm/e$a;->a:Lgm/e;

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

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lgm/e$a;->a(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
