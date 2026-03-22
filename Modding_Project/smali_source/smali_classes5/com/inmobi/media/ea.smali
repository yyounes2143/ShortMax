.class public abstract Lcom/inmobi/media/ea;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/commons/core/configs/CrashConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "crashReporting"

    .line 7
    .line 8
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 13
    .line 14
    sput-object v0, Lcom/inmobi/media/ea;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static a(Lorg/json/JSONObject;ZZJ)V
    .locals 10

    .line 1
    const-string v0, "payload"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/inmobi/media/ea;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getReportOOMInfo()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    if-eqz p2, :cond_2

    .line 23
    .line 24
    sget-object p1, Lcom/inmobi/media/p3;->d:Lcom/inmobi/media/p3;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    sget-object p1, Lcom/inmobi/media/n3;->d:Lcom/inmobi/media/n3;

    .line 28
    .line 29
    :goto_0
    const-string v0, "type"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/inmobi/media/V5;->a()Lcom/inmobi/media/C6;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "key"

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-object v5, p1, Lcom/inmobi/media/q3;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v6, v1, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 51
    .line 52
    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    iget-object v6, p1, Lcom/inmobi/media/q3;->c:Ljava/lang/String;

    .line 57
    .line 58
    add-int/2addr v5, v3

    .line 59
    invoke-virtual {v1, v6, v5, v3}, Lcom/inmobi/media/C6;->a(Ljava/lang/String;IZ)V

    .line 60
    .line 61
    .line 62
    :goto_1
    const-string v1, "crashType"

    .line 63
    .line 64
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/inmobi/media/V5;->a()Lcom/inmobi/media/C6;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-wide/16 v5, 0x0

    .line 72
    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget-object v7, p1, Lcom/inmobi/media/q3;->a:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v8, v1, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 82
    .line 83
    invoke-interface {v8, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v7

    .line 87
    iget-object p1, p1, Lcom/inmobi/media/q3;->b:Ljava/lang/String;

    .line 88
    .line 89
    cmp-long v9, v7, v5

    .line 90
    .line 91
    if-nez v9, :cond_5

    .line 92
    .line 93
    invoke-virtual {v1, p1, p3, p4, v3}, Lcom/inmobi/media/C6;->a(Ljava/lang/String;JZ)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    sub-long/2addr p3, v7

    .line 98
    invoke-virtual {v1, p1, p3, p4, v3}, Lcom/inmobi/media/C6;->a(Ljava/lang/String;JZ)V

    .line 99
    .line 100
    .line 101
    :goto_2
    if-nez p2, :cond_6

    .line 102
    .line 103
    return-void

    .line 104
    :cond_6
    sget-object p1, Lcom/inmobi/media/p3;->d:Lcom/inmobi/media/p3;

    .line 105
    .line 106
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/inmobi/media/V5;->a()Lcom/inmobi/media/C6;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    if-eqz p2, :cond_7

    .line 114
    .line 115
    iget-object p3, p1, Lcom/inmobi/media/q3;->c:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p2, p2, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 121
    .line 122
    invoke-interface {p2, p3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    goto :goto_3

    .line 127
    :cond_7
    move p2, v4

    .line 128
    :goto_3
    sget-object p3, Lcom/inmobi/media/n3;->d:Lcom/inmobi/media/n3;

    .line 129
    .line 130
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/inmobi/media/V5;->a()Lcom/inmobi/media/C6;

    .line 134
    .line 135
    .line 136
    move-result-object p4

    .line 137
    if-eqz p4, :cond_8

    .line 138
    .line 139
    iget-object v0, p3, Lcom/inmobi/media/q3;->c:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p4, p4, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 145
    .line 146
    invoke-interface {p4, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 147
    .line 148
    .line 149
    move-result p4

    .line 150
    goto :goto_4

    .line 151
    :cond_8
    move p4, v4

    .line 152
    :goto_4
    add-int v0, p2, p4

    .line 153
    .line 154
    if-lez v0, :cond_9

    .line 155
    .line 156
    int-to-float v1, p2

    .line 157
    const/high16 v2, 0x42c80000    # 100.0f

    .line 158
    .line 159
    mul-float/2addr v1, v2

    .line 160
    int-to-float v0, v0

    .line 161
    div-float/2addr v1, v0

    .line 162
    goto :goto_5

    .line 163
    :cond_9
    const/4 v1, 0x0

    .line 164
    :goto_5
    const-string v0, "inmobiOOMCount"

    .line 165
    .line 166
    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    const-string p2, "appOOMCount"

    .line 170
    .line 171
    invoke-virtual {p0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    invoke-static {p3}, Lcom/inmobi/media/V5;->a(Lcom/inmobi/media/q3;)J

    .line 175
    .line 176
    .line 177
    move-result-wide p2

    .line 178
    const-string p4, "appOomCrashInterval"

    .line 179
    .line 180
    invoke-virtual {p0, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    invoke-static {p1}, Lcom/inmobi/media/V5;->a(Lcom/inmobi/media/q3;)J

    .line 184
    .line 185
    .line 186
    move-result-wide p1

    .line 187
    const-string p3, "inmOOMCrashInterval"

    .line 188
    .line 189
    invoke-virtual {p0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const-string p2, "oomRatioInMobiToApp"

    .line 197
    .line 198
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    .line 200
    .line 201
    sget-object p1, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/inmobi/media/L3;->H()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-nez p1, :cond_a

    .line 208
    .line 209
    const/4 p1, 0x0

    .line 210
    goto :goto_7

    .line 211
    :cond_a
    invoke-static {}, Landroid/os/Debug;->getRuntimeStats()Ljava/util/Map;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    move-wide p2, v5

    .line 224
    move-wide v0, p2

    .line 225
    :cond_b
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result p4

    .line 229
    if-eqz p4, :cond_f

    .line 230
    .line 231
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p4

    .line 235
    check-cast p4, Ljava/util/Map$Entry;

    .line 236
    .line 237
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    check-cast v2, Ljava/lang/String;

    .line 242
    .line 243
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p4

    .line 247
    check-cast p4, Ljava/lang/String;

    .line 248
    .line 249
    const-string v7, "art.gc.blocking-gc-count"

    .line 250
    .line 251
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-eqz v7, :cond_d

    .line 256
    .line 257
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    invoke-static {p4}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Long;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    if-eqz p2, :cond_c

    .line 265
    .line 266
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 267
    .line 268
    .line 269
    move-result-wide p2

    .line 270
    goto :goto_6

    .line 271
    :cond_c
    move-wide p2, v5

    .line 272
    goto :goto_6

    .line 273
    :cond_d
    const-string v7, "art.gc.gc-count"

    .line 274
    .line 275
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_b

    .line 280
    .line 281
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-static {p4}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Long;

    .line 285
    .line 286
    .line 287
    move-result-object p4

    .line 288
    if-eqz p4, :cond_e

    .line 289
    .line 290
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 291
    .line 292
    .line 293
    move-result-wide v0

    .line 294
    goto :goto_6

    .line 295
    :cond_e
    move-wide v0, v5

    .line 296
    goto :goto_6

    .line 297
    :cond_f
    const/4 p1, 0x2

    .line 298
    new-array p1, p1, [J

    .line 299
    .line 300
    aput-wide p2, p1, v4

    .line 301
    .line 302
    aput-wide v0, p1, v3

    .line 303
    .line 304
    :goto_7
    if-eqz p1, :cond_10

    .line 305
    .line 306
    aget-wide p2, p1, v4

    .line 307
    .line 308
    const-string p4, "blockingGcCount"

    .line 309
    .line 310
    invoke-virtual {p0, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 311
    .line 312
    .line 313
    aget-wide p2, p1, v3

    .line 314
    .line 315
    const-string p1, "gcCount"

    .line 316
    .line 317
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 318
    .line 319
    .line 320
    :cond_10
    return-void
.end method
