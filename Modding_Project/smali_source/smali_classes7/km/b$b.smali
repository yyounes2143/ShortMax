.class final Lkm/b$b;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lkm/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lhm/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkm/b;Lhm/q;)V
    .locals 0
    .param p1    # Lkm/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 3
    iput-object p1, p0, Lkm/b$b;->a:Lkm/b;

    .line 4
    iput-object p2, p0, Lkm/b$b;->b:Lhm/q;

    return-void
.end method

.method synthetic constructor <init>(Lkm/b;Lhm/q;Lkm/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkm/b$b;-><init>(Lkm/b;Lhm/q;)V

    return-void
.end method

.method public static synthetic a(Lkm/b$b;Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkm/b$b;->d(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lkm/b$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkm/b$b;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkm/b$b;->a:Lkm/b;

    .line 2
    .line 3
    invoke-static {v0}, Lkm/b;->L(Lkm/b;)Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkm/o;->c(Lcom/google/android/gms/ads/BaseAdView;)Lhm/l;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lkm/b$b;->a:Lkm/b;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->C(Lhm/l;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lkm/b$b;->b:Lhm/q;

    .line 17
    .line 18
    iget-object v2, p0, Lkm/b$b;->a:Lkm/b;

    .line 19
    .line 20
    invoke-interface {v1, v2, v0}, Lhm/q;->a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lhm/l;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic d(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkm/b$b;->b:Lhm/q;

    .line 2
    .line 3
    iget-object v1, p0, Lkm/b$b;->a:Lkm/b;

    .line 4
    .line 5
    sget-object v2, Lfr/a;->q:Lfr/a;

    .line 6
    .line 7
    invoke-static {v2, p1}, Lkm/o;->b(Lfr/a;Lcom/google/android/gms/ads/AdError;)Lfr/a;

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


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkm/b$b;->a:Lkm/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->l()Lhm/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lhm/m;->onAdClicked()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkm/b$b;->a:Lkm/b;

    .line 2
    .line 3
    new-instance v1, Lkm/c;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lkm/c;-><init>(Lkm/b$b;Lcom/google/android/gms/ads/LoadAdError;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lkm/b;->N(Lkm/b;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkm/b$b;->a:Lkm/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->l()Lhm/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lhm/m;->onAdShown()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkm/b$b;->a:Lkm/b;

    .line 2
    .line 3
    new-instance v1, Lkm/d;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lkm/d;-><init>(Lkm/b$b;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lkm/b;->M(Lkm/b;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .line 1
    return-void
.end method
