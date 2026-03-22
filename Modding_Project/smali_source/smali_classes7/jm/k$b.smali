.class final Ljm/k$b;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljm/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljm/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lhm/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljm/k;Lhm/q;)V
    .locals 0
    .param p1    # Ljm/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljm/k$b;->a:Ljm/k;

    .line 5
    .line 6
    iput-object p2, p0, Ljm/k$b;->b:Lhm/q;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Ljm/k$b;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljm/k$b;->d(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljm/k$b;Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljm/k$b;->c(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic c(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljm/k$b;->b:Lhm/q;

    .line 2
    .line 3
    iget-object v1, p0, Ljm/k$b;->a:Ljm/k;

    .line 4
    .line 5
    sget-object v2, Lfr/a;->q:Lfr/a;

    .line 6
    .line 7
    invoke-static {v2, p1}, Ljm/o;->b(Lfr/a;Lcom/google/android/gms/ads/AdError;)Lfr/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, v1, p1}, Lhm/q;->b(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private synthetic d(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljm/o;->e(Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lhm/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Ljm/k$b;->a:Ljm/k;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->C(Lhm/l;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ljm/k$b;->b:Lhm/q;

    .line 11
    .line 12
    iget-object v1, p0, Ljm/k$b;->a:Ljm/k;

    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Lhm/q;->a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lhm/l;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ljm/k$b;->a:Ljm/k;

    .line 2
    .line 3
    new-instance v1, Ljm/l;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ljm/l;-><init>(Ljm/k$b;Lcom/google/android/gms/ads/LoadAdError;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljm/k;->Q(Ljm/k;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/rewarded/RewardedAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Ljm/k$c;

    iget-object v1, p0, Ljm/k$b;->a:Ljm/k;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljm/k$c;-><init>(Ljm/k;Ljm/k$a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 3
    iget-object v0, p0, Ljm/k$b;->a:Ljm/k;

    invoke-static {v0, p1}, Ljm/k;->O(Ljm/k;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 4
    iget-object v0, p0, Ljm/k$b;->a:Ljm/k;

    new-instance v1, Ljm/m;

    invoke-direct {v1, p0, p1}, Ljm/m;-><init>(Ljm/k$b;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    invoke-static {v0, v1}, Ljm/k;->P(Ljm/k;Ljava/lang/Runnable;)V

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

    invoke-virtual {p0, p1}, Ljm/k$b;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
