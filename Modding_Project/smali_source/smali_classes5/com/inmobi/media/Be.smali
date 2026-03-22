.class public final Lcom/inmobi/media/Be;
.super Lcom/inmobi/media/Ac;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/ue;Ljava/lang/String;III)V
    .locals 2

    .line 1
    const-string v0, "POST"

    .line 2
    .line 3
    const-string v1, "requestType"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "url"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/inmobi/media/Ac;-><init>(Ljava/lang/String;Lcom/inmobi/media/ue;Ljava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    iput p6, p0, Lcom/inmobi/media/N9;->p:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "signature"

    .line 4
    .line 5
    const-string v2, "src"

    .line 6
    .line 7
    invoke-super/range {p0 .. p0}, Lcom/inmobi/media/N9;->f()V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lcom/inmobi/media/L4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/inmobi/media/ab;->a()Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, v0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lcom/inmobi/media/Vc;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "mk-version"

    .line 28
    .line 29
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    sget-object v5, Lcom/inmobi/media/e1;->a:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    const-string v6, "bundle-id"

    .line 37
    .line 38
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Ljava/lang/String;

    .line 43
    .line 44
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->k()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string v6, "ua"

    .line 49
    .line 50
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const-string v6, "ts"

    .line 62
    .line 63
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v4, v0, Lcom/inmobi/media/N9;->m:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    iget-object v5, v0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 71
    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    const-string v6, "account_id"

    .line 75
    .line 76
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/lang/String;

    .line 81
    .line 82
    :cond_2
    sget-object v4, Lcom/inmobi/media/te;->a:Lcom/inmobi/media/te;

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/inmobi/media/te;->c()Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v5, v0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 89
    .line 90
    if-eqz v5, :cond_5

    .line 91
    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    if-nez v4, :cond_4

    .line 99
    .line 100
    :cond_3
    const-string v4, "true"

    .line 101
    .line 102
    :cond_4
    const-string v6, "lat"

    .line 103
    .line 104
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Ljava/lang/String;

    .line 109
    .line 110
    :cond_5
    const-string v4, "u-age"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/lang/String;

    .line 117
    .line 118
    if-eqz v3, :cond_6

    .line 119
    .line 120
    iget-object v4, v0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 121
    .line 122
    if-eqz v4, :cond_6

    .line 123
    .line 124
    const-string v5, "age"

    .line 125
    .line 126
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Ljava/lang/String;

    .line 131
    .line 132
    :cond_6
    sget-object v3, Lcom/inmobi/media/L4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    .line 133
    .line 134
    if-nez v3, :cond_7

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_7
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataModel;->getEmailId()Lcom/inmobi/unifiedId/InMobiUserDataTypes;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-nez v3, :cond_8

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_8
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getMd5()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    if-nez v5, :cond_9

    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getSha1()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    if-nez v5, :cond_9

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getSha256()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    if-nez v5, :cond_9

    .line 161
    .line 162
    :goto_0
    const/4 v3, 0x0

    .line 163
    :cond_9
    if-eqz v3, :cond_a

    .line 164
    .line 165
    iget-object v5, v0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 166
    .line 167
    if-eqz v5, :cond_a

    .line 168
    .line 169
    new-instance v6, Lcom/inmobi/media/q6;

    .line 170
    .line 171
    invoke-direct {v6}, Lcom/inmobi/media/q6;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, v3}, Lcom/inmobi/media/q6;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    const-string v6, "email"

    .line 183
    .line 184
    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Ljava/lang/String;

    .line 189
    .line 190
    :cond_a
    sget-object v3, Lcom/inmobi/media/L4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    .line 191
    .line 192
    if-nez v3, :cond_b

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_b
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataModel;->getPhoneNumber()Lcom/inmobi/unifiedId/InMobiUserDataTypes;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-nez v3, :cond_c

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_c
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getMd5()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    if-nez v5, :cond_d

    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getSha1()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    if-nez v5, :cond_d

    .line 213
    .line 214
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getSha256()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    if-nez v5, :cond_d

    .line 219
    .line 220
    :goto_1
    const/4 v3, 0x0

    .line 221
    :cond_d
    if-eqz v3, :cond_e

    .line 222
    .line 223
    iget-object v5, v0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 224
    .line 225
    if-eqz v5, :cond_e

    .line 226
    .line 227
    new-instance v6, Lcom/inmobi/media/q6;

    .line 228
    .line 229
    invoke-direct {v6}, Lcom/inmobi/media/q6;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6, v3}, Lcom/inmobi/media/q6;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    const-string v6, "phone"

    .line 241
    .line 242
    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    check-cast v3, Ljava/lang/String;

    .line 247
    .line 248
    :cond_e
    new-instance v3, Lorg/json/JSONArray;

    .line 249
    .line 250
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-static {}, Lcom/inmobi/media/Q5;->b()Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    const-string v6, "ufids"

    .line 258
    .line 259
    if-eqz v5, :cond_13

    .line 260
    .line 261
    :try_start_0
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    const/4 v8, 0x1

    .line 266
    if-ne v7, v8, :cond_13

    .line 267
    .line 268
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    const/4 v10, 0x0

    .line 277
    move v11, v10

    .line 278
    :goto_2
    if-ge v11, v9, :cond_13

    .line 279
    .line 280
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    if-eqz v12, :cond_f

    .line 289
    .line 290
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    goto :goto_3

    .line 299
    :cond_f
    const/4 v12, 0x0

    .line 300
    :goto_3
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 301
    .line 302
    .line 303
    move-result-object v13

    .line 304
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v13

    .line 308
    if-eqz v13, :cond_10

    .line 309
    .line 310
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 311
    .line 312
    .line 313
    move-result-object v13

    .line 314
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    goto :goto_4

    .line 319
    :cond_10
    const/4 v13, 0x0

    .line 320
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 321
    .line 322
    .line 323
    move-result-wide v14

    .line 324
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    const-string v8, "expiry"

    .line 329
    .line 330
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 331
    .line 332
    .line 333
    move-result-wide v16

    .line 334
    cmp-long v4, v14, v16

    .line 335
    .line 336
    if-lez v4, :cond_11

    .line 337
    .line 338
    const/4 v4, 0x1

    .line 339
    goto :goto_5

    .line 340
    :cond_11
    move v4, v10

    .line 341
    :goto_5
    if-eqz v12, :cond_12

    .line 342
    .line 343
    if-eqz v13, :cond_12

    .line 344
    .line 345
    new-instance v8, Lorg/json/JSONObject;

    .line 346
    .line 347
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v8, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v8, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    .line 355
    .line 356
    const-string v12, "expired"

    .line 357
    .line 358
    invoke-virtual {v8, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .line 363
    .line 364
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 365
    .line 366
    const/4 v8, 0x1

    .line 367
    goto :goto_2

    .line 368
    :catch_0
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    :cond_13
    iget-object v1, v0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 372
    .line 373
    if-eqz v1, :cond_14

    .line 374
    .line 375
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    const-string v3, "toString(...)"

    .line 380
    .line 381
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    check-cast v1, Ljava/lang/String;

    .line 389
    .line 390
    :cond_14
    sget-object v1, Lcom/inmobi/media/L4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    .line 391
    .line 392
    if-eqz v1, :cond_15

    .line 393
    .line 394
    invoke-virtual {v1}, Lcom/inmobi/unifiedId/InMobiUserDataModel;->getExtras()Ljava/util/HashMap;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    goto :goto_6

    .line 399
    :cond_15
    const/4 v4, 0x0

    .line 400
    :goto_6
    if-eqz v4, :cond_16

    .line 401
    .line 402
    iget-object v1, v0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 403
    .line 404
    if-eqz v1, :cond_16

    .line 405
    .line 406
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 407
    .line 408
    .line 409
    :cond_16
    return-void
.end method
