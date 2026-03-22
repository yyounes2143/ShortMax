.class public Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;
.super Ljava/lang/Object;
.source "VungleRtbInterstitialAd.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;
.implements Lcom/vungle/ads/InterstitialAdListener;


# instance fields
.field private interstitialAd:Lcom/vungle/ads/InterstitialAd;

.field private final mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mediationInterstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final vungleFactory:Lcom/google/ads/mediation/vungle/VungleFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/vungle/VungleFactory;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;
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
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/vungle/VungleFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->vungleFactory:Lcom/google/ads/mediation/vungle/VungleFactory;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic a(Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;)Lcom/vungle/ads/InterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->interstitialAd:Lcom/vungle/ads/InterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;)Lcom/google/ads/mediation/vungle/VungleFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->vungleFactory:Lcom/google/ads/mediation/vungle/VungleFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;Lcom/vungle/ads/InterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->interstitialAd:Lcom/vungle/ads/InterstitialAd;

    .line 2
    .line 3
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
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    .line 6
    .line 7
    .line 8
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
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdClosed()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 1
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
    move-result-object v0

    .line 11
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 1
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
    move-result-object v0

    .line 11
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onAdImpression(Lcom/vungle/ads/BaseAd;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

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
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;->onAdLeftApplication()V

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
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 10
    .line 11
    return-void
.end method

.method public onAdStart(Lcom/vungle/ads/BaseAd;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public render()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "appid"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const-string v4, "com.google.ads.mediation.vungle"

    .line 24
    .line 25
    const/16 v5, 0x65

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    .line 30
    .line 31
    const-string v1, "Failed to load bidding interstitial ad from Liftoff Monetize. Missing or invalid App ID configured for this ad source instance in the AdMob or Ad Manager UI."

    .line 32
    .line 33
    invoke-direct {v0, v5, v1, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 46
    .line 47
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    const-string v3, "placementID"

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    .line 64
    .line 65
    const-string v1, "Failed to load bidding interstitial ad from Liftoff Monetize. Missing or Invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI."

    .line 66
    .line 67
    invoke-direct {v0, v5, v1, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 80
    .line 81
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getBidResponse()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->vungleFactory:Lcom/google/ads/mediation/vungle/VungleFactory;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/ads/mediation/vungle/VungleFactory;->createAdConfig()Lcom/vungle/ads/AdConfig;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    const-string v1, "adOrientation"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    const/4 v3, 0x2

    .line 106
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {v10, v0}, Lcom/vungle/ads/AdConfig;->setAdOrientation(I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getWatermark()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_3

    .line 124
    .line 125
    invoke-virtual {v10, v0}, Lcom/vungle/ads/AdConfig;->setWatermark(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleInitializer;->getInstance()Lcom/google/ads/mediation/vungle/VungleInitializer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v3, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd$1;

    .line 139
    .line 140
    move-object v6, v3

    .line 141
    move-object v7, p0

    .line 142
    move-object v8, v0

    .line 143
    invoke-direct/range {v6 .. v11}, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd$1;-><init>(Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/ads/mediation/vungle/VungleInitializer;->initialize(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/mediation/vungle/VungleInitializer$VungleInitializationListener;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public showAd(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->interstitialAd:Lcom/vungle/ads/InterstitialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/vungle/ads/BaseFullscreenAd;->play(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    .line 14
    .line 15
    const-string v0, "Failed to show bidding rewarded ad from Liftoff Monetize."

    .line 16
    .line 17
    const-string v1, "com.google.ads.mediation.vungle"

    .line 18
    .line 19
    const/16 v2, 0x6b

    .line 20
    .line 21
    invoke-direct {p1, v2, v0, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbInterstitialAd;->mediationInterstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method
