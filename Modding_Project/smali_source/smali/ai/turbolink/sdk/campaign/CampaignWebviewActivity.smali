.class public final Lai/turbolink/sdk/campaign/CampaignWebviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CampaignWebviewActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private _webviewUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private campaignHashId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private campaignTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private errorView:Landroid/view/View;

.field private isTriggerLoginListener:Z

.field private loadingImage:Landroid/widget/ImageView;

.field private loadingOverlay:Landroid/view/View;

.field private pageViewBeginTime:J

.field private pageViewEndTime:J

.field private retryBtn:Landroid/widget/Button;

.field private turbolinkActionBar:Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->campaignTitle:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->_webviewUrl:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->campaignHashId:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static final synthetic access$getTurbolinkActionBar$p(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->turbolinkActionBar:Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCampaignTitle$p(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->campaignTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static final closeLoadingOverlay$lambda-6(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "$thisActivity"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingOverlay:Landroid/view/View;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const-string p0, "loadingOverlay"

    .line 16
    .line 17
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    :cond_0
    const/16 p1, 0x8

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final enableFullScreenMode()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x3702

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final encryptURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    .line 1
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getCurrentTimestamp()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/16 v2, 0x3e8

    .line 8
    .line 9
    int-to-long v2, v2

    .line 10
    div-long/2addr v0, v2

    .line 11
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 17
    .line 18
    invoke-virtual {v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_USER_TAG()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    sget-object v5, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 23
    .line 24
    invoke-virtual {v5}, Lai/turbolink/sdk/TurboLink$Companion;->getUserId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_LV_TAG()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v5}, Lai/turbolink/sdk/TurboLink$Companion;->getUserLevel()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_LANGUAGE_TAG()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    sget-object v6, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 47
    .line 48
    invoke-virtual {v6}, Lai/turbolink/sdk/TurboLink$Campaign;->getLang()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_TIME_TAG()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_BLACKBOX_TAG()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v5}, Lai/turbolink/sdk/TurboLink$Companion;->getBlackbox()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_VERSION_TAG()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getCURRENT_ENCRYPT_VERSION()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_PLATFORM_TAG()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v5, "app"

    .line 93
    .line 94
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_FULL_SCREEN()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v6}, Lai/turbolink/sdk/TurboLink$Campaign;->getFullScreenMode()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_0

    .line 106
    .line 107
    const-string v5, "1"

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    const-string v5, "0"

    .line 111
    .line 112
    :goto_0
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_CUSTOM_PARAMS()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v6}, Lai/turbolink/sdk/TurboLink$Campaign;->getCustomParams()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    move-object/from16 v4, p1

    .line 135
    .line 136
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_1

    .line 141
    .line 142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Ljava/util/Map$Entry;

    .line 147
    .line 148
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/lang/String;

    .line 153
    .line 154
    sget-object v6, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 155
    .line 156
    invoke-virtual {v6, v4, v5}, Lai/turbolink/sdk/utils/TurboLinkUtil;->removeParameterFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    goto :goto_1

    .line 161
    :cond_1
    sget-object v3, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 162
    .line 163
    sget-object v5, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 164
    .line 165
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_TOKEN_TAG()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v3, v4, v6}, Lai/turbolink/sdk/utils/TurboLinkUtil;->removeParameterFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v3, v4, v2}, Lai/turbolink/sdk/utils/TurboLinkUtil;->addParametersToURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 178
    .line 179
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_USER_TAG()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_LV_TAG()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_LANGUAGE_TAG()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_TIME_TAG()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_BLACKBOX_TAG()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_VERSION_TAG()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_PLATFORM_TAG()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getKEY_APPSECRET()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    move-object/from16 v2, p0

    .line 240
    .line 241
    invoke-direct {v2, v0, v1}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->getAppEncrypt(J)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v15

    .line 245
    filled-new-array/range {v7 .. v15}, [Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const/16 v1, 0x9

    .line 250
    .line 251
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    const-string v1, "%s%s%s%s%s%s%s%s%s"

    .line 256
    .line 257
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    const-string v1, "format(format, *args)"

    .line 262
    .line 263
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v0}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_TOKEN_TAG()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v3, v4, v1, v0}, Lai/turbolink/sdk/utils/TurboLinkUtil;->addParameterToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    return-object v0
.end method

.method private final getAppEncrypt(J)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    rem-long/2addr p1, v0

    .line 5
    long-to-int p1, p1

    .line 6
    add-int/lit8 p2, p1, 0xc

    .line 7
    .line 8
    const-string v0, "5CfUxPK7avjguYtG8yAE4ud6n9s774zVVdKwSxPryzaKHSpS4Lgju4M7sLumdLuQWXpHC6peBp2afBwEBbYnENGbZWfkZ6n4s52D3Xye59bfeK4gS9nfjehK"

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method private final hideErrorPage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "webview"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->errorView:Landroid/view/View;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "errorView"

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v0

    .line 27
    :goto_0
    const/16 v0, 0x8

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic j(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->onResume$lambda-7(Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->onCreate$lambda-1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->openLoadingOverlay$lambda-4(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->closeLoadingOverlay$lambda-6(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->onCreate$lambda-2(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->onCreate$lambda-0(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onCreate$lambda-0(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const-string v1, "webview"

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object p1, v0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 24
    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v0, p0

    .line 32
    :goto_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method

.method private static final onCreate$lambda-1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "windowInsetsCompat"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "windowInsetsCompat.getIn\u2026Compat.Type.statusBars())"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "windowInsetsCompat.getIn\u2026at.Type.navigationBars())"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    .line 38
    .line 39
    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    .line 40
    .line 41
    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    .line 42
    .line 43
    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 44
    .line 45
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method private static final onCreate$lambda-2(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "webview"

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :cond_0
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->_webviewUrl:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->hideErrorPage()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static final onResume$lambda-7(Landroid/webkit/WebView;)V
    .locals 2

    .line 1
    const-string v0, "$thisWebview"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getWebviewGoReloadUrl()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->reSetwebviewGoReloadUrl()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private static final openLoadingOverlay$lambda-4(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "$thisActivity"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingOverlay:Landroid/view/View;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const-string v1, "loadingOverlay"

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    move-object p0, v0

    .line 22
    :cond_0
    const/high16 v2, -0x80000000

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingOverlay:Landroid/view/View;

    .line 28
    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object p0, v0

    .line 35
    :cond_1
    const/4 v2, 0x1

    .line 36
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingOverlay:Landroid/view/View;

    .line 40
    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object p0, v0

    .line 47
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingOverlay:Landroid/view/View;

    .line 51
    .line 52
    if-nez p0, :cond_3

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move-object v0, p0

    .line 59
    :goto_0
    const/4 p0, 0x0

    .line 60
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final closeLoadingOverlay()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lai/turbolink/sdk/campaign/e;

    .line 11
    .line 12
    invoke-direct {v1, p0, p0}, Lai/turbolink/sdk/campaign/e;-><init>(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final getCampaignHashId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->campaignHashId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPageViewBeginTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->pageViewBeginTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPageViewEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->pageViewEndTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "webview"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v0

    .line 27
    :goto_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 32
    .line 33
    .line 34
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->enableFullScreenMode()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getNightMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-le v0, v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x106000c

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 8
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 9
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 10
    :cond_1
    sget v0, Lai/turbolink/sdk/R$style;->Theme_TurboLinkWebThemeNight:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 11
    :cond_2
    sget v0, Lai/turbolink/sdk/R$style;->Theme_TurboLinkWebTheme:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 12
    :goto_0
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getScreenOrientationAll()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 14
    :cond_3
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    sget v0, Lai/turbolink/sdk/R$layout;->webview_turbolink_fullscreen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 16
    sget v0, Lai/turbolink/sdk/R$id;->titleBack:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(R.id.titleBack)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    .line 17
    new-instance v3, Lai/turbolink/sdk/campaign/g;

    invoke-direct {v3, p0}, Lai/turbolink/sdk/campaign/g;-><init>(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 18
    :cond_4
    sget v0, Lai/turbolink/sdk/R$layout;->webview_turbolink:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 19
    sget v0, Lai/turbolink/sdk/R$id;->turbolinkActionBar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;

    iput-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->turbolinkActionBar:Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getInitTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->setTitle(Ljava/lang/String;)V

    .line 21
    :cond_5
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getGoneBack()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->turbolinkActionBar:Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->setBack(Z)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->turbolinkActionBar:Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->setBack(Z)V

    .line 24
    :cond_7
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v0, v3, :cond_8

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 26
    sget v0, Lai/turbolink/sdk/R$id;->root_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    new-instance v3, Lai/turbolink/sdk/campaign/h;

    invoke-direct {v3}, Lai/turbolink/sdk/campaign/h;-><init>()V

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 28
    :cond_8
    :goto_2
    invoke-virtual {p1, p0}, Lai/turbolink/sdk/TurboLink$Campaign;->setLastOpenWebviewActivity(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V

    .line 29
    sget v0, Lai/turbolink/sdk/R$id;->webView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(R.id.webView)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 30
    sget v0, Lai/turbolink/sdk/R$id;->errorView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(R.id.errorView)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->errorView:Landroid/view/View;

    .line 31
    sget v0, Lai/turbolink/sdk/R$id;->retryBtn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(R.id.retryBtn)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->retryBtn:Landroid/widget/Button;

    .line 32
    sget v0, Lai/turbolink/sdk/R$id;->loadingOverlay:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(R.id.loadingOverlay)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingOverlay:Landroid/view/View;

    .line 33
    sget v0, Lai/turbolink/sdk/R$id;->loadingLogo:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(R.id.loadingLogo)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingImage:Landroid/widget/ImageView;

    .line 34
    sget v0, Lai/turbolink/sdk/R$id;->loadingProgressBar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(R.id.loadingProgressBar)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    .line 35
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getLoadingPic()[B

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_d

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_d

    .line 36
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getLoadingPic()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 37
    invoke-static {v0, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 38
    iget-object v3, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingImage:Landroid/widget/ImageView;

    const-string v5, "loadingImage"

    if-nez v3, :cond_9

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_9
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingImage:Landroid/widget/ImageView;

    if-nez v0, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_a
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lai/turbolink/sdk/campaign/b;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 41
    invoke-static {v0}, Lai/turbolink/sdk/campaign/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v0

    invoke-static {v0}, Lai/turbolink/sdk/campaign/d;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 42
    :cond_b
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingImage:Landroid/widget/ImageView;

    if-nez v0, :cond_c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_c
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 43
    :cond_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :goto_3
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingOverlay:Landroid/view/View;

    const-string v3, "loadingOverlay"

    if-nez v0, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->turbolinkActionBar:Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;

    const-string v5, "webview"

    if-eqz v0, :cond_10

    iget-object v6, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v6, :cond_f

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    :cond_f
    invoke-virtual {v0, v6}, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->setWebView(Landroid/webkit/WebView;)V

    .line 46
    :cond_10
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v0, :cond_11

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_11
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 47
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v0, :cond_12

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_12
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 48
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v0, :cond_13

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_13
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 49
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v0, :cond_14

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_14
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 50
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v0, :cond_15

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_15
    new-instance v1, Lai/turbolink/sdk/campaign/webview/CampaignWebViewClient;

    iget-object v2, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->loadingOverlay:Landroid/view/View;

    if-nez v2, :cond_16

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_16
    iget-object v3, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v3, :cond_17

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_17
    iget-object v6, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->errorView:Landroid/view/View;

    if-nez v6, :cond_18

    const-string v6, "errorView"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    :cond_18
    invoke-direct {v1, p0, v2, v3, v6}, Lai/turbolink/sdk/campaign/webview/CampaignWebViewClient;-><init>(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Landroid/view/View;Landroid/webkit/WebView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v0, :cond_19

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_19
    new-instance v1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity$onCreate$3;

    invoke-direct {v1, p0}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity$onCreate$3;-><init>(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getWEBVIEW_INTENT_EXTRA_KEY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1a

    move-object v0, v1

    .line 53
    :cond_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 54
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getLastOpenWebViewUrl()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now! The context is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",current activity is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    invoke-virtual {v3}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-virtual {v6}, Lai/turbolink/sdk/TurboLink;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    goto :goto_4

    :cond_1c
    move-object v6, v4

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", and the campaign url is:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lai/turbolink/sdk/utils/TurboLinkLogger;->i(Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 57
    const-string p1, "Thr url passed to the webview is empty and the webview can`t be loaded."

    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_1d
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 59
    const-string p1, "The url is not a normal URL format."

    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_1e
    sget-object v2, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    const-string v6, "l"

    invoke-virtual {v2, v0, v6}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getUriQueryKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->campaignHashId:Ljava/lang/String;

    .line 61
    invoke-direct {p0, v0}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->encryptURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v3}, Lai/turbolink/sdk/TurboLink$Companion;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 64
    invoke-virtual {v3, v1}, Lai/turbolink/sdk/TurboLink$Companion;->setLastNoLoginWebviewUrl(Ljava/lang/String;)V

    goto :goto_5

    .line 65
    :cond_1f
    invoke-virtual {v3, v0}, Lai/turbolink/sdk/TurboLink$Companion;->setLastNoLoginWebviewUrl(Ljava/lang/String;)V

    .line 66
    :goto_5
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v1, :cond_20

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_20
    new-instance v2, Lai/turbolink/sdk/campaign/LinkShareListener;

    invoke-direct {v2, p0}, Lai/turbolink/sdk/campaign/LinkShareListener;-><init>(Landroid/content/Context;)V

    sget-object v6, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_SHARE_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    invoke-virtual {v6}, Lai/turbolink/sdk/campaign/WebviewListener;->getListener()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v1, :cond_21

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_21
    new-instance v2, Lai/turbolink/sdk/campaign/LinkLoginListener;

    invoke-direct {v2, p0}, Lai/turbolink/sdk/campaign/LinkLoginListener;-><init>(Landroid/content/Context;)V

    sget-object v6, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_LOGIN_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    invoke-virtual {v6}, Lai/turbolink/sdk/campaign/WebviewListener;->getListener()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v1, :cond_22

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_22
    new-instance v2, Lai/turbolink/sdk/campaign/LinkEventListener;

    invoke-direct {v2, p0}, Lai/turbolink/sdk/campaign/LinkEventListener;-><init>(Landroid/content/Context;)V

    sget-object v6, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_EVENT_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    invoke-virtual {v6}, Lai/turbolink/sdk/campaign/WebviewListener;->getListener()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v1, :cond_23

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_23
    new-instance v2, Lai/turbolink/sdk/campaign/LinkRegListener;

    invoke-direct {v2, p0}, Lai/turbolink/sdk/campaign/LinkRegListener;-><init>(Landroid/content/Context;)V

    sget-object v6, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_REG_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    invoke-virtual {v6}, Lai/turbolink/sdk/campaign/WebviewListener;->getListener()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v1, :cond_24

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_24
    new-instance v2, Lai/turbolink/sdk/campaign/LinkPointsListener;

    invoke-direct {v2, p0}, Lai/turbolink/sdk/campaign/LinkPointsListener;-><init>(Landroid/content/Context;)V

    sget-object v6, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_POINTS_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    invoke-virtual {v6}, Lai/turbolink/sdk/campaign/WebviewListener;->getListener()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v1, :cond_25

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_25
    new-instance v2, Lai/turbolink/sdk/campaign/LinkRedirectListener;

    invoke-direct {v2, p0}, Lai/turbolink/sdk/campaign/LinkRedirectListener;-><init>(Landroid/content/Context;)V

    sget-object v6, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_REDIRECT_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    invoke-virtual {v6}, Lai/turbolink/sdk/campaign/WebviewListener;->getListener()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v1, :cond_26

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_26
    new-instance v2, Lai/turbolink/sdk/campaign/LinkUseBrowserOpenListener;

    invoke-direct {v2, p0}, Lai/turbolink/sdk/campaign/LinkUseBrowserOpenListener;-><init>(Landroid/content/Context;)V

    sget-object v6, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_USE_BROWSER_OPEN_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    invoke-virtual {v6}, Lai/turbolink/sdk/campaign/WebviewListener;->getListener()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v1, :cond_27

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_27
    new-instance v2, Lai/turbolink/sdk/campaign/LinkClientRewardsListener;

    invoke-direct {v2, p0}, Lai/turbolink/sdk/campaign/LinkClientRewardsListener;-><init>(Landroid/content/Context;)V

    sget-object v6, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_CLIENT_REWARDS_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    invoke-virtual {v6}, Lai/turbolink/sdk/campaign/WebviewListener;->getListener()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    if-nez v1, :cond_28

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_28
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 75
    iput-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->_webviewUrl:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->retryBtn:Landroid/widget/Button;

    if-nez v1, :cond_29

    const-string v1, "retryBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_29
    move-object v4, v1

    :goto_6
    new-instance v1, Lai/turbolink/sdk/campaign/i;

    invoke-direct {v1, p0}, Lai/turbolink/sdk/campaign/i;-><init>(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v1, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    invoke-direct {v1}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;-><init>()V

    iget-object v2, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->campaignTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignLang(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    move-result-object p1

    .line 80
    invoke-virtual {v3}, Lai/turbolink/sdk/TurboLink$Companion;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignUser(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    move-result-object p1

    .line 81
    invoke-virtual {v3}, Lai/turbolink/sdk/TurboLink$Companion;->getCampaignCreateCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-interface {v0, p0, p1}, Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;->onSuccess(Landroid/content/Context;Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;)V

    :cond_2a
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->isPlugin()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->isPlugin()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->isTriggerLoginListener:Z

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    :cond_0
    const-string v1, ""

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$Companion;->setLastNoLoginWebviewUrl(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    new-instance v1, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 28
    .line 29
    invoke-direct {v1}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->campaignTitle:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    const-string v2, "webview"

    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    :cond_2
    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 61
    .line 62
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$Campaign;->getLang()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignLang(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignUser(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getCampaignDestroyCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-interface {v0, p0, v1}, Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;->onSuccess(Landroid/content/Context;Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 5
    .line 6
    invoke-direct {v0}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->campaignTitle:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->_webviewUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 22
    .line 23
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Campaign;->getLang()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignLang(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 32
    .line 33
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Companion;->getUserId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignUser(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Companion;->getCampaignPauseCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-interface {v1, p0, v0}, Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;->onSuccess(Landroid/content/Context;Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getWebviewGoReloadUrl()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const/16 v3, 0x3e8

    .line 17
    .line 18
    int-to-long v3, v3

    .line 19
    div-long/2addr v1, v3

    .line 20
    iget-object v3, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const-string v5, "webview"

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    move-object v3, v4

    .line 31
    :cond_0
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getWebviewGoReloadUrlLastCustomEventTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    const-wide/16 v8, 0x0

    .line 36
    .line 37
    cmp-long v6, v6, v8

    .line 38
    .line 39
    if-lez v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getWebviewGoReloadUrlLastCustomEventTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    sub-long/2addr v1, v6

    .line 46
    const-wide/16 v6, 0x2

    .line 47
    .line 48
    cmp-long v1, v1, v6

    .line 49
    .line 50
    if-gtz v1, :cond_1

    .line 51
    .line 52
    new-instance v1, Landroid/os/Handler;

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lai/turbolink/sdk/campaign/f;

    .line 62
    .line 63
    invoke-direct {v2, v3}, Lai/turbolink/sdk/campaign/f;-><init>(Landroid/webkit/WebView;)V

    .line 64
    .line 65
    .line 66
    const-wide/16 v3, 0x7d0

    .line 67
    .line 68
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 73
    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    move-object v1, v4

    .line 80
    :cond_2
    iget-object v2, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 81
    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move-object v4, v2

    .line 89
    :goto_0
    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->reSetwebviewGoReloadUrl()V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_1
    new-instance v1, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 104
    .line 105
    invoke-direct {v1}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->campaignTitle:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v2, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->_webviewUrl:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    sget-object v2, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 121
    .line 122
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$Campaign;->getLang()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignLang(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->setCampaignUser(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getCampaignResumeCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    invoke-interface {v0, p0, v1}, Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;->onSuccess(Landroid/content/Context;Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 7
    .line 8
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getFullScreenMode()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->enableFullScreenMode()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final openLoadingOverlay()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lai/turbolink/sdk/campaign/j;

    .line 11
    .line 12
    invoke-direct {v1, p0, p0}, Lai/turbolink/sdk/campaign/j;-><init>(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final reloadCampaign()V
    .locals 3

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->webview:Landroid/webkit/WebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "webview"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    const-string v2, "javascript:refreshStatusListener()"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 18
    .line 19
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->reSetwebviewGoReloadUrl()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setCampaignHashId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->campaignHashId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setIsTriggerLoginListener()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->isTriggerLoginListener:Z

    .line 3
    .line 4
    return-void
.end method

.method public final setPageViewBeginTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->pageViewBeginTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setPageViewEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->pageViewEndTime:J

    .line 2
    .line 3
    return-void
.end method
