.class public Lcom/bytedance/bdtracker/a0;
.super Lcom/bytedance/bdtracker/c0;
.source ""


# instance fields
.field public g:J

.field public h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/bdtracker/c0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/bdtracker/a0;->g:J

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/bytedance/bdtracker/a0;->h:Lorg/json/JSONObject;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)Lorg/json/JSONObject;
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->h()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_5

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_5

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    iget-object v2, p0, Lcom/bytedance/bdtracker/a0;->h:Lorg/json/JSONObject;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-wide v6, p0, Lcom/bytedance/bdtracker/a0;->g:J

    .line 30
    .line 31
    sub-long v6, v4, v6

    .line 32
    .line 33
    iget-object v8, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 34
    .line 35
    iget-wide v8, v8, Lcom/bytedance/bdtracker/e0;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    cmp-long v6, v6, v8

    .line 38
    .line 39
    if-gez v6, :cond_0

    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-object v2

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_0
    :try_start_1
    iput-wide v4, p0, Lcom/bytedance/bdtracker/a0;->g:J

    .line 47
    .line 48
    new-instance v2, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v6, "header"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    const/4 v7, 0x2

    .line 56
    const/4 v8, 0x0

    .line 57
    :try_start_2
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v2, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    const-string v6, "magic_tag"

    .line 65
    .line 66
    const-string v9, "ss_app_log"

    .line 67
    .line 68
    invoke-virtual {v2, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    const-string v6, "_gen_time"

    .line 72
    .line 73
    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    iget-object v4, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 77
    .line 78
    invoke-static {v4, v2}, Lcom/bytedance/bdtracker/p4;->a(Lcom/bytedance/applog/IAppLogInstance;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_1
    move-exception v4

    .line 83
    :try_start_3
    iget-object v5, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 84
    .line 85
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 86
    .line 87
    new-array v6, v8, [Ljava/lang/Object;

    .line 88
    .line 89
    const-string v9, "Set header failed"

    .line 90
    .line 91
    invoke-interface {v5, v7, v9, v4, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-object v4, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 95
    .line 96
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/r3;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    iget-object v6, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 103
    .line 104
    invoke-virtual {v6}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v6}, Lcom/bytedance/applog/UriConfig;->getAbUri()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    sget-object v9, Lcom/bytedance/applog/Level;->L1:Lcom/bytedance/applog/Level;

    .line 113
    .line 114
    const/4 v10, 0x1

    .line 115
    invoke-virtual {v4, v5, v6, v10, v9}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iget-object v5, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 120
    .line 121
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 122
    .line 123
    sget-object v6, Lcom/bytedance/bdtracker/p4;->b:[Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v4, v6}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    iget-object v6, v5, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 130
    .line 131
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 132
    .line 133
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    const-string v11, "Start to get ab config to uri:{} with request:{}..."

    .line 138
    .line 139
    const/16 v12, 0xb

    .line 140
    .line 141
    invoke-interface {v6, v12, v11, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Lcom/bytedance/bdtracker/p3;->a()Ljava/util/HashMap;

    .line 145
    .line 146
    .line 147
    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :try_start_4
    invoke-virtual {v5, v2, v4, v6, p1}, Lcom/bytedance/bdtracker/p3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 152
    :try_start_5
    iget-object v2, v5, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 153
    .line 154
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 155
    .line 156
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const-string v6, "Get ab config with response:{}"

    .line 161
    .line 162
    invoke-interface {v2, v12, v6, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, p1}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_1

    .line 170
    .line 171
    const-string v2, "message"

    .line 172
    .line 173
    const-string v4, ""

    .line 174
    .line 175
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    const-string v4, "success"

    .line 180
    .line 181
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_1

    .line 186
    .line 187
    const-string v2, "data"

    .line 188
    .line 189
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    goto :goto_1

    .line 194
    :catchall_2
    move-exception p1

    .line 195
    iget-object v2, v5, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 196
    .line 197
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 198
    .line 199
    new-array v4, v8, [Ljava/lang/Object;

    .line 200
    .line 201
    const-string v5, "Post ab config failed"

    .line 202
    .line 203
    invoke-interface {v2, v12, v5, p1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    instance-of v2, p1, Lcom/bytedance/bdtracker/d3;

    .line 207
    .line 208
    if-nez v2, :cond_4

    .line 209
    .line 210
    :cond_1
    move-object p1, v3

    .line 211
    :goto_1
    if-eqz p1, :cond_5

    .line 212
    .line 213
    iput-object p1, p0, Lcom/bytedance/bdtracker/a0;->h:Lorg/json/JSONObject;

    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/p1;->a()Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    if-eqz v1, :cond_2

    .line 220
    .line 221
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    goto :goto_2

    .line 234
    :cond_2
    invoke-static {v1, p1}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    :goto_2
    xor-int/2addr v1, v10

    .line 239
    iget-object v2, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 240
    .line 241
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 242
    .line 243
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    const-string v4, "getAbConfig changed:{}"

    .line 252
    .line 253
    invoke-interface {v2, v7, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 260
    .line 261
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/d1;

    .line 262
    .line 263
    if-eqz v0, :cond_3

    .line 264
    .line 265
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/bdtracker/d1;->onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 266
    .line 267
    .line 268
    :cond_3
    monitor-exit p0

    .line 269
    return-object p1

    .line 270
    :cond_4
    :try_start_6
    check-cast p1, Lcom/bytedance/bdtracker/d3;

    .line 271
    .line 272
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 273
    :cond_5
    monitor-exit p0

    .line 274
    return-object v3

    .line 275
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 276
    throw p1
.end method

.method public c()Z
    .locals 6

    .line 1
    const v0, 0xea60

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/a0;->a(I)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    :cond_0
    return v1

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    iget-object v2, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 17
    .line 18
    new-array v3, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    const-string v5, "Do fetch config failed"

    .line 22
    .line 23
    invoke-interface {v2, v4, v5, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return v1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AbConfigure"

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
    .locals 5

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
    const-string v1, "abtest_fetch_interval"

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/32 v2, 0x927c0

    .line 16
    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-gez v4, :cond_0

    .line 21
    .line 22
    move-wide v0, v2

    .line 23
    :cond_0
    return-wide v0
.end method
