.class public Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbBannerAd;
.super Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;
.source "MintegralRtbBannerAd.java"


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
    .locals 6

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
    iget-object v3, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getBidResponse()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v1, v2, v3}, Lcom/google/ads/mediation/mintegral/MintegralUtils;->validateMintegralAdLoadParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 93
    .line 94
    invoke-interface {v0, v4}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_1
    new-instance v4, Lcom/mbridge/msdk/out/MBBannerView;

    .line 99
    .line 100
    iget-object v5, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 101
    .line 102
    invoke-virtual {v5}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-direct {v4, v5}, Lcom/mbridge/msdk/out/MBBannerView;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    iput-object v4, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->mbBannerView:Lcom/mbridge/msdk/out/MBBannerView;

    .line 110
    .line 111
    invoke-virtual {v4, v0, v2, v1}, Lcom/mbridge/msdk/out/MBBannerView;->init(Lcom/mbridge/msdk/out/BannerSize;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 115
    .line 116
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v2, "watermark"

    .line 120
    .line 121
    iget-object v4, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getWatermark()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->mbBannerView:Lcom/mbridge/msdk/out/MBBannerView;

    .line 131
    .line 132
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/out/MBBannerView;->setExtraInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    sget-object v2, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->TAG:Ljava/lang/String;

    .line 138
    .line 139
    const-string v4, "Failed to apply watermark to Mintegral bidding banner ad."

    .line 140
    .line 141
    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .line 143
    .line 144
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/BannerSize;->getWidth()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    int-to-float v4, v4

    .line 157
    invoke-static {v2, v4}, Lcom/google/ads/mediation/mintegral/MintegralUtils;->convertDipToPixel(Landroid/content/Context;F)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    iget-object v4, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 162
    .line 163
    invoke-virtual {v4}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/BannerSize;->getHeight()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    int-to-float v0, v0

    .line 172
    invoke-static {v4, v0}, Lcom/google/ads/mediation/mintegral/MintegralUtils;->convertDipToPixel(Landroid/content/Context;F)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->mbBannerView:Lcom/mbridge/msdk/out/MBBannerView;

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->mbBannerView:Lcom/mbridge/msdk/out/MBBannerView;

    .line 185
    .line 186
    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/out/MBBannerView;->setBannerAdListener(Lcom/mbridge/msdk/out/BannerAdListener;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/mediation/MintegralBannerAd;->mbBannerView:Lcom/mbridge/msdk/out/MBBannerView;

    .line 190
    .line 191
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/out/MBBannerView;->loadFromBid(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method
