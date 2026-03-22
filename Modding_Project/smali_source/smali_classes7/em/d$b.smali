.class final Lem/d$b;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lem/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/ads/networks/gam/InternalGAMAd;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/ads/networks/gam/n0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/n0;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/n0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 3
    iput-object p1, p0, Lem/d$b;->a:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 4
    iput-object p2, p0, Lem/d$b;->b:Lio/bidmachine/ads/networks/gam/n0;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/n0;Lem/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lem/d$b;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/n0;)V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lem/d$b;->a:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->k()Lio/bidmachine/ads/networks/gam/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam/d0;->onAdClicked()V

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
    .locals 5
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lem/d$b;->b:Lio/bidmachine/ads/networks/gam/n0;

    .line 2
    .line 3
    iget-object v1, p0, Lem/d$b;->a:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

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

.method public onAdImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Lem/d$b;->a:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->k()Lio/bidmachine/ads/networks/gam/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam/d0;->onAdShown()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lem/d$b;->a:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->C()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lem/d$b;->b:Lio/bidmachine/ads/networks/gam/n0;

    .line 7
    .line 8
    iget-object v1, p0, Lem/d$b;->a:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lio/bidmachine/ads/networks/gam/n0;->a(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .line 1
    return-void
.end method
