.class public final Lcom/moloco/sdk/internal/services/bidtoken/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/bidtoken/o;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x2
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBidTokenService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BidTokenService.kt\ncom/moloco/sdk/internal/services/bidtoken/BidTokenServiceImpl\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,111:1\n116#2,10:112\n*S KotlinDebug\n*F\n+ 1 BidTokenService.kt\ncom/moloco/sdk/internal/services/bidtoken/BidTokenServiceImpl\n*L\n51#1:112,10\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/bidtoken/b0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/services/bidtoken/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/bidtoken/b0;Lcom/moloco/sdk/internal/services/bidtoken/u;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/bidtoken/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/bidtoken/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "serverBidTokenService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "clientBidTokenService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/m;->a:Lcom/moloco/sdk/internal/services/bidtoken/b0;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/m;->b:Lcom/moloco/sdk/internal/services/bidtoken/u;

    .line 17
    .line 18
    const-string p1, "BidTokenServiceImpl"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/m;->c:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    const/4 p2, 0x0

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {v0, p1, p2}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/m;->d:Lqt/a;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .param p1    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    instance-of v2, v0, Lcom/moloco/sdk/internal/services/bidtoken/m$a;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;

    .line 11
    .line 12
    iget v3, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->o:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->o:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lcom/moloco/sdk/internal/services/bidtoken/m$a;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/m;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->m:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->o:I

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x1

    .line 40
    const-string v8, ""

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    if-eq v4, v7, :cond_3

    .line 46
    .line 47
    if-eq v4, v6, :cond_2

    .line 48
    .line 49
    if-ne v4, v5, :cond_1

    .line 50
    .line 51
    iget-object v3, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->l:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v4, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->k:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Lcom/moloco/sdk/acm/e;

    .line 58
    .line 59
    iget-object v5, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->j:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v5, Lqt/a;

    .line 62
    .line 63
    iget-object v6, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->i:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v6, Lcom/moloco/sdk/acm/recorder/a;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->h:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Lcom/moloco/sdk/internal/services/bidtoken/m;

    .line 70
    .line 71
    :try_start_0
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    check-cast v0, Lkotlin/Result;

    .line 75
    .line 76
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 88
    .line 89
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_2
    iget-object v4, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->k:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v4, Lcom/moloco/sdk/acm/e;

    .line 96
    .line 97
    iget-object v6, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->j:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v6, Lqt/a;

    .line 100
    .line 101
    iget-object v7, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->i:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v7, Lcom/moloco/sdk/acm/recorder/a;

    .line 104
    .line 105
    iget-object v10, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->h:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v10, Lcom/moloco/sdk/internal/services/bidtoken/m;

    .line 108
    .line 109
    :try_start_1
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    goto/16 :goto_7

    .line 115
    .line 116
    :cond_3
    iget-object v4, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->j:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v4, Lqt/a;

    .line 119
    .line 120
    iget-object v7, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->i:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v7, Lcom/moloco/sdk/acm/recorder/a;

    .line 123
    .line 124
    iget-object v10, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->h:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v10, Lcom/moloco/sdk/internal/services/bidtoken/m;

    .line 127
    .line 128
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    move-object/from16 v17, v7

    .line 132
    .line 133
    move-object v7, v4

    .line 134
    move-object/from16 v4, v17

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, v1, Lcom/moloco/sdk/internal/services/bidtoken/m;->d:Lqt/a;

    .line 141
    .line 142
    iput-object v1, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->h:Ljava/lang/Object;

    .line 143
    .line 144
    move-object/from16 v4, p1

    .line 145
    .line 146
    iput-object v4, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->i:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v0, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->j:Ljava/lang/Object;

    .line 149
    .line 150
    iput v7, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->o:I

    .line 151
    .line 152
    invoke-interface {v0, v9, v2}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    if-ne v7, v3, :cond_5

    .line 157
    .line 158
    return-object v3

    .line 159
    :cond_5
    move-object v7, v0

    .line 160
    move-object v10, v1

    .line 161
    :goto_1
    :try_start_2
    sget-object v0, Lcom/moloco/sdk/internal/client_metrics_data/d;->l:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v4, v0}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object v11, v10, Lcom/moloco/sdk/internal/services/bidtoken/m;->a:Lcom/moloco/sdk/internal/services/bidtoken/b0;

    .line 172
    .line 173
    iput-object v10, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->h:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object v4, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->i:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object v7, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->j:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object v0, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->k:Ljava/lang/Object;

    .line 180
    .line 181
    iput v6, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->o:I

    .line 182
    .line 183
    invoke-interface {v11, v4, v2}, Lcom/moloco/sdk/internal/services/bidtoken/b0;->a(Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 187
    if-ne v6, v3, :cond_6

    .line 188
    .line 189
    return-object v3

    .line 190
    :cond_6
    move-object/from16 v17, v4

    .line 191
    .line 192
    move-object v4, v0

    .line 193
    move-object v0, v6

    .line 194
    move-object v6, v7

    .line 195
    move-object/from16 v7, v17

    .line 196
    .line 197
    :goto_2
    :try_start_3
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/n;

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/n;->a()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-lez v12, :cond_a

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/n;->c()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/n;->b()Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v13, v10, Lcom/moloco/sdk/internal/services/bidtoken/m;->b:Lcom/moloco/sdk/internal/services/bidtoken/u;

    .line 218
    .line 219
    iput-object v10, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->h:Ljava/lang/Object;

    .line 220
    .line 221
    iput-object v7, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->i:Ljava/lang/Object;

    .line 222
    .line 223
    iput-object v6, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->j:Ljava/lang/Object;

    .line 224
    .line 225
    iput-object v4, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->k:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v11, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->l:Ljava/lang/Object;

    .line 228
    .line 229
    iput v5, v2, Lcom/moloco/sdk/internal/services/bidtoken/m$a;->o:I

    .line 230
    .line 231
    invoke-interface {v13, v7, v12, v0, v2}, Lcom/moloco/sdk/internal/services/bidtoken/u;->a(Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lcom/moloco/sdk/internal/services/bidtoken/h;Lrs/c;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    if-ne v0, v3, :cond_7

    .line 236
    .line 237
    return-object v3

    .line 238
    :cond_7
    move-object v5, v6

    .line 239
    move-object v6, v7

    .line 240
    move-object v2, v10

    .line 241
    move-object v3, v11

    .line 242
    :goto_3
    :try_start_4
    invoke-static {v0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_8

    .line 247
    .line 248
    move-object v0, v8

    .line 249
    :cond_8
    check-cast v0, Ljava/lang/String;

    .line 250
    .line 251
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-nez v7, :cond_9

    .line 256
    .line 257
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 258
    .line 259
    iget-object v11, v2, Lcom/moloco/sdk/internal/services/bidtoken/m;->c:Ljava/lang/String;

    .line 260
    .line 261
    const-string v12, "CBT has error"

    .line 262
    .line 263
    const/16 v15, 0xc

    .line 264
    .line 265
    const/16 v16, 0x0

    .line 266
    .line 267
    const/4 v13, 0x0

    .line 268
    const/4 v14, 0x0

    .line 269
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    const-string v0, "client"

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const/16 v3, 0x3a

    .line 284
    .line 285
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    move-object v0, v9

    .line 296
    :goto_4
    move-object v10, v2

    .line 297
    move-object v7, v6

    .line 298
    goto :goto_5

    .line 299
    :cond_a
    :try_start_5
    const-string v0, "server"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 300
    .line 301
    move-object v5, v6

    .line 302
    :goto_5
    :try_start_6
    invoke-virtual {v10, v4, v7, v0}, Lcom/moloco/sdk/internal/services/bidtoken/m;->b(Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 303
    .line 304
    .line 305
    invoke-interface {v5, v9}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    return-object v8

    .line 309
    :catchall_2
    move-exception v0

    .line 310
    move-object v5, v7

    .line 311
    :goto_6
    move-object v6, v5

    .line 312
    :goto_7
    invoke-interface {v6, v9}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    throw v0
.end method

.method public final b(Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/moloco/sdk/acm/b;

    .line 4
    .line 5
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/a;->q:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "failure"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0, v4, p3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p2, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0, p3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p2, p1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p3, Lcom/moloco/sdk/acm/b;

    .line 60
    .line 61
    sget-object v0, Lcom/moloco/sdk/internal/client_metrics_data/a;->q:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p3, v0}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string/jumbo v2, "success"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v1, v2}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-interface {p2, p3}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {p1, p3, v2}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p2, p1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method
