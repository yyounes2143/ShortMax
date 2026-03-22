.class Lfm/c;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# instance fields
.field private final a:Lio/bidmachine/ads/networks/gam/i0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/gam/i0;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/i0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfm/c;->a:Lio/bidmachine/ads/networks/gam/i0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfm/c;->a:Lio/bidmachine/ads/networks/gam/i0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam/d0;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfm/c;->a:Lio/bidmachine/ads/networks/gam/i0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam/i0;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfm/c;->a:Lio/bidmachine/ads/networks/gam/i0;

    .line 7
    .line 8
    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam/i0;->onAdClosed()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lfm/c;->a:Lio/bidmachine/ads/networks/gam/i0;

    .line 2
    .line 3
    new-instance v1, Lfr/a;

    .line 4
    .line 5
    sget-object v2, Lfr/a;->r:Lfr/a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v1, v2, v3, p1}, Lfr/a;-><init>(Lfr/a;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lio/bidmachine/ads/networks/gam/d0;->onAdShowFailed(Lfr/a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfm/c;->a:Lio/bidmachine/ads/networks/gam/i0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam/d0;->onAdShown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
