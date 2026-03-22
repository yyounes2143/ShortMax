.class Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;
.super Ljava/lang/Object;
.source "FacebookMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->renderNativeAdView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$600(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;Landroid/app/Activity;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lcom/facebook/ads/MediaView;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcom/facebook/ads/MediaView;

    .line 25
    .line 26
    invoke-direct {v3, v1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 30
    .line 31
    invoke-direct {v4}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 35
    .line 36
    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setAdFormat(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 43
    .line 44
    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 45
    .line 46
    invoke-static {v5}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$500(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setTitle(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 59
    .line 60
    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 61
    .line 62
    invoke-static {v5}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$500(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setAdvertiser(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 75
    .line 76
    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 77
    .line 78
    invoke-static {v5}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$500(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setBody(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 91
    .line 92
    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 93
    .line 94
    invoke-static {v5}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$500(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v5}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setCallToAction(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setIconView(Landroid/view/View;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    new-instance v5, Lcom/facebook/ads/AdOptionsView;

    .line 111
    .line 112
    iget-object v6, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 113
    .line 114
    iget-object v6, v6, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 115
    .line 116
    invoke-static {v6}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$500(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    const/4 v7, 0x0

    .line 121
    invoke-direct {v5, v1, v6, v7}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setOptionsView(Landroid/view/View;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setMediaView(Landroid/view/View;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v4, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 137
    .line 138
    iget-object v4, v4, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->serverParameters:Landroid/os/Bundle;

    .line 139
    .line 140
    const-string v5, "template"

    .line 141
    .line 142
    const-string v6, ""

    .line 143
    .line 144
    invoke-static {v5, v6, v4}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    const-string/jumbo v5, "vertical"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_2

    .line 156
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_1

    .line 162
    .line 163
    iget-object v4, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 164
    .line 165
    iget-object v5, v4, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    .line 166
    .line 167
    sget-object v6, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    .line 168
    .line 169
    if-ne v5, v6, :cond_0

    .line 170
    .line 171
    const-string/jumbo v5, "vertical_leader_template"

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_0
    const-string/jumbo v5, "vertical_media_banner_template"

    .line 176
    .line 177
    .line 178
    :goto_0
    iget-object v4, v4, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 179
    .line 180
    invoke-static {v4, v1, v5, v0}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$700(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/app/Activity;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    goto :goto_2

    .line 185
    :cond_1
    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 186
    .line 187
    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 188
    .line 189
    invoke-static {v5, v1, v4, v0}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$700(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/app/Activity;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    goto :goto_2

    .line 194
    :cond_2
    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 195
    .line 196
    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 197
    .line 198
    invoke-static {v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_3

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_3
    const-string v4, "media_banner_template"

    .line 206
    .line 207
    :goto_1
    invoke-static {v5, v1, v4, v0}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$700(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/app/Activity;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    .line 212
    .line 213
    const/4 v5, 0x6

    .line 214
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getTitle()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-static {v5}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-eqz v5, :cond_4

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getTitleTextView()Landroid/widget/TextView;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    if-eqz v5, :cond_4

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getTitleTextView()Landroid/widget/TextView;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    :cond_4
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getAdvertiser()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v5}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_5

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getAdvertiserTextView()Landroid/widget/TextView;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    if-eqz v5, :cond_5

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getAdvertiserTextView()Landroid/widget/TextView;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    :cond_5
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getBody()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-static {v5}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_6

    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getBodyTextView()Landroid/widget/TextView;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    if-eqz v5, :cond_6

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getBodyTextView()Landroid/widget/TextView;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    :cond_6
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getCallToAction()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-static {v5}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-eqz v5, :cond_7

    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getCallToActionButton()Landroid/widget/Button;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    if-eqz v5, :cond_7

    .line 301
    .line 302
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getCallToActionButton()Landroid/widget/Button;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    :cond_7
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getIconView()Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    if-eqz v5, :cond_8

    .line 314
    .line 315
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getIconView()Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    :cond_8
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getMediaContentViewGroup()Landroid/view/ViewGroup;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getMediaView()Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    if-eqz v1, :cond_9

    .line 331
    .line 332
    if-eqz v5, :cond_9

    .line 333
    .line 334
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    :cond_9
    iget-object v1, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 338
    .line 339
    iget-object v1, v1, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 340
    .line 341
    invoke-static {v1}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$500(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    .line 349
    .line 350
    iget-object v1, v1, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 351
    .line 352
    invoke-interface {v1, v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoaded(Landroid/view/View;)V

    .line 353
    .line 354
    .line 355
    return-void
.end method
