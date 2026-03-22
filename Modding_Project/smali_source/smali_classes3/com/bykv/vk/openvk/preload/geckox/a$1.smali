.class final Lcom/bykv/vk/openvk/preload/geckox/a$1;
.super Ljava/lang/Object;
.source "GeckoClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/bykv/vk/openvk/preload/geckox/e/a;

.field private synthetic c:Ljava/util/Map;

.field private synthetic d:Ljava/util/Map;

.field private synthetic e:Lcom/bykv/vk/openvk/preload/geckox/a;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/a;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/e/a;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->b:Lcom/bykv/vk/openvk/preload/geckox/e/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->c:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->d:Ljava/util/Map;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    const-string v0, "all channel update finished"

    .line 2
    .line 3
    const-string v1, "download_gecko_end"

    .line 4
    .line 5
    const-string v2, "download_duration"

    .line 6
    .line 7
    const-string v3, "start check update..."

    .line 8
    .line 9
    iget-object v4, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->a:Ljava/lang/String;

    .line 10
    .line 11
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "gecko-debug-tag"

    .line 16
    .line 17
    invoke-static {v4, v3}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/geckox/b;->b()Lcom/bykv/vk/openvk/preload/geckox/a/a/a;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 33
    .line 34
    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/geckox/b;->b()Lcom/bykv/vk/openvk/preload/geckox/a/a/a;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/geckox/a/a/a;->a()Lcom/bykv/vk/openvk/preload/geckox/a/a/b;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 47
    .line 48
    invoke-static {v5}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v5}, Lcom/bykv/vk/openvk/preload/geckox/b;->b()Lcom/bykv/vk/openvk/preload/geckox/a/a/a;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget-object v6, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 57
    .line 58
    invoke-static {v6}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/preload/geckox/b;->n()Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iget-object v7, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 67
    .line 68
    invoke-static {v7}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/geckox/b;->e()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v3, v5, v6, v7}, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->a(Lcom/bykv/vk/openvk/preload/geckox/a/a/a;Ljava/io/File;Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 v3, 0x0

    .line 81
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 82
    .line 83
    invoke-static {v5}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    new-instance v6, Lorg/json/JSONObject;

    .line 88
    .line 89
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/geckox/b;->a(Lorg/json/JSONObject;)V

    .line 93
    .line 94
    .line 95
    iget-object v7, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->b:Lcom/bykv/vk/openvk/preload/geckox/e/a;

    .line 96
    .line 97
    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 98
    .line 99
    invoke-static {v5}, Lcom/bykv/vk/openvk/preload/geckox/a;->b(Lcom/bykv/vk/openvk/preload/geckox/a;)Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 104
    .line 105
    invoke-static {v5}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 110
    .line 111
    invoke-static {v5}, Lcom/bykv/vk/openvk/preload/geckox/a;->c(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/falconx/a/a;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    iget-object v11, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->c:Ljava/util/Map;

    .line 116
    .line 117
    iget-object v12, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->d:Ljava/util/Map;

    .line 118
    .line 119
    iget-object v13, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->a:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static/range {v7 .. v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Ljava/io/File;Lcom/bykv/vk/openvk/preload/geckox/b;Lcom/bykv/vk/openvk/preload/falconx/a/a;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/b;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    iget-object v6, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->a:Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {v5, v6}, Lcom/bykv/vk/openvk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    const-string v6, "update finished"

    .line 132
    .line 133
    filled-new-array {v6, v5}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-static {v4, v5}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    .line 139
    .line 140
    if-eqz v3, :cond_1

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->a()V

    .line 143
    .line 144
    .line 145
    :cond_1
    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 146
    .line 147
    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/geckox/b;->f()Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-nez v3, :cond_2

    .line 156
    .line 157
    new-instance v3, Lorg/json/JSONObject;

    .line 158
    .line 159
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .line 161
    .line 162
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    iget-object v7, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 167
    .line 168
    invoke-static {v7}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/geckox/b;->s()J

    .line 173
    .line 174
    .line 175
    move-result-wide v7

    .line 176
    sub-long/2addr v5, v7

    .line 177
    invoke-virtual {v3, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    .line 180
    :catchall_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 181
    .line 182
    invoke-static {v2}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/preload/geckox/b;->q()Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-interface {v2, v1, v3}, Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;->upload(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 191
    .line 192
    .line 193
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v4, v0}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catchall_1
    move-exception v5

    .line 202
    goto :goto_2

    .line 203
    :catch_0
    move-exception v5

    .line 204
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    .line 205
    .line 206
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v7, "success"

    .line 210
    .line 211
    const/4 v8, 0x0

    .line 212
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 213
    .line 214
    .line 215
    const-string v7, "msg"

    .line 216
    .line 217
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    const-string v7, "code"

    .line 225
    .line 226
    const/4 v8, 0x2

    .line 227
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 228
    .line 229
    .line 230
    iget-object v7, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 231
    .line 232
    invoke-static {v7}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-virtual {v7, v6}, Lcom/bykv/vk/openvk/preload/geckox/b;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 237
    .line 238
    .line 239
    :catchall_2
    :try_start_3
    const-string v6, "Gecko update failed:"

    .line 240
    .line 241
    invoke-static {v4, v6, v5}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    .line 243
    .line 244
    if-eqz v3, :cond_3

    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->a()V

    .line 247
    .line 248
    .line 249
    :cond_3
    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 250
    .line 251
    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/geckox/b;->f()Lorg/json/JSONObject;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    if-nez v3, :cond_4

    .line 260
    .line 261
    new-instance v3, Lorg/json/JSONObject;

    .line 262
    .line 263
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 264
    .line 265
    .line 266
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 267
    .line 268
    .line 269
    move-result-wide v5

    .line 270
    iget-object v7, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 271
    .line 272
    invoke-static {v7}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/geckox/b;->s()J

    .line 277
    .line 278
    .line 279
    move-result-wide v7

    .line 280
    sub-long/2addr v5, v7

    .line 281
    invoke-virtual {v3, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 282
    .line 283
    .line 284
    :catchall_3
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 285
    .line 286
    invoke-static {v2}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/preload/geckox/b;->q()Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-interface {v2, v1, v3}, Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;->upload(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 295
    .line 296
    .line 297
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v4, v0}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 305
    .line 306
    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/a;->d(Lcom/bykv/vk/openvk/preload/geckox/a;)V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :goto_2
    if-eqz v3, :cond_5

    .line 311
    .line 312
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->a()V

    .line 313
    .line 314
    .line 315
    :cond_5
    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 316
    .line 317
    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/geckox/b;->f()Lorg/json/JSONObject;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    if-nez v3, :cond_6

    .line 326
    .line 327
    new-instance v3, Lorg/json/JSONObject;

    .line 328
    .line 329
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 330
    .line 331
    .line 332
    :cond_6
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 333
    .line 334
    .line 335
    move-result-wide v6

    .line 336
    iget-object v8, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 337
    .line 338
    invoke-static {v8}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/geckox/b;->s()J

    .line 343
    .line 344
    .line 345
    move-result-wide v8

    .line 346
    sub-long/2addr v6, v8

    .line 347
    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 348
    .line 349
    .line 350
    :catchall_4
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 351
    .line 352
    invoke-static {v2}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/a;)Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/preload/geckox/b;->q()Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-interface {v2, v1, v3}, Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;->upload(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 361
    .line 362
    .line 363
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-static {v4, v0}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    throw v5
.end method
