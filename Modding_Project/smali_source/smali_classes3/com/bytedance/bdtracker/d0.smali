.class public Lcom/bytedance/bdtracker/d0;
.super Lcom/bytedance/bdtracker/c0;
.source ""


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    const-string v1, "app_log_last_config_time"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/bdtracker/c0;-><init>(Lcom/bytedance/bdtracker/e0;J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 21

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
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->h()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_15

    .line 17
    .line 18
    if-eqz v2, :cond_15

    .line 19
    .line 20
    invoke-static {v2}, Lcom/bytedance/bdtracker/p3;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, v1, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const-string v3, "event_filter"

    .line 38
    .line 39
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v3, v1, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 43
    .line 44
    invoke-static {v3, v2}, Lcom/bytedance/bdtracker/p4;->a(Lcom/bytedance/applog/IAppLogInstance;Lorg/json/JSONObject;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v1, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/r3;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v6, v1, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 56
    .line 57
    invoke-virtual {v6}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    sget-object v7, Lcom/bytedance/applog/Level;->L1:Lcom/bytedance/applog/Level;

    .line 66
    .line 67
    invoke-virtual {v3, v0, v6, v5, v7}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v3, v1, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 74
    .line 75
    sget-object v6, Lcom/bytedance/bdtracker/p4;->b:[Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0, v6}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v6, v3, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 82
    .line 83
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 84
    .line 85
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    const-string v8, "Start to get config to uri:{} with request:{}..."

    .line 90
    .line 91
    const/16 v9, 0xb

    .line 92
    .line 93
    invoke-interface {v6, v9, v8, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/bytedance/bdtracker/p3;->a()Ljava/util/HashMap;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    const v7, 0xea60

    .line 101
    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    :try_start_0
    invoke-virtual {v3, v2, v0, v6, v7}, Lcom/bytedance/bdtracker/p3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    move-object v2, v0

    .line 111
    iget-object v0, v3, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 114
    .line 115
    new-array v6, v4, [Ljava/lang/Object;

    .line 116
    .line 117
    const-string v7, "Config failed"

    .line 118
    .line 119
    invoke-interface {v0, v9, v7, v2, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    move-object v0, v8

    .line 123
    :goto_0
    iget-object v2, v3, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 124
    .line 125
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 126
    .line 127
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const-string v7, "Get config with response:{}"

    .line 132
    .line 133
    invoke-interface {v2, v9, v7, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v0}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    .line 141
    .line 142
    const-string v2, "magic_tag"

    .line 143
    .line 144
    const-string v3, ""

    .line 145
    .line 146
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const-string v3, "ss_app_log"

    .line 151
    .line 152
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_1

    .line 157
    .line 158
    const-string v2, "config"

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    goto :goto_1

    .line 165
    :cond_1
    move-object v0, v8

    .line 166
    :goto_1
    iget-object v2, v1, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 167
    .line 168
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 169
    .line 170
    iget-object v3, v1, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 171
    .line 172
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/d1;

    .line 173
    .line 174
    if-eqz v3, :cond_3

    .line 175
    .line 176
    iget-object v6, v2, Lcom/bytedance/bdtracker/p1;->i:Lorg/json/JSONObject;

    .line 177
    .line 178
    if-eqz v0, :cond_2

    .line 179
    .line 180
    if-eqz v6, :cond_2

    .line 181
    .line 182
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    goto :goto_2

    .line 195
    :cond_2
    invoke-static {v0, v6}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    :goto_2
    xor-int/2addr v6, v5

    .line 200
    invoke-virtual {v3, v6, v0}, Lcom/bytedance/bdtracker/d1;->onRemoteConfigGet(ZLorg/json/JSONObject;)V

    .line 201
    .line 202
    .line 203
    :cond_3
    if-eqz v0, :cond_15

    .line 204
    .line 205
    iget-object v3, v2, Lcom/bytedance/bdtracker/p1;->b:Lcom/bytedance/bdtracker/d;

    .line 206
    .line 207
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 208
    .line 209
    const-string v6, "ConfigManager"

    .line 210
    .line 211
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    const-string v9, "Set config:{}"

    .line 220
    .line 221
    invoke-interface {v3, v6, v9, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iput-object v0, v2, Lcom/bytedance/bdtracker/p1;->i:Lorg/json/JSONObject;

    .line 225
    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 227
    .line 228
    .line 229
    move-result-wide v6

    .line 230
    iget-object v3, v2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 231
    .line 232
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    const-string v9, "session_interval"

    .line 237
    .line 238
    invoke-virtual {v0, v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    int-to-long v10, v10

    .line 243
    const-wide/16 v12, 0x0

    .line 244
    .line 245
    cmp-long v12, v10, v12

    .line 246
    .line 247
    const-wide/32 v13, 0x93a80

    .line 248
    .line 249
    .line 250
    const-wide/16 v15, 0x3e8

    .line 251
    .line 252
    if-lez v12, :cond_4

    .line 253
    .line 254
    cmp-long v12, v10, v13

    .line 255
    .line 256
    if-gtz v12, :cond_4

    .line 257
    .line 258
    mul-long/2addr v10, v15

    .line 259
    invoke-interface {v3, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_4
    invoke-interface {v3, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    .line 265
    .line 266
    :goto_3
    const/16 v9, 0x3c

    .line 267
    .line 268
    const-string v10, "batch_event_interval"

    .line 269
    .line 270
    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    int-to-long v11, v9

    .line 275
    mul-long/2addr v11, v15

    .line 276
    const-wide/16 v17, 0x2710

    .line 277
    .line 278
    cmp-long v9, v11, v17

    .line 279
    .line 280
    if-ltz v9, :cond_5

    .line 281
    .line 282
    const-wide/32 v17, 0x493e0

    .line 283
    .line 284
    .line 285
    cmp-long v9, v11, v17

    .line 286
    .line 287
    if-gtz v9, :cond_5

    .line 288
    .line 289
    invoke-interface {v3, v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_5
    invoke-interface {v3, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    .line 295
    .line 296
    :goto_4
    const-string v9, "batch_event_size"

    .line 297
    .line 298
    const/4 v10, -0x1

    .line 299
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 300
    .line 301
    .line 302
    move-result v11

    .line 303
    invoke-virtual {v2, v11}, Lcom/bytedance/bdtracker/p1;->a(I)Z

    .line 304
    .line 305
    .line 306
    move-result v12

    .line 307
    if-eqz v12, :cond_6

    .line 308
    .line 309
    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 310
    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_6
    invoke-interface {v3, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    .line 315
    .line 316
    :goto_5
    const-string v9, "send_launch_timely"

    .line 317
    .line 318
    invoke-virtual {v0, v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    move-wide/from16 v17, v6

    .line 323
    .line 324
    if-lez v11, :cond_7

    .line 325
    .line 326
    int-to-long v5, v11

    .line 327
    cmp-long v5, v5, v13

    .line 328
    .line 329
    if-gtz v5, :cond_7

    .line 330
    .line 331
    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_7
    invoke-interface {v3, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    .line 337
    .line 338
    :goto_6
    const-string v5, "abtest_fetch_interval"

    .line 339
    .line 340
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    int-to-long v6, v6

    .line 345
    const-wide/16 v19, 0x14

    .line 346
    .line 347
    cmp-long v9, v6, v19

    .line 348
    .line 349
    if-lez v9, :cond_8

    .line 350
    .line 351
    cmp-long v9, v6, v13

    .line 352
    .line 353
    if-gtz v9, :cond_8

    .line 354
    .line 355
    mul-long/2addr v6, v15

    .line 356
    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 357
    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_8
    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 361
    .line 362
    .line 363
    :goto_7
    iget-object v5, v2, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 364
    .line 365
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->isAutoTrackEnabled()Z

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    const-string v6, "bav_log_collect"

    .line 370
    .line 371
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    .line 377
    .line 378
    iput v5, v2, Lcom/bytedance/bdtracker/p1;->s:I

    .line 379
    .line 380
    iget-object v5, v2, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 381
    .line 382
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    const-string v6, "bav_ab_config"

    .line 387
    .line 388
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 393
    .line 394
    .line 395
    const-string v5, "real_time_events"

    .line 396
    .line 397
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    if-eqz v6, :cond_9

    .line 402
    .line 403
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 404
    .line 405
    .line 406
    move-result v7

    .line 407
    if-lez v7, :cond_9

    .line 408
    .line 409
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_9
    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    .line 419
    .line 420
    :goto_8
    iput-object v8, v2, Lcom/bytedance/bdtracker/p1;->l:Ljava/util/HashSet;

    .line 421
    .line 422
    const-string v5, "sensitive_fields"

    .line 423
    .line 424
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    if-eqz v6, :cond_a

    .line 429
    .line 430
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    if-lez v7, :cond_a

    .line 435
    .line 436
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    .line 442
    .line 443
    goto :goto_9

    .line 444
    :cond_a
    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 445
    .line 446
    .line 447
    :goto_9
    const-string v5, "app_log_last_config_time"

    .line 448
    .line 449
    move-wide/from16 v6, v17

    .line 450
    .line 451
    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 452
    .line 453
    .line 454
    const-string v5, "forbid_report_phone_detail_info"

    .line 455
    .line 456
    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    if-ltz v6, :cond_c

    .line 461
    .line 462
    if-lez v6, :cond_b

    .line 463
    .line 464
    const/4 v6, 0x1

    .line 465
    goto :goto_a

    .line 466
    :cond_b
    move v6, v4

    .line 467
    :goto_a
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 468
    .line 469
    .line 470
    :cond_c
    const-wide/16 v6, 0x5460

    .line 471
    .line 472
    const-string v9, "fetch_interval"

    .line 473
    .line 474
    invoke-virtual {v0, v9, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 475
    .line 476
    .line 477
    move-result-wide v6

    .line 478
    mul-long/2addr v6, v15

    .line 479
    const-wide/32 v10, 0x1b7740

    .line 480
    .line 481
    .line 482
    cmp-long v10, v6, v10

    .line 483
    .line 484
    if-ltz v10, :cond_d

    .line 485
    .line 486
    const-wide/32 v10, 0xa4cb800

    .line 487
    .line 488
    .line 489
    cmp-long v10, v6, v10

    .line 490
    .line 491
    if-lez v10, :cond_e

    .line 492
    .line 493
    :cond_d
    const-wide/32 v6, 0x1499700

    .line 494
    .line 495
    .line 496
    :cond_e
    invoke-interface {v3, v9, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 497
    .line 498
    .line 499
    const-string v6, "applog_disable_monitor"

    .line 500
    .line 501
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    if-eqz v7, :cond_10

    .line 506
    .line 507
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 508
    .line 509
    .line 510
    move-result v6

    .line 511
    const/4 v12, 0x1

    .line 512
    if-ne v6, v12, :cond_f

    .line 513
    .line 514
    move v6, v12

    .line 515
    goto :goto_b

    .line 516
    :cond_f
    move v6, v4

    .line 517
    :goto_b
    const-string v7, "monitor_enabled"

    .line 518
    .line 519
    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 520
    .line 521
    .line 522
    goto :goto_c

    .line 523
    :cond_10
    const/4 v12, 0x1

    .line 524
    :goto_c
    const-string v6, "enter_background_not_send"

    .line 525
    .line 526
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 527
    .line 528
    .line 529
    move-result v7

    .line 530
    if-eqz v7, :cond_12

    .line 531
    .line 532
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    move-result v7

    .line 536
    if-ne v7, v12, :cond_11

    .line 537
    .line 538
    const/4 v7, 0x1

    .line 539
    goto :goto_d

    .line 540
    :cond_11
    move v7, v4

    .line 541
    :goto_d
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 542
    .line 543
    .line 544
    :cond_12
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/p1;->k()V

    .line 548
    .line 549
    .line 550
    iget-object v3, v1, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 551
    .line 552
    iget-object v6, v2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 553
    .line 554
    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 555
    .line 556
    .line 557
    move-result v4

    .line 558
    invoke-virtual {v3, v4}, Lcom/bytedance/bdtracker/d;->setForbidReportPhoneDetailInfo(Z)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/p1;->i()Z

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    if-nez v2, :cond_13

    .line 566
    .line 567
    iget-object v2, v1, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 568
    .line 569
    iput-object v8, v2, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 570
    .line 571
    :cond_13
    iget-object v2, v1, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 572
    .line 573
    iget-object v3, v2, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 574
    .line 575
    const/16 v4, 0xd

    .line 576
    .line 577
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    .line 579
    .line 580
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 581
    .line 582
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 583
    .line 584
    .line 585
    iget-object v2, v1, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 586
    .line 587
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 588
    .line 589
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 590
    .line 591
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    if-eqz v2, :cond_14

    .line 596
    .line 597
    iget-object v2, v1, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 598
    .line 599
    const-string v3, "sp_filter_name"

    .line 600
    .line 601
    invoke-static {v2, v3}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    iget-object v3, v1, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 606
    .line 607
    invoke-virtual {v3}, Lcom/bytedance/bdtracker/e0;->b()Landroid/content/Context;

    .line 608
    .line 609
    .line 610
    move-result-object v4

    .line 611
    invoke-static {v4, v2, v0}, Lcom/bytedance/bdtracker/a1;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/bdtracker/a1;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    iput-object v2, v3, Lcom/bytedance/bdtracker/e0;->y:Lcom/bytedance/bdtracker/a1;

    .line 616
    .line 617
    :cond_14
    new-instance v2, Lcom/bytedance/bdtracker/d0$a;

    .line 618
    .line 619
    invoke-direct {v2, v1, v0}, Lcom/bytedance/bdtracker/d0$a;-><init>(Lcom/bytedance/bdtracker/d0;Lorg/json/JSONObject;)V

    .line 620
    .line 621
    .line 622
    const-string v0, "fetch_log_settings_end"

    .line 623
    .line 624
    invoke-static {v0, v2}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 625
    .line 626
    .line 627
    const/4 v2, 0x1

    .line 628
    return v2

    .line 629
    :cond_15
    return v4
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Configure"

    .line 2
    .line 3
    return-object v0
.end method

.method public e()[J
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/h0;->h:[J

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const-string v1, "fetch_interval"

    .line 8
    .line 9
    const-wide/32 v2, 0x1499700

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method
