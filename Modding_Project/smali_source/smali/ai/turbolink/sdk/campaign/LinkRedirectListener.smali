.class public final Lai/turbolink/sdk/campaign/LinkRedirectListener;
.super Ljava/lang/Object;
.source "LinkRedirectListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;
    }
.end annotation

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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkRedirectListener;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lai/turbolink/sdk/campaign/LinkRedirectListener;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final postMessage(Ljava/lang/String;)V
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "title"

    .line 6
    .line 7
    const-string v3, "reward_info"

    .line 8
    .line 9
    const-string v4, "trans_id"

    .line 10
    .line 11
    const-string v5, "message"

    .line 12
    .line 13
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v5, ""

    .line 17
    .line 18
    sget-object v6, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->USE_REWARD:Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 19
    .line 20
    invoke-virtual {v6}, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->getV()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const/4 v7, 0x0

    .line 25
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "campaign_id"

    .line 31
    .line 32
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    const-string v0, "jsonObject.getString(\"campaign_id\")"

    .line 37
    .line 38
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_a

    .line 39
    .line 40
    .line 41
    :try_start_1
    const-string v0, "campaign_title"

    .line 42
    .line 43
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    const-string v0, "jsonObject.getString(\"campaign_title\")"

    .line 48
    .line 49
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9

    .line 50
    .line 51
    .line 52
    :try_start_2
    const-string v0, "campaign_lang"

    .line 53
    .line 54
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    const-string v0, "jsonObject.getString(\"campaign_lang\")"

    .line 59
    .line 60
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8

    .line 61
    .line 62
    .line 63
    :try_start_3
    const-string v0, "campaign_url"

    .line 64
    .line 65
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    const-string v0, "jsonObject.getString(\"campaign_url\")"

    .line 70
    .line 71
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7

    .line 72
    .line 73
    .line 74
    :try_start_4
    const-string v0, "user"

    .line 75
    .line 76
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    const-string v0, "jsonObject.getString(\"user\")"

    .line 81
    .line 82
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    .line 83
    .line 84
    .line 85
    :try_start_5
    const-string v0, "type"

    .line 86
    .line 87
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    .line 97
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v4, "jsonObject.getString(\"trans_id\")"

    .line 102
    .line 103
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 104
    .line 105
    .line 106
    move-object v4, v0

    .line 107
    goto :goto_2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    move-object v14, v5

    .line 110
    :goto_0
    move-object v15, v14

    .line 111
    move-object/from16 v17, v15

    .line 112
    .line 113
    :goto_1
    move-object v5, v9

    .line 114
    goto/16 :goto_9

    .line 115
    .line 116
    :cond_0
    move-object v4, v5

    .line 117
    :goto_2
    :try_start_6
    const-string v0, "app_url"

    .line 118
    .line 119
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    const-string v0, "jsonObject.getString(\"app_url\")"

    .line 124
    .line 125
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    .line 126
    .line 127
    .line 128
    :try_start_7
    const-string v0, "target_campaign_url"

    .line 129
    .line 130
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    const-string v0, "jsonObject.getString(\"target_campaign_url\")"

    .line 135
    .line 136
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    .line 137
    .line 138
    .line 139
    :try_start_8
    new-instance v5, Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;

    .line 140
    .line 141
    invoke-direct {v5}, Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;-><init>()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    .line 142
    .line 143
    .line 144
    :try_start_9
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_2

    .line 149
    .line 150
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_2

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const-string v3, "rewardObject.getString(\"title\")"

    .line 165
    .line 166
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v2}, Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;->setTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;

    .line 170
    .line 171
    .line 172
    const-string v2, "kv_data"

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    const/4 v7, 0x0

    .line 188
    :goto_3
    if-ge v7, v3, :cond_1

    .line 189
    .line 190
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    move-object/from16 p1, v0

    .line 195
    .line 196
    new-instance v0, Lai/turbolink/sdk/deeplink/LinkDataProperties;

    .line 197
    .line 198
    invoke-direct {v0}, Lai/turbolink/sdk/deeplink/LinkDataProperties;-><init>()V

    .line 199
    .line 200
    .line 201
    move/from16 v16, v3

    .line 202
    .line 203
    const-string v3, "key"

    .line 204
    .line 205
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    .line 209
    move-object/from16 v17, v4

    .line 210
    .line 211
    :try_start_a
    const-string v4, "kvData.getString(\"key\")"

    .line 212
    .line 213
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v3}, Lai/turbolink/sdk/deeplink/LinkDataProperties;->setKey(Ljava/lang/String;)Lai/turbolink/sdk/deeplink/LinkDataProperties;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const-string v3, "value"

    .line 221
    .line 222
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    const-string v4, "kvData.getString(\"value\")"

    .line 227
    .line 228
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v3}, Lai/turbolink/sdk/deeplink/LinkDataProperties;->setValue(Ljava/lang/String;)Lai/turbolink/sdk/deeplink/LinkDataProperties;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    add-int/lit8 v7, v7, 0x1

    .line 239
    .line 240
    move-object/from16 v0, p1

    .line 241
    .line 242
    move/from16 v3, v16

    .line 243
    .line 244
    move-object/from16 v4, v17

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :catch_1
    move-exception v0

    .line 248
    :goto_4
    move-object v7, v5

    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :catch_2
    move-exception v0

    .line 252
    move-object/from16 v17, v4

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_1
    move-object/from16 v17, v4

    .line 256
    .line 257
    invoke-virtual {v5, v2}, Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;->setKvData(Ljava/util/List;)Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    .line 258
    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_2
    move-object/from16 v17, v4

    .line 262
    .line 263
    :goto_5
    move-object/from16 v4, v17

    .line 264
    .line 265
    goto/16 :goto_a

    .line 266
    .line 267
    :catch_3
    move-exception v0

    .line 268
    move-object/from16 v17, v4

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :catch_4
    move-exception v0

    .line 273
    move-object/from16 v17, v4

    .line 274
    .line 275
    move-object v15, v5

    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :catch_5
    move-exception v0

    .line 279
    move-object/from16 v17, v4

    .line 280
    .line 281
    move-object v14, v5

    .line 282
    move-object v15, v14

    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :catch_6
    move-exception v0

    .line 286
    move-object v13, v5

    .line 287
    :goto_6
    move-object v14, v13

    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :catch_7
    move-exception v0

    .line 291
    move-object v12, v5

    .line 292
    :goto_7
    move-object v13, v12

    .line 293
    goto :goto_6

    .line 294
    :catch_8
    move-exception v0

    .line 295
    move-object v11, v5

    .line 296
    :goto_8
    move-object v12, v11

    .line 297
    goto :goto_7

    .line 298
    :catch_9
    move-exception v0

    .line 299
    move-object v10, v5

    .line 300
    move-object v11, v10

    .line 301
    goto :goto_8

    .line 302
    :catch_a
    move-exception v0

    .line 303
    move-object v10, v5

    .line 304
    move-object v11, v10

    .line 305
    move-object v12, v11

    .line 306
    move-object v13, v12

    .line 307
    move-object v14, v13

    .line 308
    move-object v15, v14

    .line 309
    move-object/from16 v17, v15

    .line 310
    .line 311
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v3, "Parsing link redirect listener content is occurs exception."

    .line 317
    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    move-object v9, v5

    .line 336
    move-object v5, v7

    .line 337
    goto :goto_5

    .line 338
    :goto_a
    sget-object v0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->TARGET_CAMPAIGN_URL:Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 339
    .line 340
    invoke-virtual {v0}, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->getV()I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-ne v6, v0, :cond_3

    .line 345
    .line 346
    iget-object v0, v1, Lai/turbolink/sdk/campaign/LinkRedirectListener;->context:Landroid/content/Context;

    .line 347
    .line 348
    invoke-static {v0, v15}, Lai/turbolink/sdk/TurboLink$Campaign;->loadUrl(Landroid/content/Context;Ljava/lang/String;)Lai/turbolink/sdk/campaign/CampaignBuilder;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lai/turbolink/sdk/campaign/CampaignBuilder;->build()V

    .line 353
    .line 354
    .line 355
    goto :goto_b

    .line 356
    :cond_3
    new-instance v0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;

    .line 357
    .line 358
    invoke-direct {v0}, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v9}, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->setCampaignId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v0, v10}, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->setCampaignTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v0, v11}, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->setCampaignLang(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0, v12}, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->setCampaignUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v0, v13}, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->setUser(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v0, v6}, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->setType(I)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0, v4}, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->setTransId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0, v14}, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->setAppUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0, v5}, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->setRewardInfo(Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    sget-object v2, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 398
    .line 399
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$Companion;->getRedirectListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    if-eqz v2, :cond_4

    .line 404
    .line 405
    iget-object v3, v1, Lai/turbolink/sdk/campaign/LinkRedirectListener;->context:Landroid/content/Context;

    .line 406
    .line 407
    invoke-interface {v2, v3, v0}, Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;->onSuccess(Landroid/content/Context;Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;)V

    .line 408
    .line 409
    .line 410
    :cond_4
    :goto_b
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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkRedirectListener;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method
