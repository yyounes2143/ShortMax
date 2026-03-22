.class public Lcom/vungle/mediation/VungleInterstitialAdapter;
.super Lcom/google/ads/mediation/vungle/VungleMediationAdapter;
.source "VungleInterstitialAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/mediation/VungleInterstitialAdapter$c;,
        Lcom/vungle/mediation/VungleInterstitialAdapter$d;
    }
.end annotation


# instance fields
.field private bannerAdView:Lcom/vungle/ads/VungleBannerView;

.field private interstitialAd:Lcom/vungle/ads/InterstitialAd;

.field private mediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field private mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic g(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/vungle/ads/VungleBannerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->bannerAdView:Lcom/vungle/ads/VungleBannerView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getVungleBannerAdSizeFromGoogleAdSize(Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)Lcom/vungle/ads/VungleAdSize;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1, p1}, Lcom/vungle/ads/VungleAdSize;->getValidAdSizeFromSize(IILjava/lang/String;)Lcom/vungle/ads/VungleAdSize;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "The requested ad size: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p0, "; placementId="

    .line 29
    .line 30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, "; vngAdSize="

    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method static bridge synthetic h(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/vungle/ads/InterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->interstitialAd:Lcom/vungle/ads/InterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic i(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic j(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic k(Lcom/vungle/mediation/VungleInterstitialAdapter;Lcom/vungle/ads/VungleBannerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->bannerAdView:Lcom/vungle/ads/VungleBannerView;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic l(Lcom/vungle/mediation/VungleInterstitialAdapter;Lcom/vungle/ads/InterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->interstitialAd:Lcom/vungle/ads/InterstitialAd;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "getBannerView # instance: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->bannerAdView:Lcom/vungle/ads/VungleBannerView;

    .line 28
    .line 29
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onDestroy: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->bannerAdView:Lcom/vungle/ads/VungleBannerView;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->finishAd()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->bannerAdView:Lcom/vungle/ads/VungleBannerView;

    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationBannerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/ads/AdSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 2
    .line 3
    const-string p6, "appid"

    .line 4
    .line 5
    invoke-virtual {p3, p6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p6

    .line 9
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "com.google.ads.mediation.vungle"

    .line 14
    .line 15
    const/16 v2, 0x65

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    .line 20
    .line 21
    const-string p3, "Failed to load waterfall banner ad from Liftoff Monetize. Missing or invalid App ID configured for this ad source instance in the AdMob or Ad Manager UI."

    .line 22
    .line 23
    invoke-direct {p1, v2, p3, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p3, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleInitializer;->getInstance()Lcom/google/ads/mediation/vungle/VungleInitializer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->taggedForChildDirectedTreatment()I

    .line 44
    .line 45
    .line 46
    move-result p5

    .line 47
    invoke-virtual {v0, p5}, Lcom/google/ads/mediation/vungle/VungleInitializer;->updateCoppaStatus(I)V

    .line 48
    .line 49
    .line 50
    const-string p5, "placementID"

    .line 51
    .line 52
    invoke-virtual {p3, p5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p5

    .line 60
    if-eqz p5, :cond_1

    .line 61
    .line 62
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    .line 63
    .line 64
    const-string p3, "Failed to load waterfall banner ad from Liftoff Monetize. Missing or invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI."

    .line 65
    .line 66
    invoke-direct {p1, v2, p3, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object p3, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    invoke-static {p4, p3}, Lcom/vungle/mediation/VungleInterstitialAdapter;->getVungleBannerAdSizeFromGoogleAdSize(Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)Lcom/vungle/ads/VungleAdSize;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    sget-object p4, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    new-instance p5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v0, "requestBannerAd for Placement: "

    .line 94
    .line 95
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, " ### Adapter instance: "

    .line 102
    .line 103
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p5

    .line 117
    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleInitializer;->getInstance()Lcom/google/ads/mediation/vungle/VungleInitializer;

    .line 121
    .line 122
    .line 123
    move-result-object p4

    .line 124
    new-instance p5, Lcom/vungle/mediation/VungleInterstitialAdapter$b;

    .line 125
    .line 126
    invoke-direct {p5, p0, p1, p3, p2}, Lcom/vungle/mediation/VungleInterstitialAdapter$b;-><init>(Lcom/vungle/mediation/VungleInterstitialAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p4, p6, p1, p5}, Lcom/google/ads/mediation/vungle/VungleInitializer;->initialize(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/mediation/vungle/VungleInitializer$VungleInitializationListener;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 2
    .line 3
    const-string v0, "appid"

    .line 4
    .line 5
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "com.google.ads.mediation.vungle"

    .line 14
    .line 15
    const/16 v3, 0x65

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    .line 20
    .line 21
    const-string p3, "Failed to load waterfall interstitial ad from Liftoff Monetize. Missing or invalid App ID configured for this ad source instance in the AdMob or Ad Manager UI."

    .line 22
    .line 23
    invoke-direct {p1, v3, p3, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p3, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-string v1, "placementID"

    .line 40
    .line 41
    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    .line 52
    .line 53
    const-string p3, "Failed to load waterfall interstitial ad from Liftoff Monetize. Missing or invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI."

    .line 54
    .line 55
    invoke-direct {p1, v3, p3, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object p3, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleInitializer;->getInstance()Lcom/google/ads/mediation/vungle/VungleInitializer;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->taggedForChildDirectedTreatment()I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    invoke-virtual {p3, p4}, Lcom/google/ads/mediation/vungle/VungleInitializer;->updateCoppaStatus(I)V

    .line 80
    .line 81
    .line 82
    new-instance v8, Lcom/vungle/ads/AdConfig;

    .line 83
    .line 84
    invoke-direct {v8}, Lcom/vungle/ads/AdConfig;-><init>()V

    .line 85
    .line 86
    .line 87
    if-eqz p5, :cond_2

    .line 88
    .line 89
    const-string p3, "adOrientation"

    .line 90
    .line 91
    invoke-virtual {p5, p3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    if-eqz p4, :cond_2

    .line 96
    .line 97
    const/4 p4, 0x2

    .line 98
    invoke-virtual {p5, p3, p4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    invoke-virtual {v8, p3}, Lcom/vungle/ads/AdConfig;->setAdOrientation(I)V

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleInitializer;->getInstance()Lcom/google/ads/mediation/vungle/VungleInitializer;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    new-instance p4, Lcom/vungle/mediation/VungleInterstitialAdapter$a;

    .line 110
    .line 111
    move-object v4, p4

    .line 112
    move-object v5, p0

    .line 113
    move-object v6, p1

    .line 114
    move-object v9, p2

    .line 115
    invoke-direct/range {v4 .. v9}, Lcom/vungle/mediation/VungleInterstitialAdapter$a;-><init>(Lcom/vungle/mediation/VungleInterstitialAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, v0, p1, p4}, Lcom/google/ads/mediation/vungle/VungleInitializer;->initialize(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/mediation/vungle/VungleInitializer$VungleInitializationListener;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->interstitialAd:Lcom/vungle/ads/InterstitialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/vungle/ads/BaseFullscreenAd;->play(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
