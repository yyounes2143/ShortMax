.class Lvl/d$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "ScarBannerAdListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvl/d;


# direct methods
.method constructor <init>(Lvl/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvl/d$a;->a:Lvl/d;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvl/d$a;->a:Lvl/d;

    .line 5
    .line 6
    invoke-static {v0}, Lvl/d;->b(Lvl/d;)Lcom/unity3d/scar/adapter/common/f;

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

.method public onAdClosed()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvl/d$a;->a:Lvl/d;

    .line 5
    .line 6
    invoke-static {v0}, Lvl/d;->b(Lvl/d;)Lcom/unity3d/scar/adapter/common/f;

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

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvl/d$a;->a:Lvl/d;

    .line 5
    .line 6
    invoke-static {v0}, Lvl/d;->c(Lvl/d;)Lvl/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lvl/c;->e()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lvl/d$a;->a:Lvl/d;

    .line 14
    .line 15
    invoke-static {v0}, Lvl/d;->b(Lvl/d;)Lcom/unity3d/scar/adapter/common/f;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, v1, p1}, Lcom/unity3d/scar/adapter/common/d;->onAdFailedToLoad(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvl/d$a;->a:Lvl/d;

    .line 5
    .line 6
    invoke-static {v0}, Lvl/d;->b(Lvl/d;)Lcom/unity3d/scar/adapter/common/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/f;->onAdImpression()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvl/d$a;->a:Lvl/d;

    .line 5
    .line 6
    invoke-static {v0}, Lvl/d;->b(Lvl/d;)Lcom/unity3d/scar/adapter/common/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/d;->onAdLoaded()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvl/d$a;->a:Lvl/d;

    .line 5
    .line 6
    invoke-static {v0}, Lvl/d;->b(Lvl/d;)Lcom/unity3d/scar/adapter/common/f;

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
