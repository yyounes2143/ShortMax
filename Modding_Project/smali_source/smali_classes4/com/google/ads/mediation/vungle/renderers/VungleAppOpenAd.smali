.class public abstract Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;
.super Ljava/lang/Object;
.source "VungleAppOpenAd.kt"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;
.implements Lcom/vungle/ads/InterstitialAdListener;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private appOpenAd:Lcom/vungle/ads/InterstitialAd;

.field private final mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;",
            "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mediationAppOpenAdCallback:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mediationAppOpenAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vungleFactory:Lcom/google/ads/mediation/vungle/VungleFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/vungle/VungleFactory;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/ads/mediation/vungle/VungleFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;",
            "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/vungle/VungleFactory;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "mediationAppOpenAdConfiguration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mediationAdLoadCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "vungleFactory"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->vungleFactory:Lcom/google/ads/mediation/vungle/VungleFactory;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic access$getAppOpenAd$p(Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;)Lcom/vungle/ads/InterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->appOpenAd:Lcom/vungle/ads/InterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMediationAdLoadCallback$p(Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMediationAppOpenAdConfiguration$p(Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;)Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getVungleFactory$p(Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;)Lcom/google/ads/mediation/vungle/VungleFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->vungleFactory:Lcom/google/ads/mediation/vungle/VungleFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setAppOpenAd$p(Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;Lcom/vungle/ads/InterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->appOpenAd:Lcom/vungle/ads/InterstitialAd;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public abstract getAdMarkup(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;)Ljava/lang/String;
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract maybeAddWatermarkToVungleAdConfig(Lcom/vungle/ads/AdConfig;Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;)V
    .param p1    # Lcom/vungle/ads/AdConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public onAdClicked(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "baseAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdCallback:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onAdEnd(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "baseAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdCallback:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdClosed()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/VungleError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "baseAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "adError"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->getAdError(Lcom/vungle/ads/VungleError;)Lcom/google/android/gms/ads/AdError;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "getAdError(...)"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p2, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 30
    .line 31
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/VungleError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "baseAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "adError"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->getAdError(Lcom/vungle/ads/VungleError;)Lcom/google/android/gms/ads/AdError;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "getAdError(...)"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p2, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdCallback:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public onAdImpression(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "baseAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdCallback:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdImpression()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "baseAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdLoaded(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "baseAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdCallback:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;

    .line 15
    .line 16
    return-void
.end method

.method public onAdStart(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "baseAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdCallback:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final render()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getMediationExtras(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "getServerParameters(...)"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "appid"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "com.google.ads.mediation.vungle"

    .line 30
    .line 31
    const/16 v4, 0x65

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string v5, "placementID"

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string v4, "getContext(...)"

    .line 64
    .line 65
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleInitializer;->getInstance()Lcom/google/ads/mediation/vungle/VungleInitializer;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance v5, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd$render$1;

    .line 76
    .line 77
    invoke-direct {v5, p0, v0, v3, v1}, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd$render$1;-><init>(Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v2, v3, v5}, Lcom/google/ads/mediation/vungle/VungleInitializer;->initialize(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/mediation/vungle/VungleInitializer$VungleInitializationListener;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    .line 85
    .line 86
    const-string v1, "Failed to load app open ad from Liftoff Monetize. Missing or Invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI."

    .line 87
    .line 88
    invoke-direct {v0, v4, v1, v3}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sget-object v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 101
    .line 102
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    :goto_1
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    .line 107
    .line 108
    const-string v1, "Failed to load app open ad from Liftoff Monetize. Missing or invalid App ID configured for this ad source instance in the AdMob or Ad Manager UI."

    .line 109
    .line 110
    invoke-direct {v0, v4, v1, v3}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 123
    .line 124
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public showAd(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->appOpenAd:Lcom/vungle/ads/InterstitialAd;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "appOpenAd"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v0, v1

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->canPlayAd()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->appOpenAd:Lcom/vungle/ads/InterstitialAd;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v1, v0

    .line 36
    :goto_0
    invoke-virtual {v1, p1}, Lcom/vungle/ads/BaseFullscreenAd;->play(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    .line 41
    .line 42
    const-string v0, "Failed to show app open ad from Liftoff Monetize."

    .line 43
    .line 44
    const-string v1, "com.google.ads.mediation.vungle"

    .line 45
    .line 46
    const/16 v2, 0x6b

    .line 47
    .line 48
    invoke-direct {p1, v2, v0, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;->mediationAppOpenAdCallback:Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    return-void
.end method
