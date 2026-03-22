.class public final Lcom/google/android/gms/internal/ads/zzfcd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:Ljava/lang/String;

.field public final zzc:I

.field public final zzd:I

.field public final zze:Ljava/lang/String;

.field public final zzf:I

.field public final zzg:J

.field public final zzh:Z

.field public final zzi:Ljava/lang/String;

.field public final zzj:Lcom/google/android/gms/internal/ads/zzfcc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzk:Landroid/os/Bundle;

.field public final zzl:Ljava/lang/String;

.field public final zzm:Ljava/lang/String;

.field public final zzn:Ljava/lang/String;

.field public final zzo:Lorg/json/JSONObject;

.field public final zzp:Lorg/json/JSONObject;

.field public final zzq:Ljava/lang/String;

.field public final zzr:I

.field public zzs:J

.field public zzt:J


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 26
    .line 27
    .line 28
    const-string v8, ""

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    move-object v11, v8

    .line 33
    move-object v12, v11

    .line 34
    move-object v14, v12

    .line 35
    move-object v15, v14

    .line 36
    move v5, v9

    .line 37
    move v6, v5

    .line 38
    move/from16 v18, v6

    .line 39
    .line 40
    move-object/from16 v19, v10

    .line 41
    .line 42
    const-wide/16 v20, -0x1

    .line 43
    .line 44
    const-wide/16 v22, -0x1

    .line 45
    .line 46
    const-wide/16 v24, 0x0

    .line 47
    .line 48
    const/16 v26, -0x1

    .line 49
    .line 50
    const/16 v27, 0x1

    .line 51
    .line 52
    move-object v9, v15

    .line 53
    move-object v10, v9

    .line 54
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v28

    .line 58
    if-eqz v28, :cond_18

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    const-string v7, "nofill_urls"

    .line 65
    .line 66
    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_0

    .line 71
    .line 72
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzd(Landroid/util/JsonReader;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const-string v7, "refresh_interval"

    .line 78
    .line 79
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_1

    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const-string v7, "refresh_load_delay_time_interval"

    .line 91
    .line 92
    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_2

    .line 97
    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 99
    .line 100
    .line 101
    move-result v26

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const-string v7, "gws_query_id"

    .line 104
    .line 105
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_3

    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    move-object v8, v7

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    const-string v7, "analytics_query_ad_event_id"

    .line 118
    .line 119
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_4

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    move-object v9, v7

    .line 130
    goto :goto_0

    .line 131
    :cond_4
    const-string v7, "is_idless"

    .line 132
    .line 133
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_5

    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    move/from16 v18, v7

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    const-string v7, "response_code"

    .line 147
    .line 148
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_6

    .line 153
    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    goto :goto_0

    .line 159
    :cond_6
    const-string v7, "latency"

    .line 160
    .line 161
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_7

    .line 166
    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextLong()J

    .line 168
    .line 169
    .line 170
    move-result-wide v24

    .line 171
    goto :goto_0

    .line 172
    :cond_7
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zziH:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 173
    .line 174
    move-object/from16 v29, v12

    .line 175
    .line 176
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    check-cast v7, Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_9

    .line 191
    .line 192
    const-string v7, "public_error"

    .line 193
    .line 194
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-eqz v7, :cond_9

    .line 199
    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    sget-object v12, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 205
    .line 206
    if-ne v7, v12, :cond_9

    .line 207
    .line 208
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfcc;

    .line 209
    .line 210
    move-object/from16 v12, p1

    .line 211
    .line 212
    invoke-direct {v7, v12}, Lcom/google/android/gms/internal/ads/zzfcc;-><init>(Landroid/util/JsonReader;)V

    .line 213
    .line 214
    .line 215
    move-object/from16 v19, v7

    .line 216
    .line 217
    :catch_0
    :cond_8
    :goto_1
    move-object/from16 v12, v29

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_9
    move-object/from16 v12, p1

    .line 222
    .line 223
    const-string v7, "bidding_data"

    .line 224
    .line 225
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-eqz v7, :cond_a

    .line 230
    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    move-object v10, v7

    .line 236
    goto :goto_1

    .line 237
    :cond_a
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzkQ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 238
    .line 239
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    check-cast v7, Ljava/lang/Boolean;

    .line 248
    .line 249
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-eqz v7, :cond_b

    .line 254
    .line 255
    const-string v7, "topics_should_record_observation"

    .line 256
    .line 257
    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-eqz v7, :cond_b

    .line 262
    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_b
    const-string v7, "adapter_response_replacement_key"

    .line 268
    .line 269
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    if-eqz v7, :cond_c

    .line 274
    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    move-object v12, v7

    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_c
    const-string v7, "response_info_extras"

    .line 283
    .line 284
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    if-eqz v7, :cond_e

    .line 289
    .line 290
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzgY:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 291
    .line 292
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    check-cast v7, Ljava/lang/Boolean;

    .line 301
    .line 302
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-eqz v7, :cond_d

    .line 307
    .line 308
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzbs;->zza(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 313
    .line 314
    .line 315
    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    if-eqz v7, :cond_8

    .line 317
    .line 318
    move-object v2, v7

    .line 319
    goto :goto_1

    .line 320
    :catch_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 321
    .line 322
    .line 323
    goto :goto_1

    .line 324
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 325
    .line 326
    .line 327
    goto :goto_1

    .line 328
    :cond_e
    const-string v7, "adRequestPostBody"

    .line 329
    .line 330
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    if-eqz v7, :cond_10

    .line 335
    .line 336
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzjI:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 337
    .line 338
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 339
    .line 340
    .line 341
    move-result-object v12

    .line 342
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    check-cast v7, Ljava/lang/Boolean;

    .line 347
    .line 348
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 349
    .line 350
    .line 351
    move-result v7

    .line 352
    if-eqz v7, :cond_f

    .line 353
    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    move-object v15, v7

    .line 359
    goto/16 :goto_1

    .line 360
    .line 361
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_1

    .line 365
    .line 366
    :cond_10
    const-string v7, "adRequestUrl"

    .line 367
    .line 368
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    if-eqz v7, :cond_12

    .line 373
    .line 374
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzjI:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 375
    .line 376
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 377
    .line 378
    .line 379
    move-result-object v12

    .line 380
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    check-cast v7, Ljava/lang/Boolean;

    .line 385
    .line 386
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    if-eqz v7, :cond_11

    .line 391
    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    move-object v14, v7

    .line 397
    goto/16 :goto_1

    .line 398
    .line 399
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_1

    .line 403
    .line 404
    :cond_12
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzjJ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 405
    .line 406
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 407
    .line 408
    .line 409
    move-result-object v12

    .line 410
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v12

    .line 414
    check-cast v12, Ljava/lang/Boolean;

    .line 415
    .line 416
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    if-eqz v12, :cond_13

    .line 421
    .line 422
    const-string v12, "adResponseBody"

    .line 423
    .line 424
    invoke-static {v13, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v12

    .line 428
    if-eqz v12, :cond_13

    .line 429
    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    move-object v11, v7

    .line 435
    goto/16 :goto_1

    .line 436
    .line 437
    :cond_13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 438
    .line 439
    .line 440
    move-result-object v12

    .line 441
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v7

    .line 445
    check-cast v7, Ljava/lang/Boolean;

    .line 446
    .line 447
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 448
    .line 449
    .line 450
    move-result v7

    .line 451
    if-eqz v7, :cond_14

    .line 452
    .line 453
    const-string v7, "adResponseHeaders"

    .line 454
    .line 455
    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    if-eqz v7, :cond_14

    .line 460
    .line 461
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    goto/16 :goto_1

    .line 466
    .line 467
    :cond_14
    const-string v7, "max_parallel_renderers"

    .line 468
    .line 469
    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v7

    .line 473
    if-eqz v7, :cond_15

    .line 474
    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    const/4 v12, 0x1

    .line 480
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    .line 481
    .line 482
    .line 483
    move-result v27

    .line 484
    goto/16 :goto_1

    .line 485
    .line 486
    :cond_15
    const/4 v12, 0x1

    .line 487
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzjR:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 488
    .line 489
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 490
    .line 491
    .line 492
    move-result-object v12

    .line 493
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v7

    .line 497
    check-cast v7, Ljava/lang/Boolean;

    .line 498
    .line 499
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 500
    .line 501
    .line 502
    move-result v7

    .line 503
    if-eqz v7, :cond_16

    .line 504
    .line 505
    const-string v7, "inspector_ad_transaction_extras"

    .line 506
    .line 507
    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    if-eqz v7, :cond_16

    .line 512
    .line 513
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    goto/16 :goto_1

    .line 518
    .line 519
    :cond_16
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzcr:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 520
    .line 521
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 522
    .line 523
    .line 524
    move-result-object v12

    .line 525
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    check-cast v7, Ljava/lang/Boolean;

    .line 530
    .line 531
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 532
    .line 533
    .line 534
    move-result v7

    .line 535
    if-eqz v7, :cond_17

    .line 536
    .line 537
    const-string v7, "latency_extras"

    .line 538
    .line 539
    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v7

    .line 543
    if-eqz v7, :cond_17

    .line 544
    .line 545
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 546
    .line 547
    .line 548
    move-result-object v7

    .line 549
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzbs;->zza(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 550
    .line 551
    .line 552
    move-result-object v7

    .line 553
    if-eqz v7, :cond_8

    .line 554
    .line 555
    const-string v12, "start_time"

    .line 556
    .line 557
    invoke-virtual {v7, v12}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 558
    .line 559
    .line 560
    move-result-wide v12

    .line 561
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzfcd;->zza(D)J

    .line 562
    .line 563
    .line 564
    move-result-wide v22

    .line 565
    const-string v12, "end_time"

    .line 566
    .line 567
    invoke-virtual {v7, v12}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 568
    .line 569
    .line 570
    move-result-wide v12

    .line 571
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzfcd;->zza(D)J

    .line 572
    .line 573
    .line 574
    move-result-wide v20
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 575
    goto/16 :goto_1

    .line 576
    .line 577
    :catch_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_1

    .line 581
    .line 582
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_1

    .line 586
    .line 587
    :cond_18
    move-object/from16 v29, v12

    .line 588
    .line 589
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 590
    .line 591
    .line 592
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/List;

    .line 593
    .line 594
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzc:I

    .line 595
    .line 596
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfk;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 597
    .line 598
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    check-cast v1, Ljava/lang/Boolean;

    .line 603
    .line 604
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    if-eqz v1, :cond_19

    .line 609
    .line 610
    const/4 v1, -0x1

    .line 611
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzd:I

    .line 612
    .line 613
    goto :goto_2

    .line 614
    :cond_19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbes;->zza:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 615
    .line 616
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    check-cast v5, Ljava/lang/Long;

    .line 621
    .line 622
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 623
    .line 624
    .line 625
    move-result-wide v12

    .line 626
    const-wide/16 v16, -0x1

    .line 627
    .line 628
    cmp-long v5, v12, v16

    .line 629
    .line 630
    if-lez v5, :cond_1a

    .line 631
    .line 632
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    check-cast v1, Ljava/lang/Long;

    .line 637
    .line 638
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzd:I

    .line 643
    .line 644
    goto :goto_2

    .line 645
    :cond_1a
    move/from16 v13, v26

    .line 646
    .line 647
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzd:I

    .line 648
    .line 649
    :goto_2
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Ljava/lang/String;

    .line 650
    .line 651
    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zze:Ljava/lang/String;

    .line 652
    .line 653
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzf:I

    .line 654
    .line 655
    move-wide/from16 v5, v24

    .line 656
    .line 657
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzg:J

    .line 658
    .line 659
    move-object/from16 v1, v19

    .line 660
    .line 661
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzj:Lcom/google/android/gms/internal/ads/zzfcc;

    .line 662
    .line 663
    move/from16 v9, v18

    .line 664
    .line 665
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzh:Z

    .line 666
    .line 667
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzi:Ljava/lang/String;

    .line 668
    .line 669
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzk:Landroid/os/Bundle;

    .line 670
    .line 671
    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzl:Ljava/lang/String;

    .line 672
    .line 673
    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzm:Ljava/lang/String;

    .line 674
    .line 675
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzn:Ljava/lang/String;

    .line 676
    .line 677
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzo:Lorg/json/JSONObject;

    .line 678
    .line 679
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzp:Lorg/json/JSONObject;

    .line 680
    .line 681
    move-object/from16 v8, v29

    .line 682
    .line 683
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzq:Ljava/lang/String;

    .line 684
    .line 685
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfi;->zza:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 686
    .line 687
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    check-cast v2, Ljava/lang/Long;

    .line 692
    .line 693
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 694
    .line 695
    .line 696
    move-result-wide v2

    .line 697
    const-wide/16 v4, 0x0

    .line 698
    .line 699
    cmp-long v2, v2, v4

    .line 700
    .line 701
    if-lez v2, :cond_1b

    .line 702
    .line 703
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    check-cast v1, Ljava/lang/Long;

    .line 708
    .line 709
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 710
    .line 711
    .line 712
    move-result v27

    .line 713
    :cond_1b
    move/from16 v1, v27

    .line 714
    .line 715
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzr:I

    .line 716
    .line 717
    move-wide/from16 v5, v22

    .line 718
    .line 719
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzs:J

    .line 720
    .line 721
    move-wide/from16 v5, v20

    .line 722
    .line 723
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzt:J

    .line 724
    .line 725
    return-void
.end method

.method private static final zza(D)J
    .locals 2

    .line 1
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    .line 2
    .line 3
    cmpl-double v0, p0, v0

    .line 4
    .line 5
    if-gtz v0, :cond_1

    .line 6
    .line 7
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 8
    .line 9
    cmpg-double v0, p0, v0

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    double-to-long p0, p0

    .line 15
    return-wide p0

    .line 16
    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    .line 17
    .line 18
    return-wide p0
.end method
