.class public final Lcom/moloco/sdk/internal/services/bidtoken/z$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/services/bidtoken/z;->a(Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Lcom/moloco/sdk/internal/services/bidtoken/n;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.services.bidtoken.ServerBidTokenServiceImpl$bidToken$2"
    f = "ServerBidTokenService.kt"
    l = {
        0xbe,
        0xd7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/services/bidtoken/z;

.field public final synthetic j:Lcom/moloco/sdk/acm/recorder/a;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/services/bidtoken/z;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/services/bidtoken/z;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/bidtoken/z$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->j:Lcom/moloco/sdk/acm/recorder/a;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->j:Lcom/moloco/sdk/acm/recorder/a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/moloco/sdk/internal/services/bidtoken/z$a;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/z;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final i(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/bidtoken/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->create(Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/services/bidtoken/z$a;

    .line 6
    .line 7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i(Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const-string v4, "[Thread: "

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, "] Acquired lock, fetching status of current token"

    .line 59
    .line 60
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {p1, v1}, Lcom/moloco/sdk/internal/services/bidtoken/z;->g(Lcom/moloco/sdk/internal/services/bidtoken/z;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/moloco/sdk/internal/services/bidtoken/z;->b(Lcom/moloco/sdk/internal/services/bidtoken/z;)Lcom/moloco/sdk/internal/services/bidtoken/y;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput v3, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->h:I

    .line 77
    .line 78
    invoke-interface {p1, p0}, Lcom/moloco/sdk/internal/services/bidtoken/y;->a(Lrs/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_3

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_3
    :goto_0
    check-cast p1, Lcom/moloco/sdk/internal/services/bidtoken/B;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 88
    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v5, "] bidToken status: "

    .line 109
    .line 110
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v1, v3}, Lcom/moloco/sdk/internal/services/bidtoken/z;->e(Lcom/moloco/sdk/internal/services/bidtoken/z;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/B;->b()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->j:Lcom/moloco/sdk/acm/recorder/a;

    .line 130
    .line 131
    new-instance v1, Lcom/moloco/sdk/acm/b;

    .line 132
    .line 133
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/a;->u:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-direct {v1, v2}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-string/jumbo v3, "true"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v2, "initial_fetch"

    .line 156
    .line 157
    const-string v5, "false"

    .line 158
    .line 159
    invoke-virtual {v1, v2, v5}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    sget-object v2, Lcom/moloco/sdk/internal/services/bidtoken/B;->b:Lcom/moloco/sdk/internal/services/bidtoken/B;

    .line 164
    .line 165
    if-ne p1, v2, :cond_4

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    move-object v3, v5

    .line 169
    :goto_1
    const-string v5, "expiring"

    .line 170
    .line 171
    invoke-virtual {v1, v5, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-interface {v0, v1}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/moloco/sdk/internal/services/bidtoken/z;->b(Lcom/moloco/sdk/internal/services/bidtoken/z;)Lcom/moloco/sdk/internal/services/bidtoken/y;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/bidtoken/y;->a()Lcom/moloco/sdk/internal/services/bidtoken/n;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-ne p1, v2, :cond_5

    .line 189
    .line 190
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 191
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v2, "] bidToken is expiring, returning cached, and refreshing async"

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {p1, v1}, Lcom/moloco/sdk/internal/services/bidtoken/z;->e(Lcom/moloco/sdk/internal/services/bidtoken/z;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 224
    .line 225
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->j:Lcom/moloco/sdk/acm/recorder/a;

    .line 226
    .line 227
    invoke-virtual {p1, v1}, Lcom/moloco/sdk/internal/services/bidtoken/z;->d(Lcom/moloco/sdk/acm/recorder/a;)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_5
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 232
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v2, "] bidToken doesn\'t need refresh, returning cached"

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-static {p1, v1}, Lcom/moloco/sdk/internal/services/bidtoken/z;->e(Lcom/moloco/sdk/internal/services/bidtoken/z;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_2
    return-object v0

    .line 265
    :cond_6
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 266
    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v3, "] bidToken needs refresh, fetching new token"

    .line 287
    .line 288
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {p1, v1}, Lcom/moloco/sdk/internal/services/bidtoken/z;->g(Lcom/moloco/sdk/internal/services/bidtoken/z;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v3, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 299
    .line 300
    iget-object v4, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->j:Lcom/moloco/sdk/acm/recorder/a;

    .line 301
    .line 302
    invoke-static {}, Lcom/moloco/sdk/internal/services/bidtoken/g;->c()Lcom/moloco/sdk/internal/services/bidtoken/n;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    iput v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$a;->h:I

    .line 307
    .line 308
    const/4 v6, 0x0

    .line 309
    const/4 v7, 0x0

    .line 310
    move-object v8, p0

    .line 311
    invoke-virtual/range {v3 .. v8}, Lcom/moloco/sdk/internal/services/bidtoken/z;->c(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/services/bidtoken/n;ZZLrs/c;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    if-ne p1, v0, :cond_7

    .line 316
    .line 317
    return-object v0

    .line 318
    :cond_7
    :goto_3
    return-object p1
.end method
