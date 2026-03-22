.class public Lcom/bytedance/bdtracker/l3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[I

.field public static final d:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 37

    .line 1
    const-string v35, "cpu_abi"

    .line 2
    .line 3
    const-string v36, "google_aid"

    .line 4
    .line 5
    const-string v0, "aid"

    .line 6
    .line 7
    const-string v1, "region"

    .line 8
    .line 9
    const-string v2, "os"

    .line 10
    .line 11
    const-string v3, "package"

    .line 12
    .line 13
    const-string v4, "app_version"

    .line 14
    .line 15
    const-string v5, "sdk_version"

    .line 16
    .line 17
    const-string v6, "os_version"

    .line 18
    .line 19
    const-string v7, "device_model"

    .line 20
    .line 21
    const-string v8, "resolution"

    .line 22
    .line 23
    const-string v9, "language"

    .line 24
    .line 25
    const-string v10, "timezone"

    .line 26
    .line 27
    const-string v11, "access"

    .line 28
    .line 29
    const-string v12, "display_name"

    .line 30
    .line 31
    const-string v13, "channel"

    .line 32
    .line 33
    const-string v14, "carrier"

    .line 34
    .line 35
    const-string v15, "app_language"

    .line 36
    .line 37
    const-string v16, "app_region"

    .line 38
    .line 39
    const-string v17, "tz_name"

    .line 40
    .line 41
    const-string v18, "tz_offset"

    .line 42
    .line 43
    const-string v19, "install_id"

    .line 44
    .line 45
    const-string v20, "openudid"

    .line 46
    .line 47
    const-string v21, "mcc_mnc"

    .line 48
    .line 49
    const-string v22, "rom"

    .line 50
    .line 51
    const-string v23, "manifest_version_code"

    .line 52
    .line 53
    const-string v24, "device_manufacturer"

    .line 54
    .line 55
    const-string v25, "clientudid"

    .line 56
    .line 57
    const-string v26, "sig_hash"

    .line 58
    .line 59
    const-string v27, "display_density"

    .line 60
    .line 61
    const-string v28, "os_api"

    .line 62
    .line 63
    const-string v29, "update_version_code"

    .line 64
    .line 65
    const-string v30, "density_dpi"

    .line 66
    .line 67
    const-string v31, "version_code"

    .line 68
    .line 69
    const-string v32, "sim_serial_number"

    .line 70
    .line 71
    const-string v33, "release_build"

    .line 72
    .line 73
    const-string v34, "udid"

    .line 74
    .line 75
    filled-new-array/range {v0 .. v36}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lcom/bytedance/bdtracker/l3;->a:[Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "setOnce"

    .line 82
    .line 83
    const-string v1, "synchronize"

    .line 84
    .line 85
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/bytedance/bdtracker/l3;->b:[Ljava/lang/String;

    .line 90
    .line 91
    const/4 v0, -0x1

    .line 92
    filled-new-array {v0, v0}, [I

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/bytedance/bdtracker/l3;->c:[I

    .line 97
    .line 98
    const/4 v0, 0x2

    .line 99
    new-array v0, v0, [J

    .line 100
    .line 101
    fill-array-data v0, :array_0

    .line 102
    .line 103
    .line 104
    sput-object v0, Lcom/bytedance/bdtracker/l3;->d:[J

    .line 105
    .line 106
    return-void

    .line 107
    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public static a(Lcom/bytedance/bdtracker/e0;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    const-string v6, "ssid"

    .line 12
    .line 13
    const-string v7, "user_id"

    .line 14
    .line 15
    const-string v8, "device_id"

    .line 16
    .line 17
    const-string v0, "tz_offset"

    .line 18
    .line 19
    const-string v9, "sdk_version"

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x1

    .line 23
    if-nez p5, :cond_3

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v13

    .line 29
    sget-object v15, Lcom/bytedance/bdtracker/l3;->d:[J

    .line 30
    .line 31
    aget-wide v16, v15, v2

    .line 32
    .line 33
    sub-long v13, v13, v16

    .line 34
    .line 35
    const-wide/32 v15, 0xea60

    .line 36
    .line 37
    .line 38
    cmp-long v13, v13, v15

    .line 39
    .line 40
    if-lez v13, :cond_0

    .line 41
    .line 42
    move v13, v12

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v13, v11

    .line 45
    :goto_0
    if-eqz v3, :cond_1

    .line 46
    .line 47
    sget-object v14, Lcom/bytedance/bdtracker/l3;->c:[I

    .line 48
    .line 49
    aget v14, v14, v2

    .line 50
    .line 51
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v15

    .line 55
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v15

    .line 59
    if-eq v14, v15, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v12, v11

    .line 63
    :goto_1
    iget-object v14, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 64
    .line 65
    iget-object v14, v14, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 66
    .line 67
    new-instance v15, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v10, "exec "

    .line 73
    .line 74
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v10, ", "

    .line 81
    .line 82
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    new-array v15, v11, [Ljava/lang/Object;

    .line 99
    .line 100
    const/16 v11, 0x9

    .line 101
    .line 102
    invoke-interface {v14, v11, v10, v15}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    if-nez v13, :cond_3

    .line 106
    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    const/4 v0, 0x4

    .line 110
    invoke-interface {v4, v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onFail(I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return-void

    .line 114
    :cond_3
    if-eqz v12, :cond_9

    .line 115
    .line 116
    iget-object v10, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 117
    .line 118
    iget-object v10, v10, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 119
    .line 120
    iget-object v11, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 121
    .line 122
    invoke-virtual {v11}, Lcom/bytedance/bdtracker/d;->getDid()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    iget-object v12, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 127
    .line 128
    iget-object v12, v12, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    invoke-virtual {v13}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    if-nez v11, :cond_8

    .line 143
    .line 144
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-nez v11, :cond_8

    .line 149
    .line 150
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-nez v11, :cond_8

    .line 155
    .line 156
    sget-object v11, Lcom/bytedance/bdtracker/l3;->b:[Ljava/lang/String;

    .line 157
    .line 158
    aget-object v11, v11, v2

    .line 159
    .line 160
    filled-new-array {v12, v11}, [Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    const-string v14, "/service/api/v3/userprofile/%s/%s"

    .line 165
    .line 166
    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    new-instance v14, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v20

    .line 185
    iget-object v11, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 186
    .line 187
    invoke-virtual {v11}, Lcom/bytedance/bdtracker/d;->getHeader()Lorg/json/JSONObject;

    .line 188
    .line 189
    .line 190
    move-result-object v13

    .line 191
    new-instance v14, Lorg/json/JSONObject;

    .line 192
    .line 193
    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v15, "header"

    .line 197
    .line 198
    const-string v5, "JSON handle failed"

    .line 199
    .line 200
    if-eqz v13, :cond_4

    .line 201
    .line 202
    move-object/from16 v24, v10

    .line 203
    .line 204
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    .line 206
    move-object/from16 v21, v12

    .line 207
    .line 208
    :try_start_1
    sget-object v12, Lcom/bytedance/bdtracker/l3;->a:[Ljava/lang/String;

    .line 209
    .line 210
    invoke-direct {v10, v13, v12}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    invoke-static {v12}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    invoke-virtual {v10, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-static {v9}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    invoke-virtual {v10, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :catch_0
    move-exception v0

    .line 237
    goto :goto_2

    .line 238
    :catch_1
    move-exception v0

    .line 239
    move-object/from16 v21, v12

    .line 240
    .line 241
    :goto_2
    :try_start_2
    iget-object v9, v11, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 242
    .line 243
    const/4 v10, 0x0

    .line 244
    new-array v12, v10, [Ljava/lang/Object;

    .line 245
    .line 246
    const/16 v10, 0x9

    .line 247
    .line 248
    invoke-interface {v9, v10, v5, v0, v12}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :catch_2
    move-exception v0

    .line 253
    goto :goto_5

    .line 254
    :cond_4
    move-object/from16 v24, v10

    .line 255
    .line 256
    move-object/from16 v21, v12

    .line 257
    .line 258
    :goto_3
    new-instance v10, Lorg/json/JSONObject;

    .line 259
    .line 260
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 261
    .line 262
    .line 263
    :goto_4
    invoke-virtual {v14, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    .line 265
    .line 266
    const-string v0, "profile"

    .line 267
    .line 268
    invoke-virtual {v14, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    .line 270
    .line 271
    const-string v0, "user"

    .line 272
    .line 273
    :try_start_3
    new-instance v9, Lorg/json/JSONObject;

    .line 274
    .line 275
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 276
    .line 277
    .line 278
    if-eqz v13, :cond_5

    .line 279
    .line 280
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    invoke-virtual {v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    .line 300
    .line 301
    :cond_5
    invoke-virtual {v14, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :goto_5
    iget-object v6, v11, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 306
    .line 307
    const/4 v7, 0x0

    .line 308
    new-array v8, v7, [Ljava/lang/Object;

    .line 309
    .line 310
    const/16 v7, 0x9

    .line 311
    .line 312
    invoke-interface {v6, v7, v5, v0, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :goto_6
    new-instance v0, Lcom/bytedance/bdtracker/l3$a;

    .line 316
    .line 317
    invoke-direct {v0, v2, v3, v4}, Lcom/bytedance/bdtracker/l3$a;-><init>(ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V

    .line 318
    .line 319
    .line 320
    new-instance v2, Lcom/bytedance/bdtracker/o3;

    .line 321
    .line 322
    iget-object v3, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 323
    .line 324
    move-object/from16 v18, v2

    .line 325
    .line 326
    move-object/from16 v19, v3

    .line 327
    .line 328
    move-object/from16 v22, v14

    .line 329
    .line 330
    move-object/from16 v23, v0

    .line 331
    .line 332
    invoke-direct/range {v18 .. v24}, Lcom/bytedance/bdtracker/o3;-><init>(Lcom/bytedance/bdtracker/d;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/content/Context;)V

    .line 333
    .line 334
    .line 335
    move-object/from16 v3, p4

    .line 336
    .line 337
    if-eqz v3, :cond_6

    .line 338
    .line 339
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    if-ne v0, v3, :cond_7

    .line 352
    .line 353
    iget-object v0, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 354
    .line 355
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 356
    .line 357
    const/4 v1, 0x0

    .line 358
    new-array v1, v1, [Ljava/lang/Object;

    .line 359
    .line 360
    const-string v3, "Not allowed on main looper"

    .line 361
    .line 362
    const/16 v4, 0x9

    .line 363
    .line 364
    invoke-interface {v0, v4, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_7
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/o3;->run()V

    .line 368
    .line 369
    .line 370
    :goto_7
    return-void

    .line 371
    :cond_8
    if-eqz v4, :cond_a

    .line 372
    .line 373
    const/4 v0, 0x3

    .line 374
    invoke-interface {v4, v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onFail(I)V

    .line 375
    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_9
    if-eqz v4, :cond_a

    .line 379
    .line 380
    invoke-interface/range {p3 .. p3}, Lcom/bytedance/applog/profile/UserProfileCallback;->onSuccess()V

    .line 381
    .line 382
    .line 383
    :cond_a
    :goto_8
    return-void
.end method
