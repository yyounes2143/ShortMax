.class public Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallBannerAd;
.super Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;
.source "MintegralWaterfallBannerAd.java"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;
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
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAd;",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->getMintegralBannerSizeFromAdMobAdSize(Lcom/google/android/gms/ads/AdSize;Landroid/content/Context;)Lcom/mbridge/msdk/out/BannerSize;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "The requested banner size: %s is not supported by Mintegral SDK."

    .line 30
    .line 31
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/16 v1, 0x66

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/google/ads/mediation/mintegral/MintegralConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 51
    .line 52
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "ad_unit_id"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "placement_id"

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Lcom/google/ads/mediation/mintegral/MintegralUtils;->validateMintegralAdLoadParams(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 87
    .line 88
    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    new-instance v3, Lcom/mbridge/msdk/out/MBBannerView;

    .line 93
    .line 94
    iget-object v4, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-direct {v3, v4}, Lcom/mbridge/msdk/out/MBBannerView;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    iput-object v3, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->mbBannerView:Lcom/mbridge/msdk/out/MBBannerView;

    .line 104
    .line 105
    invoke-virtual {v3, v0, v2, v1}, Lcom/mbridge/msdk/out/MBBannerView;->init(Lcom/mbridge/msdk/out/BannerSize;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/BannerSize;->getWidth()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    int-to-float v3, v3

    .line 121
    invoke-static {v2, v3}, Lcom/google/ads/mediation/mintegral/MintegralUtils;->convertDipToPixel(Landroid/content/Context;F)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iget-object v3, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/BannerSize;->getHeight()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    int-to-float v0, v0

    .line 136
    invoke-static {v3, v0}, Lcom/google/ads/mediation/mintegral/MintegralUtils;->convertDipToPixel(Landroid/content/Context;F)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->mbBannerView:Lcom/mbridge/msdk/out/MBBannerView;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->mbBannerView:Lcom/mbridge/msdk/out/MBBannerView;

    .line 149
    .line 150
    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/out/MBBannerView;->setBannerAdListener(Lcom/mbridge/msdk/out/BannerAdListener;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->mbBannerView:Lcom/mbridge/msdk/out/MBBannerView;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBBannerView;->load()V

    .line 156
    .line 157
    .line 158
    return-void
.end method
