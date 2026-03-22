.class public final Lcom/moloco/sdk/internal/services/init/h$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/services/init/h;->b(Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.services.init.InitCacheImpl$clearCache$2"
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
            "Lcom/moloco/sdk/internal/services/init/h$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/init/h$c;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/init/h$c;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/init/h$c;->k:Lcom/moloco/sdk/internal/services/init/h;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/init/h$c;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/services/init/h$c;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/services/init/h$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lcom/moloco/sdk/internal/services/init/h$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/init/h$c;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/init/h$c;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/init/h$c;->k:Lcom/moloco/sdk/internal/services/init/h;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/moloco/sdk/internal/services/init/h$c;-><init>(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/internal/services/init/h;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/init/h$c;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "commit_failure"

    .line 4
    .line 5
    const-string v2, "Failed to clear cache for cacheKey: "

    .line 6
    .line 7
    const-string/jumbo v3, "success"

    .line 8
    .line 9
    .line 10
    const-string v4, "Reason"

    .line 11
    .line 12
    const-string v5, "failure"

    .line 13
    .line 14
    const-string v6, "Result"

    .line 15
    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget v7, v1, Lcom/moloco/sdk/internal/services/init/h$c;->h:I

    .line 20
    .line 21
    if-nez v7, :cond_1

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v7, v1, Lcom/moloco/sdk/internal/services/init/h$c;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 27
    .line 28
    const-string v8, "SDKInitCacheClear"

    .line 29
    .line 30
    invoke-interface {v7, v8}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    :try_start_0
    sget-object v16, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 35
    .line 36
    const-string v10, "InitCacheImpl"

    .line 37
    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v11, "Clearing cache for cacheKey: "

    .line 44
    .line 45
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v11, v1, Lcom/moloco/sdk/internal/services/init/h$c;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 49
    .line 50
    invoke-virtual {v11}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    const/16 v14, 0xc

    .line 62
    .line 63
    const/4 v15, 0x0

    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x0

    .line 66
    move-object/from16 v9, v16

    .line 67
    .line 68
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v9, v1, Lcom/moloco/sdk/internal/services/init/h$c;->k:Lcom/moloco/sdk/internal/services/init/h;

    .line 72
    .line 73
    invoke-static {v9}, Lcom/moloco/sdk/internal/services/init/h;->e(Lcom/moloco/sdk/internal/services/init/h;)Landroid/content/SharedPreferences;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/h$c;->k:Lcom/moloco/sdk/internal/services/init/h;

    .line 82
    .line 83
    iget-object v11, v1, Lcom/moloco/sdk/internal/services/init/h$c;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 84
    .line 85
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v10, v11, v9}, Lcom/moloco/sdk/internal/services/init/h;->h(Lcom/moloco/sdk/internal/services/init/h;Lcom/moloco/sdk/internal/services/init/a;Landroid/content/SharedPreferences$Editor;)V

    .line 89
    .line 90
    .line 91
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/h$c;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 92
    .line 93
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    .line 99
    .line 100
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eqz v9, :cond_0

    .line 105
    .line 106
    const-string v10, "InitCacheImpl"

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v9, "Successfully cleared cache for cacheKey: "

    .line 114
    .line 115
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v9, v1, Lcom/moloco/sdk/internal/services/init/h$c;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 119
    .line 120
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    const/16 v14, 0xc

    .line 132
    .line 133
    const/4 v15, 0x0

    .line 134
    const/4 v12, 0x0

    .line 135
    const/4 v13, 0x0

    .line 136
    move-object/from16 v9, v16

    .line 137
    .line 138
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v1, Lcom/moloco/sdk/internal/services/init/h$c;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 142
    .line 143
    new-instance v9, Lcom/moloco/sdk/acm/b;

    .line 144
    .line 145
    invoke-direct {v9, v8}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v6, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-interface {v0, v9}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, v1, Lcom/moloco/sdk/internal/services/init/h$c;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 156
    .line 157
    invoke-virtual {v7, v6, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-interface {v0, v3}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :catch_0
    move-exception v0

    .line 167
    goto :goto_0

    .line 168
    :cond_0
    const-string v10, "InitCacheImpl"

    .line 169
    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v9, v1, Lcom/moloco/sdk/internal/services/init/h$c;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 179
    .line 180
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    const/16 v14, 0xc

    .line 192
    .line 193
    const/4 v15, 0x0

    .line 194
    const/4 v12, 0x0

    .line 195
    const/4 v13, 0x0

    .line 196
    move-object/from16 v9, v16

    .line 197
    .line 198
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    iget-object v3, v1, Lcom/moloco/sdk/internal/services/init/h$c;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 202
    .line 203
    new-instance v9, Lcom/moloco/sdk/acm/b;

    .line 204
    .line 205
    invoke-direct {v9, v8}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v9, v6, v5}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    invoke-virtual {v9, v4, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    invoke-interface {v3, v9}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 217
    .line 218
    .line 219
    iget-object v3, v1, Lcom/moloco/sdk/internal/services/init/h$c;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 220
    .line 221
    invoke-virtual {v7, v6, v5}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    invoke-virtual {v9, v4, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-interface {v3, v0}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :goto_0
    sget-object v9, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 234
    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-object v2, v1, Lcom/moloco/sdk/internal/services/init/h$c;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 244
    .line 245
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v2, " with exception"

    .line 253
    .line 254
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    const/16 v14, 0x8

    .line 262
    .line 263
    const/4 v15, 0x0

    .line 264
    const-string v10, "InitCacheImpl"

    .line 265
    .line 266
    const/4 v13, 0x0

    .line 267
    move-object v12, v0

    .line 268
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iget-object v2, v1, Lcom/moloco/sdk/internal/services/init/h$c;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 272
    .line 273
    new-instance v3, Lcom/moloco/sdk/acm/b;

    .line 274
    .line 275
    invoke-direct {v3, v8}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v6, v5}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    const-string v9, "getSimpleName(...)"

    .line 291
    .line 292
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v4, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-interface {v2, v3}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 300
    .line 301
    .line 302
    iget-object v2, v1, Lcom/moloco/sdk/internal/services/init/h$c;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 303
    .line 304
    invoke-virtual {v7, v6, v5}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3, v4, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-interface {v2, v0}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 324
    .line 325
    .line 326
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 327
    .line 328
    return-object v0

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 330
    .line 331
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 332
    .line 333
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v0
.end method
