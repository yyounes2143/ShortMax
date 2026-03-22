.class final Llm/g$b;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llm/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Llm/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lhm/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llm/g;Lhm/q;)V
    .locals 0
    .param p1    # Llm/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llm/g$b;->a:Llm/g;

    .line 5
    .line 6
    iput-object p2, p0, Llm/g$b;->b:Lhm/q;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Llm/g$b;Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llm/g$b;->c(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Llm/g$b;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llm/g$b;->d(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic c(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llm/g$b;->b:Lhm/q;

    .line 2
    .line 3
    iget-object v1, p0, Llm/g$b;->a:Llm/g;

    .line 4
    .line 5
    sget-object v2, Lfr/a;->q:Lfr/a;

    .line 6
    .line 7
    invoke-static {v2, p1}, Llm/o;->b(Lfr/a;Lcom/google/android/gms/ads/AdError;)Lfr/a;

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

.method private synthetic d(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V
    .locals 2

    .line 1
    invoke-static {p1}, Llm/o;->d(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lhm/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Llm/g$b;->a:Llm/g;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->C(Lhm/l;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Llm/g$b;->b:Lhm/q;

    .line 11
    .line 12
    iget-object v1, p0, Llm/g$b;->a:Llm/g;

    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Lhm/q;->a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lhm/l;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public e(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Llm/g$c;

    .line 2
    .line 3
    iget-object v1, p0, Llm/g$b;->a:Llm/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Llm/g$c;-><init>(Llm/g;Llm/g$a;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Llm/g$b;->a:Llm/g;

    .line 13
    .line 14
    invoke-static {v0, p1}, Llm/g;->O(Llm/g;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Llm/g$b;->a:Llm/g;

    .line 18
    .line 19
    new-instance v1, Llm/h;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Llm/h;-><init>(Llm/g$b;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Llm/g;->P(Llm/g;Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Llm/g$b;->a:Llm/g;

    .line 2
    .line 3
    new-instance v1, Llm/i;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Llm/i;-><init>(Llm/g$b;Lcom/google/android/gms/ads/LoadAdError;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Llm/g;->Q(Llm/g;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1}, Llm/g$b;->e(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
