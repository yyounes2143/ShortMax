.class public Lcom/mbridge/msdk/reward/adapter/e;
.super Ljava/lang/Object;
.source "RewardVideoRequestParams.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/mbridge/msdk/videocommon/setting/c;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mbridge/msdk/videocommon/setting/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/e;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/net/wrapper/e;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p9

    .line 3
    .line 4
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->c()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v4, 0x3

    .line 52
    :goto_0
    iget-object v5, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/mbridge/msdk/videocommon/setting/c;->e()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    iget-object v6, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 61
    .line 62
    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/setting/c;->b()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v5, 0x0

    .line 68
    move v6, v5

    .line 69
    :goto_1
    iget-object v7, v0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 70
    .line 71
    const-string v8, "reward"

    .line 72
    .line 73
    invoke-static {v7, v8}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-boolean v8, v0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 78
    .line 79
    if-eqz v8, :cond_2

    .line 80
    .line 81
    const/16 v8, 0x11f

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/16 v8, 0x5e

    .line 85
    .line 86
    :goto_2
    new-instance v9, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 87
    .line 88
    invoke-direct {v9}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v10, "app_id"

    .line 92
    .line 93
    invoke-static {v9, v10, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 97
    .line 98
    const-string/jumbo v10, "unit_id"

    .line 99
    .line 100
    .line 101
    invoke-static {v9, v10, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_3

    .line 111
    .line 112
    sget-object v2, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v10, v0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v9, v2, v10}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    const-string v10, ""

    .line 124
    .line 125
    if-eqz v2, :cond_6

    .line 126
    .line 127
    if-nez p6, :cond_4

    .line 128
    .line 129
    move-object v2, v10

    .line 130
    goto :goto_3

    .line 131
    :cond_4
    move-object/from16 v2, p6

    .line 132
    .line 133
    :goto_3
    const-string/jumbo v11, "ttc_ids"

    .line 134
    .line 135
    .line 136
    invoke-static {v9, v11, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    if-nez p5, :cond_5

    .line 140
    .line 141
    move-object v2, v10

    .line 142
    goto :goto_4

    .line 143
    :cond_5
    move-object/from16 v2, p5

    .line 144
    .line 145
    :goto_4
    const-string v11, "install_ids"

    .line 146
    .line 147
    invoke-static {v9, v11, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    const-string/jumbo v2, "sign"

    .line 151
    .line 152
    .line 153
    invoke-static {v9, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const-string v3, "req_type"

    .line 161
    .line 162
    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const-string v3, "ad_num"

    .line 170
    .line 171
    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-boolean v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 175
    .line 176
    const/4 v3, 0x1

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    move v6, v3

    .line 180
    :cond_7
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    const-string/jumbo v4, "tnum"

    .line 185
    .line 186
    .line 187
    invoke-static {v9, v4, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v2, "only_impression"

    .line 191
    .line 192
    const-string v4, "1"

    .line 193
    .line 194
    invoke-static {v9, v2, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string v2, "ping_mode"

    .line 198
    .line 199
    invoke-static {v9, v2, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    sget-object v2, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->g:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v9, v2, v7}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    sget-object v2, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->h:Ljava/lang/String;

    .line 208
    .line 209
    if-nez p2, :cond_8

    .line 210
    .line 211
    move-object v5, v10

    .line 212
    goto :goto_5

    .line 213
    :cond_8
    move-object v5, p2

    .line 214
    :goto_5
    invoke-static {v9, v2, v5}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    const-string v3, "ad_source_id"

    .line 222
    .line 223
    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sget-object v2, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->i:Ljava/lang/String;

    .line 227
    .line 228
    if-nez p4, :cond_9

    .line 229
    .line 230
    move-object v3, v10

    .line 231
    goto :goto_6

    .line 232
    :cond_9
    move-object/from16 v3, p4

    .line 233
    .line 234
    :goto_6
    invoke-static {v9, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    const-string v3, "ad_type"

    .line 242
    .line 243
    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const-string v3, "offset"

    .line 251
    .line 252
    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-nez v2, :cond_a

    .line 260
    .line 261
    const-string/jumbo v2, "token"

    .line 262
    .line 263
    .line 264
    move-object/from16 v3, p7

    .line 265
    .line 266
    invoke-static {v9, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_a
    iget-boolean v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 270
    .line 271
    const-string v3, "0"

    .line 272
    .line 273
    if-eqz v2, :cond_d

    .line 274
    .line 275
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->I:I

    .line 276
    .line 277
    const-string v5, "ivrwd"

    .line 278
    .line 279
    if-eq v1, v2, :cond_c

    .line 280
    .line 281
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->H:I

    .line 282
    .line 283
    if-ne v1, v2, :cond_b

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_b
    invoke-static {v9, v5, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_c
    :goto_7
    invoke-static {v9, v5, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    :cond_d
    :goto_8
    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 294
    .line 295
    if-eqz v1, :cond_e

    .line 296
    .line 297
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->a()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_e

    .line 306
    .line 307
    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 308
    .line 309
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->a()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    const-string/jumbo v2, "u_stid"

    .line 314
    .line 315
    .line 316
    invoke-static {v9, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :cond_e
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/b;->c()Lcom/mbridge/msdk/videocommon/setting/a;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    if-eqz v1, :cond_f

    .line 328
    .line 329
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/a;->a()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-nez v2, :cond_f

    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/a;->a()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    const-string v2, "r_stid"

    .line 344
    .line 345
    invoke-static {v9, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :cond_f
    if-eqz p8, :cond_10

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_10
    move-object v4, v3

    .line 352
    :goto_9
    const-string v1, "rw_plus"

    .line 353
    .line 354
    invoke-static {v9, v1, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 358
    .line 359
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/u0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-nez v2, :cond_11

    .line 368
    .line 369
    const-string v2, "j"

    .line 370
    .line 371
    invoke-static {v9, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    :cond_11
    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->e:Ljava/lang/String;

    .line 375
    .line 376
    if-nez v1, :cond_12

    .line 377
    .line 378
    goto :goto_a

    .line 379
    :cond_12
    move-object v10, v1

    .line 380
    :goto_a
    const-string v1, "local_rid"

    .line 381
    .line 382
    invoke-static {v9, v1, v10}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    return-object v9
.end method
