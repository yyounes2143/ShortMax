.class Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;
.super Ljava/lang/Object;
.source "MolocoMediationAdapter.java"

# interfaces
.implements Lcom/moloco/sdk/publisher/AdLoad$Listener;
.implements Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/mediation/adapters/MolocoMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeAdViewListener"
.end annotation


# instance fields
.field private final adFormat:Lcom/applovin/mediation/MaxAdFormat;

.field private final context:Landroid/content/Context;

.field private final listener:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

.field private final serverParameters:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/content/Context;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    .line 7
    .line 8
    invoke-interface {p3}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;->getServerParameters()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->serverParameters:Landroid/os/Bundle;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V
    .locals 3
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter;->access$000(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/moloco/sdk/publisher/MolocoAdError;)Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "Native "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, " ad failed to load with error: "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onAdLoadSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 5
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter;->access$200(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;)Lcom/moloco/sdk/publisher/NativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "Native "

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " ad is null"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 43
    .line 44
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->INVALID_CONFIGURATION:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 45
    .line 46
    invoke-interface {p1, v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, " ad loaded"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd;->getAssets()Lcom/moloco/sdk/publisher/NativeAd$Assets;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    iget-object p1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, " ad assets object is null"

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->e(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 119
    .line 120
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->MISSING_REQUIRED_NATIVE_AD_ASSETS:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 121
    .line 122
    invoke-interface {p1, v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_1
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 127
    .line 128
    invoke-direct {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setAdFormat(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getTitle()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setTitle(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getDescription()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setBody(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getSponsorText()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setAdvertiser(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getCallToActionText()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setCallToAction(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getRating()Ljava/lang/Float;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const/4 v2, 0x0

    .line 174
    if-eqz v1, :cond_2

    .line 175
    .line 176
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getRating()Ljava/lang/Float;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/Float;->doubleValue()D

    .line 181
    .line 182
    .line 183
    move-result-wide v3

    .line 184
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    goto :goto_0

    .line 189
    :cond_2
    move-object v1, v2

    .line 190
    :goto_0
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setStarRating(Ljava/lang/Double;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getIconUri()Landroid/net/Uri;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    if-eqz v1, :cond_3

    .line 199
    .line 200
    new-instance v1, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    .line 201
    .line 202
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getIconUri()Landroid/net/Uri;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-direct {v1, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;-><init>(Landroid/net/Uri;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setIcon(Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 210
    .line 211
    .line 212
    :cond_3
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getMediaView()Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-eqz v1, :cond_4

    .line 217
    .line 218
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getMediaView()Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {v0, p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setMediaView(Landroid/view/View;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_4
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getMainImageUri()Landroid/net/Uri;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    if-eqz v1, :cond_5

    .line 231
    .line 232
    new-instance v1, Landroid/widget/ImageView;

    .line 233
    .line 234
    iget-object v3, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->context:Landroid/content/Context;

    .line 235
    .line 236
    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getMainImageUri()Landroid/net/Uri;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/ImageViewUtils;->setImageUri(Landroid/widget/ImageView;Landroid/net/Uri;Lcom/applovin/impl/sdk/CoreSdk;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setMediaView(Landroid/view/View;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 247
    .line 248
    .line 249
    new-instance v1, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    .line 250
    .line 251
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd$Assets;->getMainImageUri()Landroid/net/Uri;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-direct {v1, p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;-><init>(Landroid/net/Uri;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setMainImage(Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 259
    .line 260
    .line 261
    :cond_5
    :goto_1
    new-instance p1, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$MaxMolocoNativeAd;

    .line 262
    .line 263
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 264
    .line 265
    invoke-direct {p1, v1, v0}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$MaxMolocoNativeAd;-><init>(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)V

    .line 266
    .line 267
    .line 268
    const-string v0, ""

    .line 269
    .line 270
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->serverParameters:Landroid/os/Bundle;

    .line 271
    .line 272
    const-string v2, "template"

    .line 273
    .line 274
    invoke-static {v2, v0, v1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    new-instance v1, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    .line 279
    .line 280
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_6

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_6
    const-string v0, "media_banner_template"

    .line 288
    .line 289
    :goto_2
    iget-object v2, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->getApplicationContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-direct {v1, p1, v0, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/content/Context;)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 299
    .line 300
    invoke-static {v0, v1}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter;->access$300(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {p1, v0, v1}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$MaxMolocoNativeAd;->prepareForInteraction(Ljava/util/List;Landroid/view/ViewGroup;)Z

    .line 305
    .line 306
    .line 307
    iget-object p1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 308
    .line 309
    invoke-interface {p1, v1}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoaded(Landroid/view/View;)V

    .line 310
    .line 311
    .line 312
    iget-object p1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 313
    .line 314
    invoke-static {p1}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter;->access$200(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;)Lcom/moloco/sdk/publisher/NativeAd;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-interface {p1}, Lcom/moloco/sdk/publisher/NativeAd;->handleImpression()V

    .line 319
    .line 320
    .line 321
    return-void
.end method

.method public onGeneralClickHandled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Native "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " ad clicked"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdClicked()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onImpressionHandled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Native "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " ad displayed"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$NativeAdViewListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdDisplayed()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
