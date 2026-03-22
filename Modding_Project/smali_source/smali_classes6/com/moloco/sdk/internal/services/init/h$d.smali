.class public final Lcom/moloco/sdk/internal/services/init/h$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/services/init/h;->c(Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lcom/moloco/sdk/Init$SDKInitResponse;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.services.init.InitCacheImpl$get$2"
    f = "InitCache.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/acm/recorder/a;

.field public final synthetic j:Lcom/moloco/sdk/internal/services/init/a;

.field public final synthetic k:Lcom/moloco/sdk/internal/services/init/h;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/internal/services/init/h;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lcom/moloco/sdk/internal/services/init/a;",
            "Lcom/moloco/sdk/internal/services/init/h;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/init/h$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/init/h$d;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/init/h$d;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/init/h$d;->k:Lcom/moloco/sdk/internal/services/init/h;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/init/h$d;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/services/init/h$d;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/services/init/h$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/moloco/sdk/internal/services/init/h$d;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/init/h$d;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/init/h$d;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/init/h$d;->k:Lcom/moloco/sdk/internal/services/init/h;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/moloco/sdk/internal/services/init/h$d;-><init>(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/internal/services/init/h;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/init/h$d;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "cache_miss"

    .line 4
    .line 5
    const-string/jumbo v2, "success"

    .line 6
    .line 7
    .line 8
    const-string v3, "Reason"

    .line 9
    .line 10
    const-string v4, "failure"

    .line 11
    .line 12
    const-string v5, "Result"

    .line 13
    .line 14
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget v6, v1, Lcom/moloco/sdk/internal/services/init/h$d;->h:I

    .line 18
    .line 19
    if-nez v6, :cond_2

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v6, v1, Lcom/moloco/sdk/internal/services/init/h$d;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 25
    .line 26
    const-string v7, "SDKInitCacheRead"

    .line 27
    .line 28
    invoke-interface {v6, v7}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const/4 v8, 0x0

    .line 33
    :try_start_0
    sget-object v16, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 34
    .line 35
    const-string v10, "InitCacheImpl"

    .line 36
    .line 37
    new-instance v9, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v11, "Reading cache for cacheKey: "

    .line 43
    .line 44
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v11, v1, Lcom/moloco/sdk/internal/services/init/h$d;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 48
    .line 49
    invoke-virtual {v11}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    const/16 v14, 0xc

    .line 61
    .line 62
    const/4 v15, 0x0

    .line 63
    const/4 v12, 0x0

    .line 64
    const/4 v13, 0x0

    .line 65
    move-object/from16 v9, v16

    .line 66
    .line 67
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v9, v1, Lcom/moloco/sdk/internal/services/init/h$d;->k:Lcom/moloco/sdk/internal/services/init/h;

    .line 71
    .line 72
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/h$d;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 73
    .line 74
    invoke-static {v9}, Lcom/moloco/sdk/internal/services/init/h;->e(Lcom/moloco/sdk/internal/services/init/h;)Landroid/content/SharedPreferences;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-static {v9, v10, v11}, Lcom/moloco/sdk/internal/services/init/h;->i(Lcom/moloco/sdk/internal/services/init/h;Lcom/moloco/sdk/internal/services/init/a;Landroid/content/SharedPreferences;)V

    .line 79
    .line 80
    .line 81
    iget-object v9, v1, Lcom/moloco/sdk/internal/services/init/h$d;->k:Lcom/moloco/sdk/internal/services/init/h;

    .line 82
    .line 83
    invoke-static {v9}, Lcom/moloco/sdk/internal/services/init/h;->e(Lcom/moloco/sdk/internal/services/init/h;)Landroid/content/SharedPreferences;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/h$d;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 88
    .line 89
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    if-eqz v9, :cond_0

    .line 98
    .line 99
    const/4 v10, 0x0

    .line 100
    invoke-static {v9, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-static {v9}, Lcom/moloco/sdk/Init$SDKInitResponse;->parseFrom([B)Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    move-object/from16 v17, v9

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :cond_0
    move-object/from16 v17, v8

    .line 115
    .line 116
    :goto_0
    if-eqz v17, :cond_1

    .line 117
    .line 118
    const-string v10, "InitCacheImpl"

    .line 119
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v9, "Successfully read cache for cacheKey: "

    .line 126
    .line 127
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v9, v1, Lcom/moloco/sdk/internal/services/init/h$d;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 131
    .line 132
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    const/16 v14, 0xc

    .line 144
    .line 145
    const/4 v15, 0x0

    .line 146
    const/4 v12, 0x0

    .line 147
    const/4 v13, 0x0

    .line 148
    move-object/from16 v9, v16

    .line 149
    .line 150
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, v1, Lcom/moloco/sdk/internal/services/init/h$d;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 154
    .line 155
    invoke-virtual {v6, v5, v2}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    invoke-interface {v0, v9}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, v1, Lcom/moloco/sdk/internal/services/init/h$d;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 163
    .line 164
    new-instance v9, Lcom/moloco/sdk/acm/b;

    .line 165
    .line 166
    invoke-direct {v9, v7}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v5, v2}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-interface {v0, v2}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_1
    const-string v10, "InitCacheImpl"

    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v9, "Failed to read from cache (cache_miss) for cacheKey: "

    .line 185
    .line 186
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v9, v1, Lcom/moloco/sdk/internal/services/init/h$d;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 190
    .line 191
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    const/16 v14, 0xc

    .line 203
    .line 204
    const/4 v15, 0x0

    .line 205
    const/4 v12, 0x0

    .line 206
    const/4 v13, 0x0

    .line 207
    move-object/from16 v9, v16

    .line 208
    .line 209
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, v1, Lcom/moloco/sdk/internal/services/init/h$d;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 213
    .line 214
    invoke-virtual {v6, v5, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    invoke-virtual {v9, v3, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    invoke-interface {v2, v9}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 223
    .line 224
    .line 225
    iget-object v2, v1, Lcom/moloco/sdk/internal/services/init/h$d;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 226
    .line 227
    new-instance v9, Lcom/moloco/sdk/acm/b;

    .line 228
    .line 229
    invoke-direct {v9, v7}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9, v5, v4}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-virtual {v9, v3, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-interface {v2, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .line 242
    .line 243
    :goto_1
    return-object v17

    .line 244
    :goto_2
    sget-object v9, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 245
    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v10, "Failed to read cache for cacheKey: "

    .line 252
    .line 253
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/h$d;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 257
    .line 258
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v10, " with exception"

    .line 266
    .line 267
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    const/16 v14, 0x8

    .line 275
    .line 276
    const/4 v15, 0x0

    .line 277
    const-string v10, "InitCacheImpl"

    .line 278
    .line 279
    const/4 v13, 0x0

    .line 280
    move-object v12, v0

    .line 281
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    iget-object v2, v1, Lcom/moloco/sdk/internal/services/init/h$d;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 285
    .line 286
    invoke-virtual {v6, v5, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    const-string v10, "getSimpleName(...)"

    .line 299
    .line 300
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6, v3, v9}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-interface {v2, v6}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 308
    .line 309
    .line 310
    iget-object v2, v1, Lcom/moloco/sdk/internal/services/init/h$d;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 311
    .line 312
    new-instance v6, Lcom/moloco/sdk/acm/b;

    .line 313
    .line 314
    invoke-direct {v6, v7}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6, v5, v4}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4, v3, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-interface {v2, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 337
    .line 338
    .line 339
    return-object v8

    .line 340
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 341
    .line 342
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 343
    .line 344
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v0
.end method
