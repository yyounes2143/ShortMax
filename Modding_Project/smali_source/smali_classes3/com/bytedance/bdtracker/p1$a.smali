.class public Lcom/bytedance/bdtracker/p1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/p1;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/p1;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/p1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 11

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "appId"

    .line 12
    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->b:Lcom/bytedance/bdtracker/d;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    const-string v3, "session_interval"

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const-string v6, "\u540e\u53f0\u4f1a\u8bdd\u65f6\u957f"

    .line 35
    .line 36
    cmp-long v7, v2, v4

    .line 37
    .line 38
    const-string v8, "ms"

    .line 39
    .line 40
    const-string v9, "--"

    .line 41
    .line 42
    if-lez v7, :cond_0

    .line 43
    .line 44
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move-object v2, v9

    .line 61
    :goto_0
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 67
    .line 68
    const-string v3, "batch_event_interval"

    .line 69
    .line 70
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    const-string v6, "\u4e8b\u4ef6\u4e0a\u62a5\u5468\u671f"

    .line 75
    .line 76
    cmp-long v7, v2, v4

    .line 77
    .line 78
    if-lez v7, :cond_1

    .line 79
    .line 80
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move-object v2, v9

    .line 97
    :goto_1
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 103
    .line 104
    const-string v3, "abtest_fetch_interval"

    .line 105
    .line 106
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 107
    .line 108
    .line 109
    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    const-string v6, "AB\u5b9e\u9a8c\u66f4\u65b0\u5468\u671f"

    .line 111
    .line 112
    cmp-long v7, v2, v4

    .line 113
    .line 114
    if-lez v7, :cond_2

    .line 115
    .line 116
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    goto :goto_2

    .line 132
    :cond_2
    move-object v2, v9

    .line 133
    :goto_2
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    .line 135
    .line 136
    const-string v2, "\u5168\u57cb\u70b9\u5f00\u5173"

    .line 137
    .line 138
    :try_start_4
    iget-object v3, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 139
    .line 140
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 141
    .line 142
    const-string v6, "bav_log_collect"

    .line 143
    .line 144
    const/4 v7, 0x0

    .line 145
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    .line 151
    .line 152
    const-string v2, "AB\u5b9e\u9a8c\u5f00\u5173"

    .line 153
    .line 154
    :try_start_5
    iget-object v3, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 155
    .line 156
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 157
    .line 158
    const-string v6, "bav_ab_config"

    .line 159
    .line 160
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    .line 166
    .line 167
    const-string v2, "\u5b9e\u65f6\u57cb\u70b9\u4e8b\u4ef6"

    .line 168
    .line 169
    :try_start_6
    iget-object v3, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 170
    .line 171
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 172
    .line 173
    const-string v6, "real_time_events"

    .line 174
    .line 175
    const-string v10, "[]"

    .line 176
    .line 177
    invoke-interface {v3, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 182
    .line 183
    .line 184
    const-string v2, "\u7981\u6b62\u91c7\u96c6\u624b\u673a\u8be6\u60c5"

    .line 185
    .line 186
    :try_start_7
    iget-object v3, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 187
    .line 188
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 189
    .line 190
    const-string v6, "forbid_report_phone_detail_info"

    .line 191
    .line 192
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    iget-object v2, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 200
    .line 201
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 202
    .line 203
    const-string v3, "fetch_interval"

    .line 204
    .line 205
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 206
    .line 207
    .line 208
    move-result-wide v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 209
    const-string v6, "\u670d\u52a1\u7aef\u914d\u7f6e\u66f4\u65b0\u5468\u671f"

    .line 210
    .line 211
    cmp-long v4, v2, v4

    .line 212
    .line 213
    if-lez v4, :cond_3

    .line 214
    .line 215
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    goto :goto_3

    .line 231
    :cond_3
    move-object v2, v9

    .line 232
    :goto_3
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 233
    .line 234
    .line 235
    const-string v2, "\u7981\u6b62\u5185\u90e8\u76d1\u63a7\u5f00\u5173"

    .line 236
    .line 237
    :try_start_9
    iget-object v3, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 238
    .line 239
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 240
    .line 241
    const-string v4, "applog_disable_monitor"

    .line 242
    .line 243
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 248
    .line 249
    .line 250
    iget-object v2, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 251
    .line 252
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 253
    .line 254
    const-string v3, "batch_event_size"

    .line 255
    .line 256
    const/4 v4, -0x1

    .line 257
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 258
    .line 259
    .line 260
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 261
    const-string v3, "\u4e8b\u4ef6\u7d2f\u8ba1\u4e0a\u62a5\u6570\u91cf"

    .line 262
    .line 263
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    if-ltz v2, :cond_4

    .line 269
    .line 270
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    goto :goto_4

    .line 275
    :cond_4
    move-object v2, v9

    .line 276
    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v2, "\u6761"

    .line 280
    .line 281
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 289
    .line 290
    .line 291
    const-string v2, "\u7981\u6b62\u91c7\u96c6\u7684\u654f\u611f\u5b57\u6bb5"

    .line 292
    .line 293
    :try_start_b
    iget-object v3, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 294
    .line 295
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 296
    .line 297
    const-string v4, "sensitive_fields"

    .line 298
    .line 299
    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 304
    .line 305
    .line 306
    const-string v2, "\u670d\u52a1\u7aef\u9ed1\u540d\u5355\u4e8b\u4ef6"

    .line 307
    .line 308
    :try_start_c
    iget-object v3, p0, Lcom/bytedance/bdtracker/p1$a;->a:Lcom/bytedance/bdtracker/p1;

    .line 309
    .line 310
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->k:Ljava/util/Set;

    .line 311
    .line 312
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    .line 314
    .line 315
    const-string v2, "config"

    .line 316
    .line 317
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 318
    .line 319
    .line 320
    :catchall_0
    return-object v0
.end method
