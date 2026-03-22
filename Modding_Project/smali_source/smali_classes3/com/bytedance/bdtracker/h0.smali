.class public Lcom/bytedance/bdtracker/h0;
.super Lcom/bytedance/bdtracker/c0;
.source ""


# static fields
.field public static final g:[J

.field public static final h:[J

.field public static final i:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/bytedance/bdtracker/h0;->g:[J

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/bytedance/bdtracker/h0;->h:[J

    .line 18
    .line 19
    const/16 v0, 0xe

    .line 20
    .line 21
    new-array v0, v0, [J

    .line 22
    .line 23
    fill-array-data v0, :array_2

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/bytedance/bdtracker/h0;->i:[J

    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0xea60
        0xea60
        0xea60
        0x1d4c0
        0x1d4c0
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    :array_1
    .array-data 8
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
        0xafc80
        0xafc80
    .end array-data

    :array_2
    .array-data 8
        0x2710
        0x2710
        0x4e20
        0x4e20
        0xea60
        0xea60
        0x1d4c0
        0x1d4c0
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
    .end array-data
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 4
    .line 5
    const-string v1, "register_time"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

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
.method public declared-synchronized a(Lorg/json/JSONObject;)Z
    .locals 18
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, v9, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v3, v2, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v4, "Start do register work"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-interface {v0, v5, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "user_unique_id"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const-string v0, "user_unique_id_type"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    iget-object v0, v9, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 34
    .line 35
    iget-object v10, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 38
    .line 39
    iget-object v3, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getPreInstallCallback()Lcom/bytedance/bdtracker/m5;

    .line 42
    .line 43
    .line 44
    iget-object v3, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getCommonHeader()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    sget-object v4, Lcom/bytedance/bdtracker/x4;->a:Lcom/bytedance/bdtracker/j4;

    .line 51
    .line 52
    new-array v6, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v4, v6}, Lcom/bytedance/bdtracker/j4;->b([Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/String;

    .line 59
    .line 60
    const-string v6, "req_id"

    .line 61
    .line 62
    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->j()Z

    .line 66
    .line 67
    .line 68
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    :try_start_1
    iget-object v0, v9, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 74
    .line 75
    sget-object v4, Lcom/bytedance/bdtracker/h5;->a:Lcom/bytedance/bdtracker/f5;

    .line 76
    .line 77
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v4, v0}, Lcom/bytedance/bdtracker/f5;->b([Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/bytedance/bdtracker/j5;

    .line 86
    .line 87
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/j5;->c:Z

    .line 88
    .line 89
    iget-object v4, v9, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 90
    .line 91
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 92
    .line 93
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    :try_start_2
    const-string v6, "Oaid maySupport: {}"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    .line 97
    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-interface {v4, v5, v6, v11}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const-string v4, "oaid_may_support"

    .line 109
    .line 110
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    goto :goto_0

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    goto/16 :goto_4

    .line 118
    .line 119
    :goto_0
    :try_start_4
    iget-object v4, v9, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 120
    .line 121
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 122
    .line 123
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 124
    .line 125
    new-array v6, v2, [Ljava/lang/Object;

    .line 126
    .line 127
    const-string v11, "Check oaid maySupport failed."

    .line 128
    .line 129
    invoke-interface {v4, v5, v11, v0, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    .line 133
    .line 134
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_2

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Ljava/util/Map$Entry;

    .line 153
    .line 154
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    if-eqz v4, :cond_1

    .line 159
    .line 160
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Ljava/lang/String;

    .line 165
    .line 166
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/bytedance/bdtracker/h0;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    if-eqz v11, :cond_7

    .line 179
    .line 180
    const-string v0, "device_id"

    .line 181
    .line 182
    const-string v1, ""

    .line 183
    .line 184
    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const-string v0, "install_id"

    .line 189
    .line 190
    const-string v1, ""

    .line 191
    .line 192
    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    const-string v0, "ssid"

    .line 197
    .line 198
    const-string v1, ""

    .line 199
    .line 200
    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    const-string v0, "bd_did"

    .line 205
    .line 206
    const-string v1, ""

    .line 207
    .line 208
    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    const-string v1, "cd"

    .line 213
    .line 214
    const-string v2, ""

    .line 215
    .line 216
    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v17

    .line 220
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_3

    .line 225
    .line 226
    iget-object v1, v9, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 227
    .line 228
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1, v7, v5}, Lcom/bytedance/bdtracker/a4;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_4

    .line 240
    .line 241
    move-object v6, v3

    .line 242
    goto :goto_3

    .line 243
    :cond_4
    move-object v6, v0

    .line 244
    :goto_3
    move-object v12, v7

    .line 245
    move-object v13, v3

    .line 246
    move-object v14, v4

    .line 247
    move-object v15, v5

    .line 248
    move-object/from16 v16, v6

    .line 249
    .line 250
    invoke-virtual/range {v10 .. v17}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_6

    .line 255
    .line 256
    iget-object v1, v9, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 257
    .line 258
    iget-object v2, v1, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 259
    .line 260
    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/c0;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, v9, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 264
    .line 265
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 266
    .line 267
    iget-object v1, v1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isReportOaidEnable()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_5

    .line 274
    .line 275
    iget-object v1, v9, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/e0;->a()V

    .line 278
    .line 279
    .line 280
    :cond_5
    new-instance v10, Lcom/bytedance/bdtracker/h0$a;

    .line 281
    .line 282
    move-object v1, v10

    .line 283
    move-object/from16 v2, p0

    .line 284
    .line 285
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/bdtracker/h0$a;-><init>(Lcom/bytedance/bdtracker/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    const-string v1, "device_register_end"

    .line 289
    .line 290
    invoke-static {v1, v10}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 291
    .line 292
    .line 293
    :cond_6
    monitor-exit p0

    .line 294
    return v0

    .line 295
    :cond_7
    :try_start_5
    iget-object v0, v9, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 296
    .line 297
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 298
    .line 299
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 300
    .line 301
    new-array v1, v2, [Ljava/lang/Object;

    .line 302
    .line 303
    const-string v3, "Register finished"

    .line 304
    .line 305
    invoke-interface {v0, v5, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 306
    .line 307
    .line 308
    monitor-exit p0

    .line 309
    return v2

    .line 310
    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 311
    throw v0
.end method

.method public b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "oaid"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v4, "Start to invokeRegister"

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    invoke-interface {v1, v5, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v1, v1, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    instance-of v3, v1, Lorg/json/JSONObject;

    .line 54
    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/bytedance/bdtracker/p3;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/r3;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/bytedance/applog/UriConfig;->getRegisterUri()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    sget-object v4, Lcom/bytedance/applog/Level;->L1:Lcom/bytedance/applog/Level;

    .line 82
    .line 83
    invoke-virtual {v1, p1, v3, v5, v4}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 90
    .line 91
    invoke-virtual {v1, p1, v0}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    return-object p1

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 101
    .line 102
    new-array v1, v2, [Ljava/lang/Object;

    .line 103
    .line 104
    const-string v2, "Request to register server failed."

    .line 105
    .line 106
    invoke-interface {v0, v5, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    return-object p1
.end method

.method public c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {p1}, Lcom/bytedance/bdtracker/p3;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig;->getReportOaidUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 4
    invoke-virtual {v1, v0, p1}, Lcom/bytedance/bdtracker/p3;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "Report oaid failed."

    invoke-interface {v0, v2, v3, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 1
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 2
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/h0;->a(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "register"

    .line 2
    .line 3
    return-object v0
.end method

.method public e()[J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->h()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v3, "Unknown register state"

    .line 27
    .line 28
    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object v0, Lcom/bytedance/bdtracker/h0;->h:[J

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lcom/bytedance/bdtracker/h0;->g:[J

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget-object v0, Lcom/bytedance/bdtracker/h0;->i:[J

    .line 38
    .line 39
    :goto_0
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
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/j0;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-wide/32 v0, 0x1499700

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide/32 v0, 0x2932e00

    .line 14
    .line 15
    .line 16
    :goto_0
    return-wide v0
.end method
