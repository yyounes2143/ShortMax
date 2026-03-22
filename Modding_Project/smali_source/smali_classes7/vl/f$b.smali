.class Lvl/f$b;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "ScarInterstitialAdListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvl/f;


# direct methods
.method constructor <init>(Lvl/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvl/f$b;->a:Lvl/f;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvl/f$b;->a:Lvl/f;

    .line 5
    .line 6
    invoke-static {v0}, Lvl/f;->b(Lvl/f;)Lcom/unity3d/scar/adapter/common/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/d;->onAdClicked()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvl/f$b;->a:Lvl/f;

    .line 5
    .line 6
    invoke-static {v0}, Lvl/f;->b(Lvl/f;)Lcom/unity3d/scar/adapter/common/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/d;->onAdClosed()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvl/f$b;->a:Lvl/f;

    .line 5
    .line 6
    invoke-static {v0}, Lvl/f;->b(Lvl/f;)Lcom/unity3d/scar/adapter/common/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, v1, p1}, Lcom/unity3d/scar/adapter/common/g;->onAdFailedToShow(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvl/f$b;->a:Lvl/f;

    .line 5
    .line 6
    invoke-static {v0}, Lvl/f;->b(Lvl/f;)Lcom/unity3d/scar/adapter/common/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/g;->onAdImpression()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvl/f$b;->a:Lvl/f;

    .line 5
    .line 6
    invoke-static {v0}, Lvl/f;->b(Lvl/f;)Lcom/unity3d/scar/adapter/common/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/d;->onAdOpened()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
