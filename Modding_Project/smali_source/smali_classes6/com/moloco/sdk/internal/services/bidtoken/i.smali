.class public final Lcom/moloco/sdk/internal/services/bidtoken/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/bidtoken/k;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/bidtoken/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/publisher/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/services/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/bidtoken/o;Lcom/moloco/sdk/internal/publisher/v;Lcom/moloco/sdk/internal/services/j;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/bidtoken/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/publisher/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bidTokenService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "initializationHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "timeProviderService"

    .line 12
    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/i;->a:Lcom/moloco/sdk/internal/services/bidtoken/o;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/i;->b:Lcom/moloco/sdk/internal/publisher/v;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/bidtoken/i;->c:Lcom/moloco/sdk/internal/services/j;

    .line 25
    .line 26
    const-string p1, "BidTokenHandlerImpl"

    .line 27
    .line 28
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/i;->d:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/publisher/MolocoBidTokenListener;Lrs/c;)Ljava/lang/Object;
    .locals 17
    .param p1    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/publisher/MolocoBidTokenListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lcom/moloco/sdk/publisher/MolocoBidTokenListener;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    instance-of v4, v3, Lcom/moloco/sdk/internal/services/bidtoken/i$a;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;

    .line 15
    .line 16
    iget v5, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->n:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->n:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Lcom/moloco/sdk/internal/services/bidtoken/i$a;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/i;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->l:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->n:I

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    const-string v8, "failure"

    .line 43
    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    if-ne v6, v7, :cond_1

    .line 47
    .line 48
    iget-wide v1, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->k:J

    .line 49
    .line 50
    iget-object v5, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->j:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v5, Lcom/moloco/sdk/publisher/MolocoBidTokenListener;

    .line 53
    .line 54
    iget-object v6, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->i:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v6, Lcom/moloco/sdk/acm/recorder/a;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->h:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lcom/moloco/sdk/internal/services/bidtoken/i;

    .line 61
    .line 62
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-wide v9, v1

    .line 66
    move-object v2, v5

    .line 67
    move-object v1, v6

    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_2
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-instance v3, Lcom/moloco/sdk/acm/b;

    .line 82
    .line 83
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/a;->o:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 84
    .line 85
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-direct {v3, v6}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v1, v3}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 93
    .line 94
    .line 95
    iget-object v3, v0, Lcom/moloco/sdk/internal/services/bidtoken/i;->b:Lcom/moloco/sdk/internal/publisher/v;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/publisher/v;->i()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const-string v6, ""

    .line 102
    .line 103
    if-nez v3, :cond_3

    .line 104
    .line 105
    sget-object v3, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->SDK_PERSISTENT_HTTP_REQUEST_FAILED_TO_INIT:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 106
    .line 107
    sget-object v9, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 108
    .line 109
    iget-object v10, v0, Lcom/moloco/sdk/internal/services/bidtoken/i;->d:Ljava/lang/String;

    .line 110
    .line 111
    const/16 v14, 0xc

    .line 112
    .line 113
    const/4 v15, 0x0

    .line 114
    const-string v11, "Bid token cannot be fetched because SDK initialization cannot happen due to WM issue"

    .line 115
    .line 116
    const/4 v12, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    new-instance v4, Lcom/moloco/sdk/acm/b;

    .line 122
    .line 123
    sget-object v5, Lcom/moloco/sdk/internal/client_metrics_data/a;->p:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 124
    .line 125
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-direct {v4, v5}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object v5, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 133
    .line 134
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4, v5, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    sget-object v5, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 143
    .line 144
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const-string v7, "sdk_cannot_initialize"

    .line 149
    .line 150
    invoke-virtual {v4, v5, v7}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-interface {v1, v4}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v2, v6, v3}, Lcom/moloco/sdk/publisher/MolocoBidTokenListener;->onBidTokenResult(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;)V

    .line 158
    .line 159
    .line 160
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 161
    .line 162
    return-object v1

    .line 163
    :cond_3
    iget-object v3, v0, Lcom/moloco/sdk/internal/services/bidtoken/i;->b:Lcom/moloco/sdk/internal/publisher/v;

    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/publisher/v;->j()Lkt/i;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-interface {v3}, Lkt/i;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    sget-object v9, Lcom/moloco/sdk/publisher/Initialization;->FAILURE:Lcom/moloco/sdk/publisher/Initialization;

    .line 174
    .line 175
    if-ne v3, v9, :cond_4

    .line 176
    .line 177
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 178
    .line 179
    iget-object v11, v0, Lcom/moloco/sdk/internal/services/bidtoken/i;->d:Ljava/lang/String;

    .line 180
    .line 181
    const/16 v15, 0xc

    .line 182
    .line 183
    const/16 v16, 0x0

    .line 184
    .line 185
    const-string v12, "Bid token cannot be fetched because SDK initialization has failed"

    .line 186
    .line 187
    const/4 v13, 0x0

    .line 188
    const/4 v14, 0x0

    .line 189
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    new-instance v3, Lcom/moloco/sdk/acm/b;

    .line 193
    .line 194
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/a;->p:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 195
    .line 196
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-direct {v3, v4}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 204
    .line 205
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v3, v4, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 214
    .line 215
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    const-string v5, "sdk_init_failed"

    .line 220
    .line 221
    invoke-virtual {v3, v4, v5}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-interface {v1, v3}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 226
    .line 227
    .line 228
    sget-object v1, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->SDK_INIT_ERROR:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 229
    .line 230
    invoke-interface {v2, v6, v1}, Lcom/moloco/sdk/publisher/MolocoBidTokenListener;->onBidTokenResult(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;)V

    .line 231
    .line 232
    .line 233
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 234
    .line 235
    return-object v1

    .line 236
    :cond_4
    iget-object v3, v0, Lcom/moloco/sdk/internal/services/bidtoken/i;->c:Lcom/moloco/sdk/internal/services/j;

    .line 237
    .line 238
    invoke-interface {v3}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 239
    .line 240
    .line 241
    move-result-wide v9

    .line 242
    iget-object v3, v0, Lcom/moloco/sdk/internal/services/bidtoken/i;->a:Lcom/moloco/sdk/internal/services/bidtoken/o;

    .line 243
    .line 244
    iput-object v0, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->h:Ljava/lang/Object;

    .line 245
    .line 246
    iput-object v1, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->i:Ljava/lang/Object;

    .line 247
    .line 248
    iput-object v2, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->j:Ljava/lang/Object;

    .line 249
    .line 250
    iput-wide v9, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->k:J

    .line 251
    .line 252
    iput v7, v4, Lcom/moloco/sdk/internal/services/bidtoken/i$a;->n:I

    .line 253
    .line 254
    invoke-interface {v3, v1, v4}, Lcom/moloco/sdk/internal/services/bidtoken/o;->a(Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    if-ne v3, v5, :cond_5

    .line 259
    .line 260
    return-object v5

    .line 261
    :cond_5
    move-object v4, v0

    .line 262
    :goto_1
    check-cast v3, Ljava/lang/String;

    .line 263
    .line 264
    iget-object v5, v4, Lcom/moloco/sdk/internal/services/bidtoken/i;->c:Lcom/moloco/sdk/internal/services/j;

    .line 265
    .line 266
    invoke-interface {v5}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 267
    .line 268
    .line 269
    move-result-wide v5

    .line 270
    sub-long/2addr v5, v9

    .line 271
    sget-object v16, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 272
    .line 273
    iget-object v10, v4, Lcom/moloco/sdk/internal/services/bidtoken/i;->d:Ljava/lang/String;

    .line 274
    .line 275
    new-instance v9, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v11, "Bid token fetched in "

    .line 281
    .line 282
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v11, " ms"

    .line 289
    .line 290
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v11

    .line 297
    const/16 v14, 0xc

    .line 298
    .line 299
    const/4 v15, 0x0

    .line 300
    const/4 v12, 0x0

    .line 301
    const/4 v13, 0x0

    .line 302
    move-object/from16 v9, v16

    .line 303
    .line 304
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 308
    .line 309
    .line 310
    move-result v9

    .line 311
    const-wide/16 v12, 0x1

    .line 312
    .line 313
    if-nez v9, :cond_8

    .line 314
    .line 315
    new-instance v9, Lcom/moloco/sdk/acm/b;

    .line 316
    .line 317
    sget-object v14, Lcom/moloco/sdk/internal/client_metrics_data/a;->p:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 318
    .line 319
    invoke-virtual {v14}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    invoke-direct {v9, v14}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    sget-object v14, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 327
    .line 328
    invoke-virtual {v14}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v15

    .line 332
    invoke-virtual {v9, v15, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    sget-object v15, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 337
    .line 338
    invoke-virtual {v15}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    const-string v10, "bid_token_fetch_failed"

    .line 343
    .line 344
    invoke-virtual {v9, v7, v10}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    invoke-interface {v1, v7}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 349
    .line 350
    .line 351
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 352
    .line 353
    invoke-virtual {v7, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 354
    .line 355
    .line 356
    move-result-wide v11

    .line 357
    cmp-long v9, v5, v11

    .line 358
    .line 359
    if-ltz v9, :cond_6

    .line 360
    .line 361
    new-instance v9, Lcom/moloco/sdk/acm/b;

    .line 362
    .line 363
    sget-object v11, Lcom/moloco/sdk/internal/client_metrics_data/a;->r:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 364
    .line 365
    invoke-virtual {v11}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v11

    .line 369
    invoke-direct {v9, v11}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v14}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    invoke-virtual {v9, v11, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    invoke-virtual {v15}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v11

    .line 384
    invoke-virtual {v9, v11, v10}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    invoke-interface {v1, v9}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 389
    .line 390
    .line 391
    :cond_6
    const-wide/16 v11, 0x3

    .line 392
    .line 393
    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 394
    .line 395
    .line 396
    move-result-wide v11

    .line 397
    cmp-long v5, v5, v11

    .line 398
    .line 399
    if-ltz v5, :cond_7

    .line 400
    .line 401
    new-instance v5, Lcom/moloco/sdk/acm/b;

    .line 402
    .line 403
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/a;->s:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 404
    .line 405
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    invoke-direct {v5, v6}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v14}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    invoke-virtual {v5, v6, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-virtual {v15}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    invoke-virtual {v5, v6, v10}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    invoke-interface {v1, v5}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 429
    .line 430
    .line 431
    :cond_7
    sget-object v1, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_SIGNAL_COLLECTION_FAILED:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 432
    .line 433
    goto :goto_2

    .line 434
    :cond_8
    new-instance v7, Lcom/moloco/sdk/acm/b;

    .line 435
    .line 436
    sget-object v8, Lcom/moloco/sdk/internal/client_metrics_data/a;->p:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 437
    .line 438
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    invoke-direct {v7, v8}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    sget-object v8, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 446
    .line 447
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v9

    .line 451
    const-string/jumbo v10, "success"

    .line 452
    .line 453
    .line 454
    invoke-virtual {v7, v9, v10}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    invoke-interface {v1, v7}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 459
    .line 460
    .line 461
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 462
    .line 463
    invoke-virtual {v7, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 464
    .line 465
    .line 466
    move-result-wide v11

    .line 467
    cmp-long v9, v5, v11

    .line 468
    .line 469
    if-ltz v9, :cond_9

    .line 470
    .line 471
    new-instance v9, Lcom/moloco/sdk/acm/b;

    .line 472
    .line 473
    sget-object v11, Lcom/moloco/sdk/internal/client_metrics_data/a;->r:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 474
    .line 475
    invoke-virtual {v11}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v11

    .line 479
    invoke-direct {v9, v11}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v11

    .line 486
    invoke-virtual {v9, v11, v10}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    invoke-interface {v1, v9}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 491
    .line 492
    .line 493
    :cond_9
    const-wide/16 v11, 0x3

    .line 494
    .line 495
    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 496
    .line 497
    .line 498
    move-result-wide v11

    .line 499
    cmp-long v5, v5, v11

    .line 500
    .line 501
    if-ltz v5, :cond_a

    .line 502
    .line 503
    new-instance v5, Lcom/moloco/sdk/acm/b;

    .line 504
    .line 505
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/a;->s:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 506
    .line 507
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v6

    .line 511
    invoke-direct {v5, v6}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v6

    .line 518
    invoke-virtual {v5, v6, v10}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    invoke-interface {v1, v5}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 523
    .line 524
    .line 525
    :cond_a
    const/4 v1, 0x0

    .line 526
    :goto_2
    iget-object v10, v4, Lcom/moloco/sdk/internal/services/bidtoken/i;->d:Ljava/lang/String;

    .line 527
    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    .line 529
    .line 530
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .line 532
    .line 533
    const-string v5, "Returning bid token result, hasError: "

    .line 534
    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    if-eqz v1, :cond_b

    .line 539
    .line 540
    const/4 v7, 0x1

    .line 541
    goto :goto_3

    .line 542
    :cond_b
    const/4 v7, 0x0

    .line 543
    :goto_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v5, ", SDK init complete: "

    .line 547
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-static {}, Lcom/moloco/sdk/publisher/Moloco;->isInitialized()Z

    .line 552
    .line 553
    .line 554
    move-result v5

    .line 555
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v11

    .line 562
    const/16 v14, 0xc

    .line 563
    .line 564
    const/4 v15, 0x0

    .line 565
    const/4 v12, 0x0

    .line 566
    const/4 v13, 0x0

    .line 567
    move-object/from16 v9, v16

    .line 568
    .line 569
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    invoke-interface {v2, v3, v1}, Lcom/moloco/sdk/publisher/MolocoBidTokenListener;->onBidTokenResult(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;)V

    .line 573
    .line 574
    .line 575
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 576
    .line 577
    return-object v1
.end method
