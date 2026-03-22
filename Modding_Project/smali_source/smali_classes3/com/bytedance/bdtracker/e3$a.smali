.class public final Lcom/bytedance/bdtracker/e3$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/e3;->a(Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/e3;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/bytedance/applog/oneid/IDBindCallback;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e3;Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/e3$a;->a:Lcom/bytedance/bdtracker/e3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/e3$a;->b:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/bdtracker/e3$a;->c:Lcom/bytedance/applog/oneid/IDBindCallback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/bdtracker/e3$a;->a:Lcom/bytedance/bdtracker/e3;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/bytedance/bdtracker/e3;->d:Lcom/bytedance/bdtracker/e0;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 11
    .line 12
    const-string v2, "engine.dm"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/bytedance/bdtracker/e3$a;->a:Lcom/bytedance/bdtracker/e3;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/bytedance/bdtracker/e3;->c:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/bytedance/bdtracker/e3$a;->b:Ljava/util/Map;

    .line 29
    .line 30
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "BindID identities: {}"

    .line 35
    .line 36
    const/16 v4, 0xf

    .line 37
    .line 38
    invoke-interface {v1, v4, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/bdtracker/e3$a;->b:Ljava/util/Map;

    .line 42
    .line 43
    new-instance v2, Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const-string v1, "identities"

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/bytedance/bdtracker/p3;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    iget-object v0, p0, Lcom/bytedance/bdtracker/e3$a;->a:Lcom/bytedance/bdtracker/e3;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/bytedance/bdtracker/e3;->d:Lcom/bytedance/bdtracker/e0;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "engine.uriConfig"

    .line 100
    .line 101
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig;->getIDBindUri()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const/4 v1, 0x0

    .line 109
    const/4 v2, 0x0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    iget-object v3, p0, Lcom/bytedance/bdtracker/e3$a;->a:Lcom/bytedance/bdtracker/e3;

    .line 113
    .line 114
    iget-object v3, v3, Lcom/bytedance/bdtracker/e3;->a:Lcom/bytedance/bdtracker/d;

    .line 115
    .line 116
    const-string v5, "appLogInstance"

    .line 117
    .line 118
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 122
    .line 123
    iget-object v5, v3, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 124
    .line 125
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 126
    .line 127
    filled-new-array {v0, v8}, [Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const-string v7, "Start to bind id to uri:{} with request:{}..."

    .line 132
    .line 133
    const/16 v13, 0xb

    .line 134
    .line 135
    invoke-interface {v5, v13, v7, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/bytedance/bdtracker/p3;->a()Ljava/util/HashMap;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    :try_start_0
    new-instance v14, Ljava/lang/String;

    .line 143
    .line 144
    iget-object v5, v3, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 145
    .line 146
    invoke-virtual {v5}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    iget-object v6, v3, Lcom/bytedance/bdtracker/p3;->c:Lcom/bytedance/bdtracker/p4;

    .line 151
    .line 152
    invoke-virtual {v6, v0}, Lcom/bytedance/bdtracker/p4;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    const/4 v11, 0x1

    .line 157
    const v12, 0xea60

    .line 158
    .line 159
    .line 160
    const/4 v6, 0x1

    .line 161
    const/4 v10, 0x0

    .line 162
    invoke-interface/range {v5 .. v12}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-direct {v14, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    .line 168
    .line 169
    :try_start_1
    iget-object v5, v3, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 170
    .line 171
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    .line 173
    const-string v6, "bindId success: {}"

    .line 174
    .line 175
    :try_start_2
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-interface {v5, v13, v6, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :catch_0
    move-exception v5

    .line 184
    goto :goto_1

    .line 185
    :catch_1
    move-exception v5

    .line 186
    move-object v14, v2

    .line 187
    :goto_1
    iget-object v6, v3, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 188
    .line 189
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 190
    .line 191
    new-array v7, v1, [Ljava/lang/Object;

    .line 192
    .line 193
    const-string v8, "bindId error"

    .line 194
    .line 195
    invoke-interface {v6, v13, v8, v5, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :goto_2
    invoke-virtual {v3, v14}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    goto :goto_3

    .line 203
    :cond_1
    move-object v3, v2

    .line 204
    :goto_3
    if-nez v3, :cond_3

    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v3, "BindID http request error, url="

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iget-object v2, p0, Lcom/bytedance/bdtracker/e3$a;->a:Lcom/bytedance/bdtracker/e3;

    .line 224
    .line 225
    iget-object v2, v2, Lcom/bytedance/bdtracker/e3;->c:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 226
    .line 227
    new-array v1, v1, [Ljava/lang/Object;

    .line 228
    .line 229
    invoke-interface {v2, v4, v0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lcom/bytedance/bdtracker/e3$a;->c:Lcom/bytedance/applog/oneid/IDBindCallback;

    .line 233
    .line 234
    if-eqz v1, :cond_2

    .line 235
    .line 236
    iget-object v2, p0, Lcom/bytedance/bdtracker/e3$a;->a:Lcom/bytedance/bdtracker/e3;

    .line 237
    .line 238
    iget-object v2, v2, Lcom/bytedance/bdtracker/e3;->b:Landroid/os/Handler;

    .line 239
    .line 240
    new-instance v3, Lcom/bytedance/bdtracker/f3;

    .line 241
    .line 242
    const/4 v4, -0x2

    .line 243
    invoke-direct {v3, v1, v4, v0}, Lcom/bytedance/bdtracker/f3;-><init>(Lcom/bytedance/applog/oneid/IDBindCallback;ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    .line 248
    .line 249
    :cond_2
    return-void

    .line 250
    :cond_3
    const-string v0, "status_code"

    .line 251
    .line 252
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    const/16 v5, 0xc8

    .line 257
    .line 258
    if-eq v0, v5, :cond_5

    .line 259
    .line 260
    const-string v2, "status_message"

    .line 261
    .line 262
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    iget-object v3, p0, Lcom/bytedance/bdtracker/e3$a;->a:Lcom/bytedance/bdtracker/e3;

    .line 267
    .line 268
    iget-object v3, v3, Lcom/bytedance/bdtracker/e3;->c:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 269
    .line 270
    new-array v1, v1, [Ljava/lang/Object;

    .line 271
    .line 272
    invoke-interface {v3, v4, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    iget-object v1, p0, Lcom/bytedance/bdtracker/e3$a;->c:Lcom/bytedance/applog/oneid/IDBindCallback;

    .line 276
    .line 277
    if-eqz v1, :cond_4

    .line 278
    .line 279
    iget-object v3, p0, Lcom/bytedance/bdtracker/e3$a;->a:Lcom/bytedance/bdtracker/e3;

    .line 280
    .line 281
    iget-object v3, v3, Lcom/bytedance/bdtracker/e3;->b:Landroid/os/Handler;

    .line 282
    .line 283
    new-instance v4, Lcom/bytedance/bdtracker/f3;

    .line 284
    .line 285
    invoke-direct {v4, v1, v0, v2}, Lcom/bytedance/bdtracker/f3;-><init>(Lcom/bytedance/applog/oneid/IDBindCallback;ILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    .line 290
    .line 291
    :cond_4
    return-void

    .line 292
    :cond_5
    const-string v0, "data"

    .line 293
    .line 294
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    new-instance v1, Lcom/bytedance/applog/oneid/IDBindResult;

    .line 299
    .line 300
    if-eqz v0, :cond_6

    .line 301
    .line 302
    const-string v3, "ssid"

    .line 303
    .line 304
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    goto :goto_4

    .line 309
    :cond_6
    move-object v3, v2

    .line 310
    :goto_4
    if-eqz v0, :cond_7

    .line 311
    .line 312
    const-string v2, "failed_id_list"

    .line 313
    .line 314
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    :cond_7
    invoke-direct {v1, v3, v2}, Lcom/bytedance/applog/oneid/IDBindResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/bytedance/bdtracker/e3$a;->a:Lcom/bytedance/bdtracker/e3;

    .line 322
    .line 323
    iget-object v0, v0, Lcom/bytedance/bdtracker/e3;->c:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 324
    .line 325
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    const-string v3, "BindID reportSuccess, result: {}"

    .line 330
    .line 331
    invoke-interface {v0, v4, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    iget-object v0, p0, Lcom/bytedance/bdtracker/e3$a;->c:Lcom/bytedance/applog/oneid/IDBindCallback;

    .line 335
    .line 336
    if-eqz v0, :cond_8

    .line 337
    .line 338
    iget-object v2, p0, Lcom/bytedance/bdtracker/e3$a;->a:Lcom/bytedance/bdtracker/e3;

    .line 339
    .line 340
    iget-object v2, v2, Lcom/bytedance/bdtracker/e3;->b:Landroid/os/Handler;

    .line 341
    .line 342
    new-instance v3, Lcom/bytedance/bdtracker/g3;

    .line 343
    .line 344
    invoke-direct {v3, v0, v1}, Lcom/bytedance/bdtracker/g3;-><init>(Lcom/bytedance/applog/oneid/IDBindCallback;Lcom/bytedance/applog/oneid/IDBindResult;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    .line 349
    .line 350
    :cond_8
    return-void
.end method
