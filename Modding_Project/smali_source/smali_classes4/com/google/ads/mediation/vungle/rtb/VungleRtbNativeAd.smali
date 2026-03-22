.class public Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;
.super Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.source "VungleRtbNativeAd.java"

# interfaces
.implements Lcom/vungle/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd$VungleNativeMappedImage;
    }
.end annotation


# instance fields
.field private final adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

.field private final adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private adMarkup:Ljava/lang/String;

.field private mediaView:Lcom/vungle/ads/internal/ui/view/MediaView;

.field private nativeAd:Lcom/vungle/ads/NativeAd;

.field private nativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

.field private final vungleFactory:Lcom/google/ads/mediation/vungle/VungleFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/vungle/VungleFactory;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/vungle/VungleFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->vungleFactory:Lcom/google/ads/mediation/vungle/VungleFactory;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic a(Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adMarkup:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;)Lcom/vungle/ads/NativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAd:Lcom/vungle/ads/NativeAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;)Lcom/google/ads/mediation/vungle/VungleFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->vungleFactory:Lcom/google/ads/mediation/vungle/VungleFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;Lcom/vungle/ads/internal/ui/view/MediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->mediaView:Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic f(Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;Lcom/vungle/ads/NativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAd:Lcom/vungle/ads/NativeAd;

    .line 2
    .line 3
    return-void
.end method

.method private mapNativeAd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAd:Lcom/vungle/ads/NativeAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAd:Lcom/vungle/ads/NativeAd;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/vungle/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAd:Lcom/vungle/ads/NativeAd;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/vungle/ads/NativeAd;->getAdCallToActionText()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAd:Lcom/vungle/ads/NativeAd;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/vungle/ads/NativeAd;->getAdStarRating()Ljava/lang/Double;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setStarRating(Ljava/lang/Double;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAd:Lcom/vungle/ads/NativeAd;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/vungle/ads/NativeAd;->getAdSponsoredText()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdvertiser(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->mediaView:Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setMediaView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAd:Lcom/vungle/ads/NativeAd;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/vungle/ads/NativeAd;->getAppIcon()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    const-string v1, "file://"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    new-instance v1, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd$VungleNativeMappedImage;

    .line 74
    .line 75
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v1, v0}, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd$VungleNativeMappedImage;-><init>(Landroid/net/Uri;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->runtimeGmaSdkListensToAdapterReportedImpressions()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v1, 0x1

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideImpressionRecording(Z)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideClickHandling(Z)V

    .line 96
    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/vungle/ads/BaseAd;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onAdEnd(Lcom/vungle/ads/BaseAd;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onAdFailedToLoad(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/VungleError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->getAdError(Lcom/vungle/ads/VungleError;)Lcom/google/android/gms/ads/AdError;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 6
    .line 7
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/VungleError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->getAdError(Lcom/vungle/ads/VungleError;)Lcom/google/android/gms/ads/AdError;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object p2, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAdImpression(Lcom/vungle/ads/BaseAd;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdImpression()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;->onAdLeftApplication()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/vungle/ads/BaseAd;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->mapNativeAd()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 5
    .line 6
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 13
    .line 14
    return-void
.end method

.method public onAdStart(Lcom/vungle/ads/BaseAd;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public render()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;->getNativeAdOptions()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "appid"

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const-string v4, "com.google.ads.mediation.vungle"

    .line 30
    .line 31
    const/16 v5, 0x65

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    .line 36
    .line 37
    const-string v1, "Failed to load bidding native ad from Liftoff Monetize. Missing or invalid app ID configured for this ad source instance in the AdMob or Ad Manager UI."

    .line 38
    .line 39
    invoke-direct {v0, v5, v1, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    const-string v3, "placementID"

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    .line 70
    .line 71
    const-string v1, "Failed to load bidding native ad from Liftoff Monetize. Missing or Invalid placement ID configured for this ad source instance in the AdMob or Ad Manager UI."

    .line 72
    .line 73
    invoke-direct {v0, v5, v1, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 86
    .line 87
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getBidResponse()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adMarkup:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getAdChoicesPlacement()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    const/4 v1, 0x3

    .line 106
    const/4 v3, 0x2

    .line 107
    if-eq v0, v3, :cond_3

    .line 108
    .line 109
    if-eq v0, v1, :cond_2

    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    :goto_0
    move v7, v0

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move v7, v3

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    move v7, v1

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    const/4 v0, 0x0

    .line 119
    goto :goto_0

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getWatermark()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleInitializer;->getInstance()Lcom/google/ads/mediation/vungle/VungleInitializer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-instance v1, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd$1;

    .line 131
    .line 132
    move-object v3, v1

    .line 133
    move-object v4, p0

    .line 134
    move-object v5, v2

    .line 135
    invoke-direct/range {v3 .. v8}, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd$1;-><init>(Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v9, v2, v1}, Lcom/google/ads/mediation/vungle/VungleInitializer;->initialize(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/mediation/vungle/VungleInitializer$VungleInitializationListener;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    sget-object p3, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "trackViews()"

    .line 7
    .line 8
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAd:Lcom/vungle/ads/NativeAd;

    .line 19
    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->canPlayAd()Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    instance-of v0, p1, Landroid/widget/FrameLayout;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    const-string p1, "Vungle requires a FrameLayout to render the native ad."

    .line 48
    .line 49
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const/4 v0, 0x0

    .line 67
    move-object v1, v0

    .line 68
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ljava/util/Map$Entry;

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/lang/String;

    .line 94
    .line 95
    const-string v4, "3003"

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Landroid/view/View;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    instance-of p2, v1, Landroid/widget/ImageView;

    .line 111
    .line 112
    if-eqz p2, :cond_5

    .line 113
    .line 114
    move-object v0, v1

    .line 115
    check-cast v0, Landroid/widget/ImageView;

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    sget-object p2, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 119
    .line 120
    const-string v1, "The view to display a Vungle native icon image is not a type of ImageView, so it can\'t be registered for click events."

    .line 121
    .line 122
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :goto_1
    iget-object p2, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAd:Lcom/vungle/ads/NativeAd;

    .line 126
    .line 127
    check-cast p1, Landroid/widget/FrameLayout;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->mediaView:Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 130
    .line 131
    invoke-virtual {p2, p1, v1, v0, p3}, Lcom/vungle/ads/NativeAd;->registerViewForInteraction(Landroid/widget/FrameLayout;Lcom/vungle/ads/internal/ui/view/MediaView;Landroid/widget/ImageView;Ljava/util/Collection;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_2
    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->untrackView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "untrackView()"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbNativeAd;->nativeAd:Lcom/vungle/ads/NativeAd;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->unregisterView()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
