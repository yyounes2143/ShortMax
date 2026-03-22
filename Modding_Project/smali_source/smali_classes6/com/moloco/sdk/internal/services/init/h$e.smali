.class public final Lcom/moloco/sdk/internal/services/init/h$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/services/init/h;->d(Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/Init$SDKInitResponse;Lrs/c;)Ljava/lang/Object;
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
    c = "com.moloco.sdk.internal.services.init.InitCacheImpl$updateCache$2"
    f = "InitCache.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/acm/recorder/a;

.field public final synthetic j:Lcom/moloco/sdk/internal/services/init/a;

.field public final synthetic k:Lcom/moloco/sdk/Init$SDKInitResponse;

.field public final synthetic l:Lcom/moloco/sdk/internal/services/init/h;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/Init$SDKInitResponse;Lcom/moloco/sdk/internal/services/init/h;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lcom/moloco/sdk/internal/services/init/a;",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            "Lcom/moloco/sdk/internal/services/init/h;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/init/h$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/init/h$e;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/init/h$e;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/init/h$e;->k:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/services/init/h$e;->l:Lcom/moloco/sdk/internal/services/init/h;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/init/h$e;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/services/init/h$e;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/services/init/h$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/moloco/sdk/internal/services/init/h$e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/init/h$e;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/init/h$e;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/internal/services/init/h$e;->k:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/internal/services/init/h$e;->l:Lcom/moloco/sdk/internal/services/init/h;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/services/init/h$e;-><init>(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/services/init/a;Lcom/moloco/sdk/Init$SDKInitResponse;Lcom/moloco/sdk/internal/services/init/h;Lrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/init/h$e;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "Failed to update cache for cacheKey: "

    .line 4
    .line 5
    const-string/jumbo v0, "success"

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
    iget v6, v1, Lcom/moloco/sdk/internal/services/init/h$e;->h:I

    .line 18
    .line 19
    if-nez v6, :cond_5

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v6, v1, Lcom/moloco/sdk/internal/services/init/h$e;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 25
    .line 26
    const-string v7, "SDKInitCacheWrite"

    .line 27
    .line 28
    invoke-interface {v6, v7}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    :try_start_0
    sget-object v15, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 33
    .line 34
    const-string v9, "InitCacheImpl"

    .line 35
    .line 36
    new-instance v8, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v10, "Updating cache for cacheKey: "

    .line 42
    .line 43
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/h$e;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 47
    .line 48
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const/16 v13, 0xc

    .line 60
    .line 61
    const/4 v14, 0x0

    .line 62
    const/4 v11, 0x0

    .line 63
    const/4 v12, 0x0

    .line 64
    move-object v8, v15

    .line 65
    invoke-static/range {v8 .. v14}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v8, v1, Lcom/moloco/sdk/internal/services/init/h$e;->k:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 69
    .line 70
    invoke-virtual {v8}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    const/4 v14, 0x0

    .line 75
    invoke-static {v8, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    if-eqz v13, :cond_1

    .line 80
    .line 81
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-nez v8, :cond_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    move-object/from16 v18, v13

    .line 89
    .line 90
    move/from16 v16, v14

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_1
    :goto_0
    const-string v9, "InitCacheImpl"

    .line 97
    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v10, "Failed to encode SDKInitResponse for cacheKey: "

    .line 104
    .line 105
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/h$e;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 109
    .line 110
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    const/16 v16, 0xc

    .line 122
    .line 123
    const/16 v17, 0x0

    .line 124
    .line 125
    const/4 v11, 0x0

    .line 126
    const/4 v12, 0x0

    .line 127
    move-object v8, v15

    .line 128
    move-object/from16 v18, v13

    .line 129
    .line 130
    move/from16 v13, v16

    .line 131
    .line 132
    move/from16 v16, v14

    .line 133
    .line 134
    move-object/from16 v14, v17

    .line 135
    .line 136
    invoke-static/range {v8 .. v14}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    const/4 v14, 0x1

    .line 140
    :goto_1
    if-nez v14, :cond_2

    .line 141
    .line 142
    iget-object v8, v1, Lcom/moloco/sdk/internal/services/init/h$e;->l:Lcom/moloco/sdk/internal/services/init/h;

    .line 143
    .line 144
    invoke-static {v8}, Lcom/moloco/sdk/internal/services/init/h;->e(Lcom/moloco/sdk/internal/services/init/h;)Landroid/content/SharedPreferences;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    iget-object v9, v1, Lcom/moloco/sdk/internal/services/init/h$e;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 153
    .line 154
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    move-object/from16 v10, v18

    .line 159
    .line 160
    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    move/from16 v16, v8

    .line 169
    .line 170
    :cond_2
    if-eqz v16, :cond_3

    .line 171
    .line 172
    const-string v9, "InitCacheImpl"

    .line 173
    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v10, "Successfully updated cache for cacheKey: "

    .line 180
    .line 181
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/h$e;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 185
    .line 186
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    const/16 v13, 0xc

    .line 198
    .line 199
    const/4 v14, 0x0

    .line 200
    const/4 v11, 0x0

    .line 201
    const/4 v12, 0x0

    .line 202
    move-object v8, v15

    .line 203
    invoke-static/range {v8 .. v14}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    iget-object v8, v1, Lcom/moloco/sdk/internal/services/init/h$e;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 207
    .line 208
    invoke-virtual {v6, v5, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    invoke-interface {v8, v9}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 213
    .line 214
    .line 215
    iget-object v8, v1, Lcom/moloco/sdk/internal/services/init/h$e;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 216
    .line 217
    new-instance v9, Lcom/moloco/sdk/acm/b;

    .line 218
    .line 219
    invoke-direct {v9, v7}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v5, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-interface {v8, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_4

    .line 230
    .line 231
    :cond_3
    if-eqz v14, :cond_4

    .line 232
    .line 233
    const-string v0, "encoding_failure"

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_4
    const-string v0, "commit_failure"

    .line 237
    .line 238
    :goto_2
    const-string v9, "InitCacheImpl"

    .line 239
    .line 240
    new-instance v8, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/h$e;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 249
    .line 250
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v10, " with error: "

    .line 258
    .line 259
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    const/16 v13, 0xc

    .line 270
    .line 271
    const/4 v14, 0x0

    .line 272
    const/4 v11, 0x0

    .line 273
    const/4 v12, 0x0

    .line 274
    move-object v8, v15

    .line 275
    invoke-static/range {v8 .. v14}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iget-object v8, v1, Lcom/moloco/sdk/internal/services/init/h$e;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 279
    .line 280
    invoke-virtual {v6, v5, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-virtual {v9, v3, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    invoke-interface {v8, v9}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 289
    .line 290
    .line 291
    iget-object v8, v1, Lcom/moloco/sdk/internal/services/init/h$e;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 292
    .line 293
    new-instance v9, Lcom/moloco/sdk/acm/b;

    .line 294
    .line 295
    invoke-direct {v9, v7}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9, v5, v4}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    invoke-virtual {v9, v3, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-interface {v8, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :goto_3
    sget-object v9, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 311
    .line 312
    new-instance v8, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    iget-object v2, v1, Lcom/moloco/sdk/internal/services/init/h$e;->j:Lcom/moloco/sdk/internal/services/init/a;

    .line 321
    .line 322
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/init/a;->b()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v2, " with exception"

    .line 330
    .line 331
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    const/16 v14, 0x8

    .line 339
    .line 340
    const/4 v15, 0x0

    .line 341
    const-string v10, "InitCacheImpl"

    .line 342
    .line 343
    const/4 v13, 0x0

    .line 344
    move-object v12, v0

    .line 345
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    iget-object v2, v1, Lcom/moloco/sdk/internal/services/init/h$e;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 349
    .line 350
    invoke-virtual {v6, v5, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    const-string v9, "getSimpleName(...)"

    .line 363
    .line 364
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v6, v3, v8}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-interface {v2, v6}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 372
    .line 373
    .line 374
    iget-object v2, v1, Lcom/moloco/sdk/internal/services/init/h$e;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 375
    .line 376
    new-instance v6, Lcom/moloco/sdk/acm/b;

    .line 377
    .line 378
    invoke-direct {v6, v7}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6, v5, v4}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4, v3, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-interface {v2, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 401
    .line 402
    .line 403
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 404
    .line 405
    return-object v0

    .line 406
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 407
    .line 408
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 409
    .line 410
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v0
.end method
