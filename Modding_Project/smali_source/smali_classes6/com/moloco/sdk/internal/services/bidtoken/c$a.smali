.class public final Lcom/moloco/sdk/internal/services/bidtoken/c$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/services/bidtoken/c;->a(Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/moloco/sdk/internal/g0<",
        "Lcom/moloco/sdk/internal/services/bidtoken/n;",
        "Lcom/moloco/sdk/internal/q;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.services.bidtoken.BidTokenApiImpl$fetchBidToken$2"
    f = "BidTokenApi.kt"
    l = {
        0x50,
        0x7f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final synthetic p:Lcom/moloco/sdk/internal/services/bidtoken/c;

.field public final synthetic q:Lcom/moloco/sdk/acm/recorder/a;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/services/bidtoken/c;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/services/bidtoken/c;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/bidtoken/c$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->p:Lcom/moloco/sdk/internal/services/bidtoken/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->q:Lcom/moloco/sdk/acm/recorder/a;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
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
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/services/bidtoken/n;",
            "Lcom/moloco/sdk/internal/q;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/services/bidtoken/c$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lcom/moloco/sdk/internal/services/bidtoken/c$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->p:Lcom/moloco/sdk/internal/services/bidtoken/c;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->q:Lcom/moloco/sdk/acm/recorder/a;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/internal/services/bidtoken/c$a;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/c;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->o:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-eq v2, v4, :cond_1

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    iget v2, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->m:I

    .line 18
    .line 19
    iget v5, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->l:I

    .line 20
    .line 21
    iget-object v6, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->j:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v6, Lcom/moloco/sdk/acm/recorder/a;

    .line 24
    .line 25
    iget-object v7, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->i:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v7, Lcom/moloco/sdk/internal/services/bidtoken/c;

    .line 28
    .line 29
    iget-object v8, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->h:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    move/from16 v21, v3

    .line 37
    .line 38
    move-object v3, v1

    .line 39
    move/from16 v1, v21

    .line 40
    .line 41
    move-object/from16 v22, v6

    .line 42
    .line 43
    move v6, v5

    .line 44
    move-object v5, v8

    .line 45
    move-object/from16 v8, v22

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_1
    iget v2, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->n:I

    .line 58
    .line 59
    iget v5, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->m:I

    .line 60
    .line 61
    iget v6, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->l:I

    .line 62
    .line 63
    iget-object v7, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->k:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v7, Lcom/moloco/sdk/acm/e;

    .line 66
    .line 67
    iget-object v8, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->j:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v8, Lcom/moloco/sdk/acm/recorder/a;

    .line 70
    .line 71
    iget-object v9, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->i:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v9, Lcom/moloco/sdk/internal/services/bidtoken/c;

    .line 74
    .line 75
    iget-object v10, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->h:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 78
    .line 79
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    move-object v11, v10

    .line 83
    move-object/from16 v10, p1

    .line 84
    .line 85
    move-object/from16 v21, v9

    .line 86
    .line 87
    move-object v9, v7

    .line 88
    move-object/from16 v7, v21

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 96
    .line 97
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v5, Lcom/moloco/sdk/internal/g0$a;

    .line 101
    .line 102
    new-instance v6, Lcom/moloco/sdk/internal/q;

    .line 103
    .line 104
    sget-object v7, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->UNKNOWN:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 105
    .line 106
    invoke-virtual {v7}, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->getErrorCode()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    const-string v8, "retry max parameter is 0"

    .line 111
    .line 112
    invoke-direct {v6, v8, v7}, Lcom/moloco/sdk/internal/q;-><init>(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v5, v6}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iput-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 119
    .line 120
    iget-object v5, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->p:Lcom/moloco/sdk/internal/services/bidtoken/c;

    .line 121
    .line 122
    invoke-static {v5}, Lcom/moloco/sdk/internal/services/bidtoken/c;->b(Lcom/moloco/sdk/internal/services/bidtoken/c;)Lcom/moloco/sdk/internal/services/bidtoken/l;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/services/bidtoken/l;->b()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    iget-object v6, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->p:Lcom/moloco/sdk/internal/services/bidtoken/c;

    .line 131
    .line 132
    iget-object v7, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->q:Lcom/moloco/sdk/acm/recorder/a;

    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    move/from16 v21, v5

    .line 136
    .line 137
    move-object v5, v2

    .line 138
    move v2, v8

    .line 139
    move-object v8, v7

    .line 140
    move-object v7, v6

    .line 141
    move/from16 v6, v21

    .line 142
    .line 143
    :goto_0
    if-ge v2, v6, :cond_8

    .line 144
    .line 145
    sget-object v9, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 146
    .line 147
    invoke-static {v7}, Lcom/moloco/sdk/internal/services/bidtoken/c;->g(Lcom/moloco/sdk/internal/services/bidtoken/c;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    new-instance v11, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v12, "Fetching bidtoken, attempt #"

    .line 157
    .line 158
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    const/16 v14, 0xc

    .line 169
    .line 170
    const/4 v15, 0x0

    .line 171
    const/4 v12, 0x0

    .line 172
    const/4 v13, 0x0

    .line 173
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/d;->n:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 177
    .line 178
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-interface {v8, v9}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    iput-object v5, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->h:Ljava/lang/Object;

    .line 187
    .line 188
    iput-object v7, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->i:Ljava/lang/Object;

    .line 189
    .line 190
    iput-object v8, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->j:Ljava/lang/Object;

    .line 191
    .line 192
    iput-object v9, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->k:Ljava/lang/Object;

    .line 193
    .line 194
    iput v6, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->l:I

    .line 195
    .line 196
    iput v2, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->m:I

    .line 197
    .line 198
    iput v2, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->n:I

    .line 199
    .line 200
    iput v4, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->o:I

    .line 201
    .line 202
    const-string v10, "https://sdkapi.dsp-api.moloco.com/v3/bidtoken"

    .line 203
    .line 204
    invoke-static {v7, v10, v0}, Lcom/moloco/sdk/internal/services/bidtoken/c;->c(Lcom/moloco/sdk/internal/services/bidtoken/c;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    if-ne v10, v1, :cond_3

    .line 209
    .line 210
    return-object v1

    .line 211
    :cond_3
    move-object v11, v5

    .line 212
    move v5, v2

    .line 213
    :goto_1
    check-cast v10, Lcom/moloco/sdk/internal/g0;

    .line 214
    .line 215
    iput-object v10, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 216
    .line 217
    sget-object v19, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 218
    .line 219
    invoke-static {v7}, Lcom/moloco/sdk/internal/services/bidtoken/c;->g(Lcom/moloco/sdk/internal/services/bidtoken/c;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v13

    .line 223
    new-instance v12, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v14, "Received bidtoken fetch result: "

    .line 229
    .line 230
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v14

    .line 240
    const/16 v17, 0xc

    .line 241
    .line 242
    const/16 v18, 0x0

    .line 243
    .line 244
    const/4 v15, 0x0

    .line 245
    const/16 v16, 0x0

    .line 246
    .line 247
    move-object/from16 v12, v19

    .line 248
    .line 249
    invoke-static/range {v12 .. v18}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    instance-of v12, v10, Lcom/moloco/sdk/internal/g0$a;

    .line 253
    .line 254
    if-eqz v12, :cond_6

    .line 255
    .line 256
    move-object v12, v10

    .line 257
    check-cast v12, Lcom/moloco/sdk/internal/g0$a;

    .line 258
    .line 259
    invoke-virtual {v12}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    check-cast v12, Lcom/moloco/sdk/internal/q;

    .line 264
    .line 265
    invoke-virtual {v12}, Lcom/moloco/sdk/internal/q;->b()I

    .line 266
    .line 267
    .line 268
    move-result v12

    .line 269
    sget-object v13, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 270
    .line 271
    invoke-virtual {v13}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v14

    .line 275
    const-string v15, "failure"

    .line 276
    .line 277
    invoke-virtual {v9, v14, v15}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    sget-object v14, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 282
    .line 283
    invoke-virtual {v14}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-virtual {v9, v4, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/c;->f:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 296
    .line 297
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    move-object/from16 v20, v1

    .line 302
    .line 303
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v3, v9, v1}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-interface {v8, v1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 312
    .line 313
    .line 314
    new-instance v1, Lcom/moloco/sdk/acm/b;

    .line 315
    .line 316
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/a;->v:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 317
    .line 318
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-direct {v1, v3}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v13}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v1, v3, v15}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v14}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    invoke-virtual {v1, v3, v9}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {v1, v3, v4}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-interface {v8, v1}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 358
    .line 359
    .line 360
    const/16 v1, 0x190

    .line 361
    .line 362
    if-gt v1, v12, :cond_4

    .line 363
    .line 364
    const/16 v1, 0x1f4

    .line 365
    .line 366
    if-ge v12, v1, :cond_4

    .line 367
    .line 368
    const/16 v1, 0x1ad

    .line 369
    .line 370
    if-eq v12, v1, :cond_4

    .line 371
    .line 372
    invoke-static {v7}, Lcom/moloco/sdk/internal/services/bidtoken/c;->g(Lcom/moloco/sdk/internal/services/bidtoken/c;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v13

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    const-string v2, "Received 4xx error: "

    .line 382
    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v14

    .line 393
    const/16 v17, 0xc

    .line 394
    .line 395
    const/16 v18, 0x0

    .line 396
    .line 397
    const/4 v15, 0x0

    .line 398
    const/16 v16, 0x0

    .line 399
    .line 400
    move-object/from16 v12, v19

    .line 401
    .line 402
    invoke-static/range {v12 .. v18}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    return-object v10

    .line 406
    :cond_4
    invoke-static {v7}, Lcom/moloco/sdk/internal/services/bidtoken/c;->g(Lcom/moloco/sdk/internal/services/bidtoken/c;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v13

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v3, "Received non-4xx or "

    .line 416
    .line 417
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v3, " error: "

    .line 424
    .line 425
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v14

    .line 435
    const/16 v17, 0xc

    .line 436
    .line 437
    const/16 v18, 0x0

    .line 438
    .line 439
    const/4 v15, 0x0

    .line 440
    const/16 v16, 0x0

    .line 441
    .line 442
    move-object/from16 v12, v19

    .line 443
    .line 444
    invoke-static/range {v12 .. v18}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    invoke-static {v7}, Lcom/moloco/sdk/internal/services/bidtoken/c;->b(Lcom/moloco/sdk/internal/services/bidtoken/c;)Lcom/moloco/sdk/internal/services/bidtoken/l;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/l;->a()J

    .line 452
    .line 453
    .line 454
    move-result-wide v3

    .line 455
    add-int/lit8 v2, v2, 0x1

    .line 456
    .line 457
    int-to-long v1, v2

    .line 458
    mul-long/2addr v3, v1

    .line 459
    invoke-static {v7}, Lcom/moloco/sdk/internal/services/bidtoken/c;->g(Lcom/moloco/sdk/internal/services/bidtoken/c;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v13

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .line 467
    .line 468
    const-string v2, "Retrying after delay: "

    .line 469
    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v14

    .line 480
    invoke-static/range {v12 .. v18}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    iput-object v11, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->h:Ljava/lang/Object;

    .line 484
    .line 485
    iput-object v7, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->i:Ljava/lang/Object;

    .line 486
    .line 487
    iput-object v8, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->j:Ljava/lang/Object;

    .line 488
    .line 489
    const/4 v1, 0x0

    .line 490
    iput-object v1, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->k:Ljava/lang/Object;

    .line 491
    .line 492
    iput v6, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->l:I

    .line 493
    .line 494
    iput v5, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->m:I

    .line 495
    .line 496
    const/4 v1, 0x2

    .line 497
    iput v1, v0, Lcom/moloco/sdk/internal/services/bidtoken/c$a;->o:I

    .line 498
    .line 499
    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    move-object/from16 v3, v20

    .line 504
    .line 505
    if-ne v2, v3, :cond_5

    .line 506
    .line 507
    return-object v3

    .line 508
    :cond_5
    move v2, v5

    .line 509
    move-object v5, v11

    .line 510
    const/4 v4, 0x1

    .line 511
    :goto_2
    add-int/2addr v2, v4

    .line 512
    move-object/from16 v21, v3

    .line 513
    .line 514
    move v3, v1

    .line 515
    move-object/from16 v1, v21

    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :cond_6
    instance-of v1, v10, Lcom/moloco/sdk/internal/g0$b;

    .line 520
    .line 521
    if-eqz v1, :cond_7

    .line 522
    .line 523
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 524
    .line 525
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    const-string/jumbo v4, "success"

    .line 530
    .line 531
    .line 532
    invoke-virtual {v9, v3, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    sget-object v5, Lcom/moloco/sdk/internal/client_metrics_data/c;->f:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 537
    .line 538
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v6

    .line 542
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v7

    .line 546
    invoke-virtual {v3, v6, v7}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    invoke-interface {v8, v3}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 551
    .line 552
    .line 553
    new-instance v3, Lcom/moloco/sdk/acm/b;

    .line 554
    .line 555
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/a;->v:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 556
    .line 557
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    invoke-direct {v3, v6}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-virtual {v3, v1, v4}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-virtual {v1, v3, v2}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-interface {v8, v1}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 585
    .line 586
    .line 587
    return-object v10

    .line 588
    :cond_7
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 589
    .line 590
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 591
    .line 592
    .line 593
    throw v1

    .line 594
    :cond_8
    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 595
    .line 596
    return-object v1
.end method
