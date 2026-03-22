.class public final Lcom/inmobi/media/Bb;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lcom/inmobi/media/Bb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/Bb;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/Bb;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/Bb;->a:Lcom/inmobi/media/Bb;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Lcom/inmobi/media/d2;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p1, Lcom/inmobi/media/d2;->a:I

    .line 9
    .line 10
    const-string v1, "message"

    .line 11
    .line 12
    const-string v2, "tag"

    .line 13
    .line 14
    const-string v3, "logLevel"

    .line 15
    .line 16
    const-string v4, "LOGGER CRASH"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v0, v5, :cond_3

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    if-eq v0, v6, :cond_3

    .line 23
    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :pswitch_0
    iget-object v0, p1, Lcom/inmobi/media/d2;->c:Ljava/util/Map;

    .line 30
    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    const-string v6, "data"

    .line 34
    .line 35
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ne v0, v5, :cond_5

    .line 40
    .line 41
    iget-object p1, p1, Lcom/inmobi/media/d2;->c:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.incident.IncidentEvent"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast p1, Lcom/inmobi/media/T5;

    .line 53
    .line 54
    sget-object v0, Lcom/inmobi/media/Cb;->a:Lcom/inmobi/media/a7;

    .line 55
    .line 56
    const-string v0, "incident"

    .line 57
    .line 58
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    instance-of v0, p1, Lcom/inmobi/media/m3;

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    instance-of v0, p1, Lcom/inmobi/media/mf;

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Lcom/inmobi/media/Cb;->e:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getReportToLogs()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    instance-of v0, p1, Lcom/inmobi/media/d1;

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    new-instance v1, Lcom/inmobi/media/a6;

    .line 91
    .line 92
    sget-object v0, Lcom/inmobi/media/Cb;->e:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getIncompleteLogThresholdTime()J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/a6;-><init>(J)V

    .line 107
    .line 108
    .line 109
    iget-object v2, p1, Lcom/inmobi/media/U1;->a:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/inmobi/media/U1;->a()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/inmobi/media/d1;

    .line 117
    .line 118
    iget v4, v0, Lcom/inmobi/media/d1;->g:I

    .line 119
    .line 120
    iget-wide v5, p1, Lcom/inmobi/media/U1;->b:J

    .line 121
    .line 122
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/media/a6;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_3

    .line 126
    .line 127
    :cond_1
    :goto_0
    invoke-static {}, Lcom/inmobi/media/D5;->a()Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_5

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    check-cast v5, Lcom/inmobi/media/Fc;

    .line 146
    .line 147
    sget-object v6, Lcom/inmobi/media/a7;->c:Lcom/inmobi/media/a7;

    .line 148
    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v8, "TYPE - "

    .line 152
    .line 153
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v8, p1, Lcom/inmobi/media/U1;->a:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v8, ", TIMESTAMP - "

    .line 162
    .line 163
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-wide v8, p1, Lcom/inmobi/media/U1;->b:J

    .line 167
    .line 168
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v8, ", PAYLOAD - "

    .line 172
    .line 173
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/inmobi/media/U1;->a()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object v8, v5, Lcom/inmobi/media/Fc;->a:Lcom/inmobi/media/Ab;

    .line 200
    .line 201
    invoke-virtual {v8, v6, v4, v7}, Lcom/inmobi/media/Ab;->a(Lcom/inmobi/media/a7;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    instance-of v6, p1, Lcom/inmobi/media/m3;

    .line 205
    .line 206
    if-eqz v6, :cond_2

    .line 207
    .line 208
    iget-object v5, v5, Lcom/inmobi/media/Fc;->a:Lcom/inmobi/media/Ab;

    .line 209
    .line 210
    invoke-virtual {v5}, Lcom/inmobi/media/Ab;->b()V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_3
    sget-object p1, Lcom/inmobi/media/Cb;->a:Lcom/inmobi/media/a7;

    .line 215
    .line 216
    invoke-static {}, Lcom/inmobi/media/D5;->a()Ljava/util/ArrayList;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-eqz v5, :cond_4

    .line 229
    .line 230
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    check-cast v5, Lcom/inmobi/media/Fc;

    .line 235
    .line 236
    sget-object v6, Lcom/inmobi/media/a7;->c:Lcom/inmobi/media/a7;

    .line 237
    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v8, "SYSTEM SHUTDOWN RECEIVED - "

    .line 241
    .line 242
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v8, v5, Lcom/inmobi/media/Fc;->a:Lcom/inmobi/media/Ab;

    .line 265
    .line 266
    invoke-virtual {v8, v6, v4, v7}, Lcom/inmobi/media/Ab;->a(Lcom/inmobi/media/a7;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v5, v5, Lcom/inmobi/media/Fc;->a:Lcom/inmobi/media/Ab;

    .line 270
    .line 271
    invoke-virtual {v5}, Lcom/inmobi/media/Ab;->b()V

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_4
    sget-object p1, Lcom/inmobi/media/Cb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 276
    .line 277
    const/4 v0, 0x0

    .line 278
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    .line 280
    .line 281
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    sget-object v2, Lcom/inmobi/media/Cb;->g:Lcom/inmobi/media/Bb;

    .line 286
    .line 287
    invoke-virtual {v1, v2}, Lcom/inmobi/media/H7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 288
    .line 289
    .line 290
    const/4 v1, 0x0

    .line 291
    sput-object v1, Lcom/inmobi/media/Cb;->b:Lcom/inmobi/media/f7;

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 294
    .line 295
    .line 296
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {p1, v2}, Lcom/inmobi/media/H7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 301
    .line 302
    .line 303
    sput-object v1, Lcom/inmobi/media/Cb;->b:Lcom/inmobi/media/f7;

    .line 304
    .line 305
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 306
    .line 307
    return-object p1

    .line 308
    nop

    .line 309
    :pswitch_data_0
    .packed-switch 0x96
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
