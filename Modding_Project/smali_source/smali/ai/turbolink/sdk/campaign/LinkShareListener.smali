.class public final Lai/turbolink/sdk/campaign/LinkShareListener;
.super Ljava/lang/Object;
.source "LinkShareListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkShareListener;->context:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/LinkShareListener;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final postMessage(Ljava/lang/String;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "no_install_prompt"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "message"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string v2, "That social media platform is not installed."

    .line 18
    .line 19
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "target_scheme"

    .line 25
    .line 26
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v4, "jsonObject.getString(\"target_scheme\")"

    .line 31
    .line 32
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    .line 33
    .line 34
    .line 35
    :try_start_1
    const-string v4, "sharing_text"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "jsonObject.getString(\"sharing_text\")"

    .line 42
    .line 43
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7

    .line 44
    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v5, "jsonObject.getString(\"no_install_prompt\")"

    .line 57
    .line 58
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v2, v0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    move-object v5, v1

    .line 65
    :goto_0
    move-object v6, v5

    .line 66
    move-object v7, v6

    .line 67
    move-object v8, v7

    .line 68
    move-object v9, v8

    .line 69
    move-object v3, v2

    .line 70
    move-object v2, v9

    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_1
    :goto_1
    const-string v0, "campaign_id"

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v5, "jsonObject.getString(\"campaign_id\")"

    .line 80
    .line 81
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    .line 83
    .line 84
    :try_start_3
    const-string v5, "campaign_title"

    .line 85
    .line 86
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const-string v6, "jsonObject.getString(\"campaign_title\")"

    .line 91
    .line 92
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    .line 93
    .line 94
    .line 95
    :try_start_4
    const-string v6, "campaign_lang"

    .line 96
    .line 97
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    const-string v7, "jsonObject.getString(\"campaign_lang\")"

    .line 102
    .line 103
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    .line 104
    .line 105
    .line 106
    :try_start_5
    const-string v7, "campaign_url"

    .line 107
    .line 108
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    const-string v8, "jsonObject.getString(\"campaign_url\")"

    .line 113
    .line 114
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 115
    .line 116
    .line 117
    :try_start_6
    const-string v8, "user"

    .line 118
    .line 119
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    const-string v9, "jsonObject.getString(\"user\")"

    .line 124
    .line 125
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    .line 126
    .line 127
    .line 128
    :try_start_7
    const-string v9, "share_link"

    .line 129
    .line 130
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    const-string v10, "jsonObject.getString(\"share_link\")"

    .line 135
    .line 136
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    .line 137
    .line 138
    .line 139
    :try_start_8
    const-string v10, "share_text"

    .line 140
    .line 141
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    const-string v10, "jsonObject.getString(\"share_text\")"

    .line 146
    .line 147
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    .line 148
    .line 149
    .line 150
    move-object v1, v3

    .line 151
    goto :goto_8

    .line 152
    :catch_1
    move-exception v3

    .line 153
    :goto_2
    move-object v12, v2

    .line 154
    move-object v2, v0

    .line 155
    move-object v0, v3

    .line 156
    move-object v3, v12

    .line 157
    goto :goto_7

    .line 158
    :catch_2
    move-exception v3

    .line 159
    move-object v9, v1

    .line 160
    goto :goto_2

    .line 161
    :catch_3
    move-exception v3

    .line 162
    move-object v8, v1

    .line 163
    :goto_3
    move-object v9, v8

    .line 164
    goto :goto_2

    .line 165
    :catch_4
    move-exception v3

    .line 166
    move-object v7, v1

    .line 167
    :goto_4
    move-object v8, v7

    .line 168
    goto :goto_3

    .line 169
    :catch_5
    move-exception v3

    .line 170
    move-object v6, v1

    .line 171
    :goto_5
    move-object v7, v6

    .line 172
    goto :goto_4

    .line 173
    :catch_6
    move-exception v3

    .line 174
    move-object v5, v1

    .line 175
    move-object v6, v5

    .line 176
    goto :goto_5

    .line 177
    :catch_7
    move-exception v0

    .line 178
    move-object v4, v1

    .line 179
    :goto_6
    move-object v5, v4

    .line 180
    goto :goto_0

    .line 181
    :catch_8
    move-exception v0

    .line 182
    move-object p1, v1

    .line 183
    move-object v4, p1

    .line 184
    goto :goto_6

    .line 185
    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v11, "Parsing scheme contents of social media is occurs exception."

    .line 191
    .line 192
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    move-object v0, v2

    .line 210
    move-object v2, v3

    .line 211
    :goto_8
    sget-object v3, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 212
    .line 213
    invoke-virtual {v3}, Lai/turbolink/sdk/TurboLink$Companion;->getShareListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    if-nez v3, :cond_2

    .line 218
    .line 219
    :try_start_9
    new-instance v0, Landroid/content/Intent;

    .line 220
    .line 221
    const-string v1, "android.intent.action.VIEW"

    .line 222
    .line 223
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lai/turbolink/sdk/campaign/LinkShareListener;->context:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    .line 233
    .line 234
    .line 235
    goto :goto_9

    .line 236
    :catch_9
    move-exception p1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v1, "Social media is not installed yet."

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object p1, p0, Lai/turbolink/sdk/campaign/LinkShareListener;->context:Landroid/content/Context;

    .line 262
    .line 263
    const/4 v0, 0x0

    .line 264
    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 269
    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_2
    new-instance v10, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;

    .line 273
    .line 274
    invoke-direct {v10}, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v10, p1}, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;->setTargetScheme(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1, v4}, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;->setSharingText(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p1, v2}, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;->setNoInstallPrompt(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;->setCampaignId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p1, v9}, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;->setShareLink(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p1, v1}, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;->setShareText(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {p1, v5}, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;->setCampaignTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {p1, v6}, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;->setCampaignLang(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {p1, v7}, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;->setCampaignUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-virtual {p1, v8}, Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;->setUser(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    iget-object v0, p0, Lai/turbolink/sdk/campaign/LinkShareListener;->context:Landroid/content/Context;

    .line 318
    .line 319
    invoke-interface {v3, v0, p1}, Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;->onSuccess(Landroid/content/Context;Lai/turbolink/sdk/campaign/properties/ListenerShareProperties;)V

    .line 320
    .line 321
    .line 322
    :goto_9
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkShareListener;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method
