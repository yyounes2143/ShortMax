.class public Lcom/bytedance/bdtracker/b0;
.super Lcom/bytedance/bdtracker/c0;
.source ""


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/bdtracker/c0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->h()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_9

    .line 14
    .line 15
    iget-object v2, v1, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-eqz v5, :cond_8

    .line 26
    .line 27
    iget-object v6, v1, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 28
    .line 29
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/r3;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2}, Lcom/bytedance/applog/UriConfig;->getActiveUri()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v7, Lcom/bytedance/applog/Level;->L0:Lcom/bytedance/applog/Level;

    .line 40
    .line 41
    invoke-virtual {v6, v0, v2, v3, v7}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v2, v1, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 48
    .line 49
    iget-object v6, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 50
    .line 51
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 52
    .line 53
    filled-new-array {v0, v5}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const-string v8, "Start to active to uri:{} with request:{}..."

    .line 58
    .line 59
    const/16 v9, 0xb

    .line 60
    .line 61
    invoke-interface {v6, v9, v8, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/r3;

    .line 72
    .line 73
    const-string v7, "google_aid"

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    const-class v10, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v5, v7, v8, v10}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    check-cast v11, Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v6, v7, v11}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    int-to-float v7, v7

    .line 96
    const/high16 v11, 0x3f800000    # 1.0f

    .line 97
    .line 98
    mul-float/2addr v7, v11

    .line 99
    const v11, 0x4a5bba00    # 3600000.0f

    .line 100
    .line 101
    .line 102
    div-float/2addr v7, v11

    .line 103
    const/high16 v11, -0x3ec00000    # -12.0f

    .line 104
    .line 105
    cmpg-float v12, v7, v11

    .line 106
    .line 107
    if-gez v12, :cond_0

    .line 108
    .line 109
    move v7, v11

    .line 110
    :cond_0
    const/high16 v11, 0x41400000    # 12.0f

    .line 111
    .line 112
    cmpl-float v12, v7, v11

    .line 113
    .line 114
    if-lez v12, :cond_1

    .line 115
    .line 116
    move v7, v11

    .line 117
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v7, ""

    .line 126
    .line 127
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    const-string v12, "timezone"

    .line 135
    .line 136
    invoke-static {v6, v12, v11}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v11, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 140
    .line 141
    invoke-virtual {v11}, Lcom/bytedance/bdtracker/d;->getActiveCustomParams()Lcom/bytedance/applog/IActiveCustomParamsCallback;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    if-eqz v11, :cond_3

    .line 146
    .line 147
    invoke-interface {v11}, Lcom/bytedance/applog/IActiveCustomParamsCallback;->getParams()Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    if-eqz v11, :cond_3

    .line 152
    .line 153
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    if-nez v12, :cond_3

    .line 158
    .line 159
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    if-eqz v12, :cond_3

    .line 172
    .line 173
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    check-cast v12, Ljava/util/Map$Entry;

    .line 178
    .line 179
    if-eqz v12, :cond_2

    .line 180
    .line 181
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    check-cast v13, Ljava/lang/String;

    .line 186
    .line 187
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    check-cast v12, Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    if-nez v14, :cond_2

    .line 198
    .line 199
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v14

    .line 203
    if-nez v14, :cond_2

    .line 204
    .line 205
    new-instance v14, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v15, "custom_"

    .line 211
    .line 212
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    invoke-static {v6, v13, v12}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_3
    const-string v11, "real_package_name"

    .line 227
    .line 228
    invoke-virtual {v0, v5, v11, v8, v10}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    check-cast v12, Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    if-nez v13, :cond_4

    .line 239
    .line 240
    const-string v13, "package"

    .line 241
    .line 242
    invoke-virtual {v0, v5, v13, v8, v10}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v14

    .line 246
    check-cast v14, Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v6, v13, v14}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v6, v11, v12}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_4
    const-string v11, "carrier"

    .line 255
    .line 256
    invoke-virtual {v0, v5, v11, v8, v10}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v12

    .line 260
    check-cast v12, Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v6, v11, v12}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const-string v11, "mcc_mnc"

    .line 266
    .line 267
    invoke-virtual {v0, v5, v11, v8, v10}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    check-cast v12, Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v6, v11, v12}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v11, "sim_region"

    .line 277
    .line 278
    invoke-virtual {v0, v5, v11, v8, v10}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    check-cast v12, Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v6, v11, v12}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const-string v11, "app_version_minor"

    .line 288
    .line 289
    invoke-virtual {v0, v5, v11, v8, v10}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    check-cast v12, Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v6, v11, v12}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-static {v0, v6, v5}, Lcom/bytedance/applog/util/SensitiveUtils;->addSensitiveParamsForUrlQuery(Lcom/bytedance/bdtracker/r3;Ljava/lang/StringBuilder;Lorg/json/JSONObject;)V

    .line 299
    .line 300
    .line 301
    const-class v11, Lorg/json/JSONObject;

    .line 302
    .line 303
    const-string v12, "oaid"

    .line 304
    .line 305
    invoke-virtual {v0, v5, v12, v8, v11}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    check-cast v11, Lorg/json/JSONObject;

    .line 310
    .line 311
    invoke-static {v11}, Lcom/bytedance/bdtracker/h5;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v11

    .line 315
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 316
    .line 317
    .line 318
    move-result v13

    .line 319
    if-nez v13, :cond_5

    .line 320
    .line 321
    invoke-static {v6, v12, v11}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    :cond_5
    const-string v11, "click_id"

    .line 325
    .line 326
    invoke-virtual {v0, v5, v11, v8, v10}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v12

    .line 330
    check-cast v12, Ljava/lang/String;

    .line 331
    .line 332
    invoke-static {v6, v11, v12}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v11, "click_id_nature"

    .line 336
    .line 337
    invoke-virtual {v0, v5, v11, v8, v10}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v12

    .line 341
    check-cast v12, Ljava/lang/String;

    .line 342
    .line 343
    invoke-static {v6, v11, v12}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    const-string v11, "client_tun"

    .line 347
    .line 348
    invoke-virtual {v0, v5, v11, v8, v10}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v12

    .line 352
    check-cast v12, Ljava/lang/String;

    .line 353
    .line 354
    invoke-static {v6, v11, v12}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    const-string v11, "client_anpi"

    .line 358
    .line 359
    invoke-virtual {v0, v5, v11, v8, v10}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    check-cast v0, Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v6, v11, v0}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    const-string v0, "req_id"

    .line 373
    .line 374
    invoke-static {}, Lcom/bytedance/bdtracker/x4;->a()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    if-nez v10, :cond_7

    .line 383
    .line 384
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 385
    .line 386
    .line 387
    move-result v10

    .line 388
    if-eqz v10, :cond_6

    .line 389
    .line 390
    goto :goto_1

    .line 391
    :cond_6
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    invoke-virtual {v10, v0, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    goto :goto_1

    .line 412
    :catchall_0
    move-exception v0

    .line 413
    iget-object v6, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 414
    .line 415
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 416
    .line 417
    new-array v10, v4, [Ljava/lang/Object;

    .line 418
    .line 419
    const-string v11, "addQuery"

    .line 420
    .line 421
    invoke-interface {v6, v9, v11, v0, v10}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    :cond_7
    :goto_1
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/p3;->a()Ljava/util/HashMap;

    .line 425
    .line 426
    .line 427
    move-result-object v14

    .line 428
    :try_start_1
    iget-object v0, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 429
    .line 430
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    iget-object v0, v2, Lcom/bytedance/bdtracker/p3;->c:Lcom/bytedance/bdtracker/p4;

    .line 435
    .line 436
    invoke-virtual {v0, v5}, Lcom/bytedance/bdtracker/p4;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    const/16 v16, 0x1

    .line 441
    .line 442
    const v17, 0xea60

    .line 443
    .line 444
    .line 445
    const/4 v11, 0x0

    .line 446
    const/4 v13, 0x0

    .line 447
    const/4 v15, 0x0

    .line 448
    invoke-interface/range {v10 .. v17}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    new-instance v5, Ljava/lang/String;

    .line 453
    .line 454
    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 455
    .line 456
    .line 457
    :try_start_2
    iget-object v0, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 458
    .line 459
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 460
    .line 461
    const-string v6, "request active success: {}"

    .line 462
    .line 463
    :try_start_3
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v8

    .line 467
    invoke-interface {v0, v9, v6, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 468
    .line 469
    .line 470
    goto :goto_3

    .line 471
    :catch_0
    move-exception v0

    .line 472
    move-object v8, v5

    .line 473
    goto :goto_2

    .line 474
    :catch_1
    move-exception v0

    .line 475
    :goto_2
    iget-object v5, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 476
    .line 477
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 478
    .line 479
    new-array v6, v4, [Ljava/lang/Object;

    .line 480
    .line 481
    const-string v10, "request active error"

    .line 482
    .line 483
    invoke-interface {v5, v9, v10, v0, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    move-object v5, v8

    .line 487
    :goto_3
    invoke-virtual {v2, v5}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    if-eqz v0, :cond_9

    .line 492
    .line 493
    const-string v2, "message"

    .line 494
    .line 495
    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    const-string v2, "success"

    .line 500
    .line 501
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_9

    .line 506
    .line 507
    move v4, v3

    .line 508
    goto :goto_4

    .line 509
    :cond_8
    iget-object v0, v1, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 510
    .line 511
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 512
    .line 513
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 514
    .line 515
    new-array v2, v4, [Ljava/lang/Object;

    .line 516
    .line 517
    const-string v5, "Device header is null"

    .line 518
    .line 519
    invoke-interface {v0, v5, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    .line 521
    .line 522
    :cond_9
    :goto_4
    if-eqz v4, :cond_a

    .line 523
    .line 524
    iput-boolean v3, v1, Lcom/bytedance/bdtracker/c0;->d:Z

    .line 525
    .line 526
    :cond_a
    return v4
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Activator"

    .line 2
    .line 3
    return-object v0
.end method

.method public e()[J
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/h0;->g:[J

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    const-wide/32 v0, 0x36ee80

    .line 2
    .line 3
    .line 4
    return-wide v0
.end method
