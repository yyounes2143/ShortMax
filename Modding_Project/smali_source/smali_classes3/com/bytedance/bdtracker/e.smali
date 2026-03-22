.class public Lcom/bytedance/bdtracker/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/InitConfig;

.field public final synthetic b:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Lcom/bytedance/applog/InitConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/e;->b:Lcom/bytedance/bdtracker/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "appId"

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    const-string v1, "channel"

    .line 18
    .line 19
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getChannel()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "AppLog\u7248\u672c\u53f7"

    .line 34
    .line 35
    const-string v3, "6.15.4"

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    const-string v2, "AppLog\u7248\u672c\u5730\u533a"

    .line 41
    .line 42
    const-string v3, "\u6d77\u5916"

    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    const-string v2, "\u63a5\u53e3\u52a0\u5bc6\u5f00\u5173"

    .line 48
    .line 49
    :try_start_2
    iget-object v3, p0, Lcom/bytedance/bdtracker/e;->b:Lcom/bytedance/bdtracker/d;

    .line 50
    .line 51
    iget-boolean v3, v3, Lcom/bytedance/bdtracker/d;->E:Z

    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/bytedance/bdtracker/e;->b:Lcom/bytedance/bdtracker/d;

    .line 57
    .line 58
    iget-boolean v2, v2, Lcom/bytedance/bdtracker/d;->E:Z

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    iget-object v2, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getEncryptor()Lcom/bytedance/mpaas/IEncryptor;

    .line 65
    .line 66
    .line 67
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    const-string v3, "\u662f\u5426\u914d\u7f6e\u4e86\u81ea\u5b9a\u4e49\u52a0\u5bc6"

    .line 69
    .line 70
    if-nez v2, :cond_0

    .line 71
    .line 72
    const-string v4, "\u672a\u914d\u7f6e"

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const-string v4, "\u5ba2\u6237\u7aef\u5df2\u914d\u7f6e"

    .line 76
    .line 77
    :goto_0
    :try_start_3
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    instance-of v3, v2, Lcom/bytedance/bdtracker/z;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    .line 82
    const-string v4, "\u9ed8\u8ba4\u52a0\u5bc6\u7c7b\u578b"

    .line 83
    .line 84
    const-string v5, "\u81ea\u5b9a\u4e49\u52a0\u5bc6\u7c7b\u578b"

    .line 85
    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    const-string v3, "a"

    .line 89
    .line 90
    :try_start_4
    move-object v6, v2

    .line 91
    check-cast v6, Lcom/bytedance/bdtracker/z;

    .line 92
    .line 93
    invoke-virtual {v6}, Lcom/bytedance/bdtracker/z;->encryptorType()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    check-cast v2, Lcom/bytedance/bdtracker/z;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/z;->encryptorType()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    :cond_2
    :goto_1
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    .line 112
    .line 113
    :cond_3
    const-string v2, "\u65e5\u5fd7\u5f00\u5173"

    .line 114
    .line 115
    :try_start_5
    iget-object v3, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isLogEnable()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    .line 123
    .line 124
    const-string v2, "\u81ea\u5b9a\u4e49\u65e5\u5fd7\u6253\u5370"

    .line 125
    .line 126
    :try_start_6
    iget-object v3, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getLogger()Lcom/bytedance/applog/ILogger;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    const/4 v4, 0x0

    .line 133
    const/4 v5, 0x1

    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    move v3, v5

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    move v3, v4

    .line 139
    :goto_2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 140
    .line 141
    .line 142
    const-string v2, "AB\u5b9e\u9a8c\u5f00\u5173"

    .line 143
    .line 144
    :try_start_7
    iget-object v3, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 151
    .line 152
    .line 153
    const-string v2, "\u81ea\u52a8\u542f\u52a8\u56fe\u5f00\u5173"

    .line 154
    .line 155
    :try_start_8
    iget-object v3, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->autoStart()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 162
    .line 163
    .line 164
    const-string v2, "\u81ea\u52a8\u6fc0\u6d3b\u5f00\u5173"

    .line 165
    .line 166
    :try_start_9
    iget-object v3, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isAutoActive()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 173
    .line 174
    .line 175
    const-string v2, "H5\u6253\u901a\u5f00\u5173"

    .line 176
    .line 177
    :try_start_a
    iget-object v3, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isH5BridgeEnable()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 184
    .line 185
    .line 186
    const-string v2, "H5\u5168\u57cb\u70b9\u6ce8\u5165"

    .line 187
    .line 188
    :try_start_b
    iget-object v3, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isH5CollectEnable()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getH5BridgeAllowlist()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 203
    const-string v3, "\u3001"

    .line 204
    .line 205
    if-eqz v2, :cond_5

    .line 206
    .line 207
    :try_start_c
    iget-object v2, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getH5BridgeAllowlist()Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 217
    if-nez v2, :cond_5

    .line 218
    .line 219
    const-string v2, "H5\u57df\u540d\u767d\u540d\u5355"

    .line 220
    .line 221
    :try_start_d
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 222
    .line 223
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getH5BridgeAllowlist()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-static {v3, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 232
    .line 233
    .line 234
    :cond_5
    const-string v2, "\u4e0d\u8fc7\u6ee4H5\u57df\u540d\u5f00\u5173"

    .line 235
    .line 236
    :try_start_e
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 237
    .line 238
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isH5BridgeAllowAll()Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 243
    .line 244
    .line 245
    const-string v2, "\u5168\u57cb\u70b9\u5f00\u5173"

    .line 246
    .line 247
    :try_start_f
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 248
    .line 249
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isAutoTrackEnabled()Z

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    new-instance v2, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    .line 261
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 262
    .line 263
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getAutoTrackEventType()I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    const/4 v7, 0x4

    .line 268
    invoke-static {v6, v7}, Lcom/bytedance/applog/event/AutoTrackEventType;->a(II)Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-eqz v6, :cond_6

    .line 273
    .line 274
    const-string v6, "\u70b9\u51fb\u4e8b\u4ef6"

    .line 275
    .line 276
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    :cond_6
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 280
    .line 281
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getAutoTrackEventType()I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    const/4 v7, 0x2

    .line 286
    invoke-static {v6, v7}, Lcom/bytedance/applog/event/AutoTrackEventType;->a(II)Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-eqz v6, :cond_7

    .line 291
    .line 292
    const-string v6, "\u9875\u9762\u4e8b\u4ef6"

    .line 293
    .line 294
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    :cond_7
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 298
    .line 299
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getAutoTrackEventType()I

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    const/16 v7, 0x8

    .line 304
    .line 305
    invoke-static {v6, v7}, Lcom/bytedance/applog/event/AutoTrackEventType;->a(II)Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-eqz v6, :cond_8

    .line 310
    .line 311
    const-string v6, "\u9875\u9762\u79bb\u5f00\u4e8b\u4ef6"

    .line 312
    .line 313
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 317
    .line 318
    .line 319
    move-result v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 320
    if-nez v6, :cond_9

    .line 321
    .line 322
    const-string v6, "\u5168\u57cb\u70b9\u7c7b\u578b"

    .line 323
    .line 324
    :try_start_10
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 329
    .line 330
    .line 331
    :cond_9
    const-string v2, "\u89c6\u56fe\u66dd\u5149\u5f00\u5173"

    .line 332
    .line 333
    :try_start_11
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 334
    .line 335
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isExposureEnabled()Z

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 340
    .line 341
    .line 342
    const-string v2, "\u5185\u90e8\u76d1\u63a7\u5f00\u5173"

    .line 343
    .line 344
    :try_start_12
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 345
    .line 346
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isMonitorEnabled()Z

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 351
    .line 352
    .line 353
    const-string v2, "\u91c7\u96c6\u5c4f\u5e55\u65b9\u5411\u5f00\u5173"

    .line 354
    .line 355
    :try_start_13
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 356
    .line 357
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isScreenOrientationEnabled()Z

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 362
    .line 363
    .line 364
    const-string v2, "\u521d\u59cb\u5316UUID"

    .line 365
    .line 366
    :try_start_14
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 367
    .line 368
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getUserUniqueId()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 373
    .line 374
    .line 375
    const-string v2, "\u521d\u59cb\u5316UUID\u7c7b\u578b"

    .line 376
    .line 377
    :try_start_15
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 378
    .line 379
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getUserUniqueIdType()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 384
    .line 385
    .line 386
    const-string v2, "\u91c7\u96c6OAID\u5f00\u5173"

    .line 387
    .line 388
    :try_start_16
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 389
    .line 390
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isOaidEnabled()Z

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 395
    .line 396
    .line 397
    const-string v2, "\u8865\u507fOAID\u5f00\u5173"

    .line 398
    .line 399
    :try_start_17
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 400
    .line 401
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isReportOaidEnable()Z

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 406
    .line 407
    .line 408
    const-string v2, "\u91c7\u96c6ANDROID ID\u5f00\u5173"

    .line 409
    .line 410
    :try_start_18
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 411
    .line 412
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isAndroidIdEnabled()Z

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 417
    .line 418
    .line 419
    const-string v2, "\u91c7\u96c6\u8fd0\u8425\u5546\u4fe1\u606f\u5f00\u5173"

    .line 420
    .line 421
    :try_start_19
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 422
    .line 423
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isOperatorInfoEnabled()Z

    .line 424
    .line 425
    .line 426
    move-result v6

    .line 427
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 428
    .line 429
    .line 430
    const-string v2, "\u91c7\u96c6ICCID\u5f00\u5173"

    .line 431
    .line 432
    :try_start_1a
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 433
    .line 434
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isIccIdEnabled()Z

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 439
    .line 440
    .line 441
    const-string v2, "\u91c7\u96c6SerialNumber\u5f00\u5173"

    .line 442
    .line 443
    :try_start_1b
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 444
    .line 445
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isSerialNumberEnable()Z

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 450
    .line 451
    .line 452
    const-string v2, "\u81ea\u52a8\u91c7\u96c6FRAGMENT\u5f00\u5173"

    .line 453
    .line 454
    :try_start_1c
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 455
    .line 456
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isAutoTrackFragmentEnabled()Z

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 461
    .line 462
    .line 463
    const-string v2, "\u540e\u53f0\u9759\u9ed8\u5f00\u5173"

    .line 464
    .line 465
    :try_start_1d
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 466
    .line 467
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isSilenceInBackground()Z

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 472
    .line 473
    .line 474
    const-string v2, "\u9e3f\u8499\u8bbe\u5907\u91c7\u96c6\u5f00\u5173"

    .line 475
    .line 476
    :try_start_1e
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 477
    .line 478
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isHarmonyEnabled()Z

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 483
    .line 484
    .line 485
    const-string v2, "\u9690\u79c1\u6a21\u5f0f\u5f00\u5173"

    .line 486
    .line 487
    :try_start_1f
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->b:Lcom/bytedance/bdtracker/d;

    .line 488
    .line 489
    iget-boolean v6, v6, Lcom/bytedance/bdtracker/d;->x:Z

    .line 490
    .line 491
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 492
    .line 493
    .line 494
    const-string v2, "\u7981\u6b62\u91c7\u96c6\u8be6\u7ec6\u4fe1\u606f\u5f00\u5173"

    .line 495
    .line 496
    :try_start_20
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->b:Lcom/bytedance/bdtracker/d;

    .line 497
    .line 498
    invoke-virtual {v6}, Lcom/bytedance/bdtracker/d;->reportPhoneDetailInfo()Z

    .line 499
    .line 500
    .line 501
    move-result v6

    .line 502
    xor-int/2addr v6, v5

    .line 503
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 504
    .line 505
    .line 506
    const-string v2, "\u91c7\u96c6Crash"

    .line 507
    .line 508
    :try_start_21
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 509
    .line 510
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getTrackCrashType()I

    .line 511
    .line 512
    .line 513
    move-result v6

    .line 514
    invoke-static {v6, v5}, Lcom/bytedance/applog/exception/AppCrashType;->hasCrashType(II)Z

    .line 515
    .line 516
    .line 517
    move-result v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 518
    if-eqz v6, :cond_a

    .line 519
    .line 520
    const-string v6, "JAVA"

    .line 521
    .line 522
    goto :goto_3

    .line 523
    :cond_a
    const-string v6, "\u4e0d\u91c7\u96c6"

    .line 524
    .line 525
    :goto_3
    :try_start_22
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 526
    .line 527
    .line 528
    const-string v2, "ALINK\u76d1\u542c"

    .line 529
    .line 530
    :try_start_23
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->b:Lcom/bytedance/bdtracker/d;

    .line 531
    .line 532
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    .line 533
    .line 534
    if-eqz v6, :cond_b

    .line 535
    .line 536
    move v6, v5

    .line 537
    goto :goto_4

    .line 538
    :cond_b
    move v6, v4

    .line 539
    :goto_4
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 540
    .line 541
    .line 542
    const-string v2, "\u81ea\u5b9a\u4e49\u6fc0\u6d3b\u53c2\u6570"

    .line 543
    .line 544
    :try_start_24
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->b:Lcom/bytedance/bdtracker/d;

    .line 545
    .line 546
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->A:Lcom/bytedance/applog/IActiveCustomParamsCallback;

    .line 547
    .line 548
    if-eqz v6, :cond_c

    .line 549
    .line 550
    move v6, v5

    .line 551
    goto :goto_5

    .line 552
    :cond_c
    move v6, v4

    .line 553
    :goto_5
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 554
    .line 555
    .line 556
    const-string v2, "\u5ef6\u8fdf\u6df1\u5ea6\u94fe\u63a5\u5f00\u5173"

    .line 557
    .line 558
    :try_start_25
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 559
    .line 560
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isDeferredALinkEnabled()Z

    .line 561
    .line 562
    .line 563
    move-result v6

    .line 564
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 565
    .line 566
    .line 567
    const-string v2, "\u7f13\u5b58\u6587\u4ef6\u540d\u79f0"

    .line 568
    .line 569
    :try_start_26
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 570
    .line 571
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v6

    .line 575
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 576
    .line 577
    .line 578
    const-string v2, "\u6570\u636e\u5e93\u6587\u4ef6\u540d\u79f0"

    .line 579
    .line 580
    :try_start_27
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 581
    .line 582
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getDbName()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 587
    .line 588
    .line 589
    const-string v2, "\u76d1\u542c\u751f\u547d\u5468\u671f"

    .line 590
    .line 591
    :try_start_28
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 592
    .line 593
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isHandleLifeCycle()Z

    .line 594
    .line 595
    .line 596
    move-result v6

    .line 597
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 598
    .line 599
    .line 600
    const-string v2, "\u5c0f\u7248\u672c\u53f7"

    .line 601
    .line 602
    :try_start_29
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 603
    .line 604
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getVersionMinor()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v6

    .line 608
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 609
    .line 610
    .line 611
    const-string v2, "\u7248\u672c\u53f7\u7f16\u7801"

    .line 612
    .line 613
    :try_start_2a
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 614
    .line 615
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getVersionCode()I

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 624
    .line 625
    .line 626
    const-string v2, "\u7248\u672c\u53f7"

    .line 627
    .line 628
    :try_start_2b
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 629
    .line 630
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getVersion()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v6

    .line 634
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 635
    .line 636
    .line 637
    const-string v2, "\u5e94\u7528\u540d\u79f0"

    .line 638
    .line 639
    :try_start_2c
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 640
    .line 641
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getAppName()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v6

    .line 645
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 646
    .line 647
    .line 648
    const-string v2, "\u5708\u9009\u914d\u7f6e"

    .line 649
    .line 650
    :try_start_2d
    iget-object v6, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 651
    .line 652
    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    .line 653
    .line 654
    .line 655
    move-result-object v6

    .line 656
    if-eqz v6, :cond_d

    .line 657
    .line 658
    move v4, v5

    .line 659
    :cond_d
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 660
    .line 661
    .line 662
    const-string v2, "\u5f53\u524d\u8fdb\u7a0b"

    .line 663
    .line 664
    :try_start_2e
    iget-object v4, p0, Lcom/bytedance/bdtracker/e;->b:Lcom/bytedance/bdtracker/d;

    .line 665
    .line 666
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/p1;

    .line 667
    .line 668
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/p1;->h()Z

    .line 669
    .line 670
    .line 671
    move-result v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 672
    if-eqz v4, :cond_e

    .line 673
    .line 674
    const-string v4, "\u4e3b\u8fdb\u7a0b"

    .line 675
    .line 676
    goto :goto_6

    .line 677
    :cond_e
    const-string v4, "\u5b50\u8fdb\u7a0b"

    .line 678
    .line 679
    :goto_6
    :try_start_2f
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    .line 680
    .line 681
    .line 682
    const-string v2, "\u5730\u533a"

    .line 683
    .line 684
    :try_start_30
    iget-object v4, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 685
    .line 686
    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->getRegion()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 691
    .line 692
    .line 693
    const-string v2, "\u8bed\u8a00"

    .line 694
    .line 695
    :try_start_31
    iget-object v4, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 696
    .line 697
    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->getLanguage()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v4

    .line 701
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    .line 702
    .line 703
    .line 704
    const-string v2, "PLAY\u5f00\u5173"

    .line 705
    .line 706
    :try_start_32
    iget-object v4, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 707
    .line 708
    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isPlayEnable()Z

    .line 709
    .line 710
    .line 711
    move-result v4

    .line 712
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    .line 713
    .line 714
    .line 715
    const-string v2, "Gaid\u5f00\u5173"

    .line 716
    .line 717
    :try_start_33
    iget-object v4, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 718
    .line 719
    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isGaidEnabled()Z

    .line 720
    .line 721
    .line 722
    move-result v4

    .line 723
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 724
    .line 725
    .line 726
    iget-object v2, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 727
    .line 728
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->isGaidEnabled()Z

    .line 729
    .line 730
    .line 731
    move-result v2
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 732
    if-eqz v2, :cond_f

    .line 733
    .line 734
    const-string v2, "GAID \u83b7\u53d6\u8d85\u65f6\u65f6\u95f4"

    .line 735
    .line 736
    :try_start_34
    iget-object v4, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 737
    .line 738
    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->getGaidTimeOutMilliSeconds()I

    .line 739
    .line 740
    .line 741
    move-result v4

    .line 742
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    .line 743
    .line 744
    .line 745
    :cond_f
    const-string v2, "PageMeta\u63a5\u53e3\u6ce8\u89e3\u5f00\u5173"

    .line 746
    .line 747
    :try_start_35
    iget-object v4, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 748
    .line 749
    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isPageMetaAnnotationEnable()Z

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 754
    .line 755
    .line 756
    iget-object v2, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 757
    .line 758
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 759
    .line 760
    .line 761
    move-result-object v2
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 762
    const-string v4, "\u670d\u52a1\u57df\u540d\u914d\u7f6e"

    .line 763
    .line 764
    if-eqz v2, :cond_1b

    .line 765
    .line 766
    :try_start_36
    new-instance v2, Ljava/util/ArrayList;

    .line 767
    .line 768
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .line 770
    .line 771
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 772
    .line 773
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 774
    .line 775
    .line 776
    move-result-object v5

    .line 777
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSendUris()[Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    if-eqz v5, :cond_10

    .line 782
    .line 783
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 784
    .line 785
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 786
    .line 787
    .line 788
    move-result-object v5

    .line 789
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSendUris()[Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v5

    .line 793
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 798
    .line 799
    .line 800
    :cond_10
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 801
    .line 802
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 803
    .line 804
    .line 805
    move-result-object v5

    .line 806
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getRegisterUri()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v5

    .line 810
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 811
    .line 812
    .line 813
    move-result v5

    .line 814
    if-eqz v5, :cond_11

    .line 815
    .line 816
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 817
    .line 818
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 819
    .line 820
    .line 821
    move-result-object v5

    .line 822
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getRegisterUri()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v5

    .line 826
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    :cond_11
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 830
    .line 831
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 832
    .line 833
    .line 834
    move-result-object v5

    .line 835
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v5

    .line 839
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 840
    .line 841
    .line 842
    move-result v5

    .line 843
    if-eqz v5, :cond_12

    .line 844
    .line 845
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 846
    .line 847
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v5

    .line 855
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    :cond_12
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 859
    .line 860
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 861
    .line 862
    .line 863
    move-result-object v5

    .line 864
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAbUri()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v5

    .line 868
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 869
    .line 870
    .line 871
    move-result v5

    .line 872
    if-eqz v5, :cond_13

    .line 873
    .line 874
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 875
    .line 876
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 877
    .line 878
    .line 879
    move-result-object v5

    .line 880
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAbUri()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v5

    .line 884
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    :cond_13
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 888
    .line 889
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 890
    .line 891
    .line 892
    move-result-object v5

    .line 893
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getActiveUri()Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v5

    .line 897
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 898
    .line 899
    .line 900
    move-result v5

    .line 901
    if-eqz v5, :cond_14

    .line 902
    .line 903
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 904
    .line 905
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 906
    .line 907
    .line 908
    move-result-object v5

    .line 909
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getActiveUri()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v5

    .line 913
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    :cond_14
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 917
    .line 918
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 919
    .line 920
    .line 921
    move-result-object v5

    .line 922
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v5

    .line 926
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 927
    .line 928
    .line 929
    move-result v5

    .line 930
    if-eqz v5, :cond_15

    .line 931
    .line 932
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 933
    .line 934
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 935
    .line 936
    .line 937
    move-result-object v5

    .line 938
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v5

    .line 942
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    :cond_15
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 946
    .line 947
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getBusinessUri()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v5

    .line 955
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 956
    .line 957
    .line 958
    move-result v5

    .line 959
    if-eqz v5, :cond_16

    .line 960
    .line 961
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 962
    .line 963
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 964
    .line 965
    .line 966
    move-result-object v5

    .line 967
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getBusinessUri()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v5

    .line 971
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    :cond_16
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 975
    .line 976
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 977
    .line 978
    .line 979
    move-result-object v5

    .line 980
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v5

    .line 984
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 985
    .line 986
    .line 987
    move-result v5

    .line 988
    if-eqz v5, :cond_17

    .line 989
    .line 990
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 991
    .line 992
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 993
    .line 994
    .line 995
    move-result-object v5

    .line 996
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v5

    .line 1000
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    :cond_17
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 1004
    .line 1005
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v5

    .line 1009
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getReportOaidUri()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v5

    .line 1013
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v5

    .line 1017
    if-eqz v5, :cond_18

    .line 1018
    .line 1019
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 1020
    .line 1021
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v5

    .line 1025
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getReportOaidUri()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v5

    .line 1029
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    :cond_18
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 1033
    .line 1034
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v5

    .line 1038
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAlinkAttributionUri()Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v5

    .line 1042
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 1043
    .line 1044
    .line 1045
    move-result v5

    .line 1046
    if-eqz v5, :cond_19

    .line 1047
    .line 1048
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 1049
    .line 1050
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v5

    .line 1054
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAlinkAttributionUri()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v5

    .line 1058
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    .line 1060
    .line 1061
    :cond_19
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 1062
    .line 1063
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v5

    .line 1067
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAlinkQueryUri()Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v5

    .line 1071
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v5

    .line 1075
    if-eqz v5, :cond_1a

    .line 1076
    .line 1077
    iget-object v5, p0, Lcom/bytedance/bdtracker/e;->a:Lcom/bytedance/applog/InitConfig;

    .line 1078
    .line 1079
    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v5

    .line 1083
    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAlinkQueryUri()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v5

    .line 1087
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    .line 1089
    .line 1090
    :cond_1a
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v2

    .line 1094
    :goto_7
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1095
    .line 1096
    .line 1097
    goto :goto_8

    .line 1098
    :cond_1b
    const-string v2, "SaaS\u9ed8\u8ba4"

    .line 1099
    .line 1100
    goto :goto_7

    .line 1101
    :goto_8
    const-string v2, "config"

    .line 1102
    .line 1103
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    .line 1104
    .line 1105
    .line 1106
    :catchall_0
    return-object v0
.end method
