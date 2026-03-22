.class public Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;
.super Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.source "InMobiUnifiedNativeAdMapper.java"


# instance fields
.field private final inMobiNativeAd:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

.field private final inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

.field private final isOnlyURL:Z

.field private final mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;Ljava/lang/Boolean;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;)V
    .locals 0
    .param p1    # Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;",
            "Ljava/lang/Boolean;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->isOnlyURL:Z

    .line 11
    .line 12
    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeAd:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideImpressionRecording(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method static bridge synthetic a(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeAd:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public handleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->reportAdClickAndOpenLandingPage()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public mapUnifiedNativeAd(Landroid/content/Context;)V
    .locals 11

    .line 1
    const-string v0, "price"

    .line 2
    .line 3
    const-string v1, "rating"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->isValidNativeAd(Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const/16 p1, 0x6b

    .line 14
    .line 15
    const-string v0, "InMobi native ad returned with a missing asset."

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdTitle()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdDescription()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdCtaText()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdIconUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    new-instance v4, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdLandingPageUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    new-instance v6, Landroid/os/Bundle;

    .line 98
    .line 99
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v7, "landingURL"

    .line 103
    .line 104
    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v6}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setExtras(Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    iget-boolean v5, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->isOnlyURL:Z

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    if-nez v5, :cond_1

    .line 114
    .line 115
    const-string v5, "icon_key"

    .line 116
    .line 117
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    new-instance v2, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;

    .line 122
    .line 123
    const/4 v5, 0x0

    .line 124
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 125
    .line 126
    invoke-direct {v2, v5, v3, v7, v8}, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 130
    .line 131
    .line 132
    new-instance v2, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v9, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;

    .line 138
    .line 139
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    .line 140
    .line 141
    invoke-direct {v10, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 142
    .line 143
    .line 144
    invoke-direct {v9, v10, v5, v7, v8}, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setImages(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    :goto_0
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getCustomAdContent()Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getCustomAdContent()Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_2

    .line 172
    .line 173
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 178
    .line 179
    .line 180
    move-result-wide v7

    .line 181
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setStarRating(Ljava/lang/Double;)V

    .line 186
    .line 187
    .line 188
    :cond_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_3

    .line 193
    .line 194
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setPrice(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :catch_0
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    .line 203
    .line 204
    const-string v1, "InMobi custom native ad content payload could not be parsed. The returned native ad will not have star rating or price values."

    .line 205
    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :cond_3
    :goto_1
    const-string v0, "package_name"

    .line 210
    .line 211
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_4

    .line 216
    .line 217
    const-string v0, "Google Play"

    .line 218
    .line 219
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setStore(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_4
    const-string v0, "Others"

    .line 224
    .line 225
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setStore(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_5
    :goto_2
    new-instance v0, Lcom/google/ads/mediation/inmobi/ClickInterceptorRelativeLayout;

    .line 229
    .line 230
    invoke-direct {v0, p1}, Lcom/google/ads/mediation/inmobi/ClickInterceptorRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 231
    .line 232
    .line 233
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 234
    .line 235
    const/4 v2, -0x1

    .line 236
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    .line 241
    .line 242
    const/16 v1, 0x11

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 245
    .line 246
    .line 247
    new-instance v1, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;

    .line 248
    .line 249
    invoke-direct {v1, p0, p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$1;-><init>(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setMediaView(Landroid/view/View;)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->isVideo()Ljava/lang/Boolean;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    if-nez p1, :cond_6

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_6
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 268
    .line 269
    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->isVideo()Ljava/lang/Boolean;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    :goto_3
    invoke-virtual {p0, v6}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHasVideoContent(Z)V

    .line 278
    .line 279
    .line 280
    iget-boolean p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->isOnlyURL:Z

    .line 281
    .line 282
    if-nez p1, :cond_7

    .line 283
    .line 284
    new-instance p1, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;

    .line 285
    .line 286
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;

    .line 287
    .line 288
    invoke-direct {v0, p0, v3}, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper$2;-><init>(Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;Landroid/net/Uri;)V

    .line 289
    .line 290
    .line 291
    invoke-direct {p1, v0}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;-><init>(Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;)V

    .line 292
    .line 293
    .line 294
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_7
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 303
    .line 304
    if-eqz p1, :cond_8

    .line 305
    .line 306
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeAd:Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;

    .line 307
    .line 308
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 313
    .line 314
    iput-object p1, v0, Lcom/google/ads/mediation/inmobi/renderers/InMobiNativeAd;->mediationNativeAdCallback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 315
    .line 316
    :cond_8
    :goto_4
    return-void

    .line 317
    :catch_1
    move-exception p1

    .line 318
    goto :goto_5

    .line 319
    :catch_2
    move-exception p1

    .line 320
    :goto_5
    const/16 v0, 0x6c

    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-static {v0, p1}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 340
    .line 341
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 342
    .line 343
    .line 344
    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
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
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->resume()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiUnifiedNativeAdMapper;->inMobiNativeWrapper:Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
