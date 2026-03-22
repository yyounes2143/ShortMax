.class Ljm/f;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# instance fields
.field private final a:Lhm/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lhm/o;)V
    .locals 0
    .param p1    # Lhm/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljm/f;->a:Lhm/o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljm/f;->a:Lhm/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lhm/m;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljm/f;->a:Lhm/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lhm/o;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ljm/f;->a:Lhm/o;

    .line 7
    .line 8
    invoke-interface {v0}, Lhm/o;->onAdClosed()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ljm/f;->a:Lhm/o;

    .line 2
    .line 3
    sget-object v1, Lfr/a;->r:Lfr/a;

    .line 4
    .line 5
    invoke-static {v1, p1}, Ljm/o;->b(Lfr/a;Lcom/google/android/gms/ads/AdError;)Lfr/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lhm/m;->onAdShowFailed(Lfr/a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljm/f;->a:Lhm/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lhm/m;->onAdShown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
