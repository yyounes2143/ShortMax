.class Llm/k;
.super Lhm/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llm/k$b;,
        Llm/k$d;,
        Llm/k$c;
    }
.end annotation


# instance fields
.field private k:Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)V
    .locals 0
    .param p1    # Lhm/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lhm/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct/range {p0 .. p5}, Lhm/r;-><init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O(Llm/k;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 0

    .line 1
    iput-object p1, p0, Llm/k;->k:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic P(Llm/k;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->E(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q(Llm/k;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->E(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R(Llm/k;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->E(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected B(Landroid/content/Context;Lhm/q;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnitId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->m()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Llm/o;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Llm/k$b;

    .line 14
    .line 15
    invoke-direct {v2, p0, p2}, Llm/k$b;-><init>(Llm/k;Lhm/q;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected N(Landroid/app/Activity;Lhm/o;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Llm/k;->k:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Llm/f;

    .line 6
    .line 7
    invoke-direct {v1, p2}, Llm/f;-><init>(Lhm/o;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Llm/k;->k:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 14
    .line 15
    new-instance v0, Llm/k$d;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Llm/k$d;-><init>(Llm/k$a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "Internal GAM rewarded object is null or not loaded"

    .line 26
    .line 27
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p2, p1}, Lhm/m;->onAdShowFailed(Lfr/a;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method protected k()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Llm/k;->k:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Llm/k;->k:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Llm/k;->k:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 15
    .line 16
    :cond_0
    return-void
.end method
