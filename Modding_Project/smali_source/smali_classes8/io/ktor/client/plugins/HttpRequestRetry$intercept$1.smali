.class final Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpRequestRetry.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpRequestRetry;->l(Lio/ktor/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lat/n<",
        "Lqr/h;",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        "Lrs/c<",
        "-",
        "Lio/ktor/client/call/HttpClientCall;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.client.plugins.HttpRequestRetry$intercept$1"
    f = "HttpRequestRetry.kt"
    l = {
        0x12a,
        0x13a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:I

.field n:I

.field o:I

.field private synthetic p:Ljava/lang/Object;

.field synthetic q:Ljava/lang/Object;

.field final synthetic r:Lio/ktor/client/plugins/HttpRequestRetry;

.field final synthetic s:Lio/ktor/client/HttpClient;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/HttpRequestRetry;Lio/ktor/client/HttpClient;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/HttpRequestRetry;",
            "Lio/ktor/client/HttpClient;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->r:Lio/ktor/client/plugins/HttpRequestRetry;

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->s:Lio/ktor/client/HttpClient;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final i(Lqr/h;Lio/ktor/client/request/HttpRequestBuilder;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lqr/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/request/HttpRequestBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqr/h;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->r:Lio/ktor/client/plugins/HttpRequestRetry;

    .line 4
    .line 5
    iget-object v2, p0, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->s:Lio/ktor/client/HttpClient;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p3}, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;-><init>(Lio/ktor/client/plugins/HttpRequestRetry;Lio/ktor/client/HttpClient;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->p:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, v0, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->q:Ljava/lang/Object;

    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqr/h;

    .line 2
    .line 3
    check-cast p2, Lio/ktor/client/request/HttpRequestBuilder;

    .line 4
    .line 5
    check-cast p3, Lrs/c;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->i(Lqr/h;Lio/ktor/client/request/HttpRequestBuilder;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v0, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->o:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    if-eq v0, v5, :cond_2

    .line 14
    .line 15
    if-ne v0, v3, :cond_1

    .line 16
    .line 17
    iget v0, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->n:I

    .line 18
    .line 19
    iget v6, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->m:I

    .line 20
    .line 21
    iget-object v7, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->l:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v7, Lio/ktor/client/plugins/HttpRequestRetry$d;

    .line 24
    .line 25
    iget-object v8, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->k:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 28
    .line 29
    iget-object v9, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->j:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 32
    .line 33
    iget-object v10, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->i:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v10, Lat/n;

    .line 36
    .line 37
    iget-object v11, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->h:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v11, Lat/n;

    .line 40
    .line 41
    iget-object v12, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->q:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v12, Lio/ktor/client/request/HttpRequestBuilder;

    .line 44
    .line 45
    iget-object v13, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->p:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v13, Lqr/h;

    .line 48
    .line 49
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    move v14, v3

    .line 53
    :cond_0
    move-object v3, v13

    .line 54
    move-object v13, v12

    .line 55
    move-object v12, v11

    .line 56
    move-object v11, v10

    .line 57
    move-object v10, v9

    .line 58
    move-object v9, v8

    .line 59
    move/from16 v22, v6

    .line 60
    .line 61
    move v6, v0

    .line 62
    move-object v0, v7

    .line 63
    move/from16 v7, v22

    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 70
    .line 71
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_2
    iget v6, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->n:I

    .line 76
    .line 77
    iget v7, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->m:I

    .line 78
    .line 79
    iget-object v0, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->l:Ljava/lang/Object;

    .line 80
    .line 81
    move-object v8, v0

    .line 82
    check-cast v8, Lio/ktor/client/request/HttpRequestBuilder;

    .line 83
    .line 84
    iget-object v0, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->k:Ljava/lang/Object;

    .line 85
    .line 86
    move-object v9, v0

    .line 87
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 88
    .line 89
    iget-object v0, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->j:Ljava/lang/Object;

    .line 90
    .line 91
    move-object v10, v0

    .line 92
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 93
    .line 94
    iget-object v0, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->i:Ljava/lang/Object;

    .line 95
    .line 96
    move-object v11, v0

    .line 97
    check-cast v11, Lat/n;

    .line 98
    .line 99
    iget-object v0, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->h:Ljava/lang/Object;

    .line 100
    .line 101
    move-object v12, v0

    .line 102
    check-cast v12, Lat/n;

    .line 103
    .line 104
    iget-object v0, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->q:Ljava/lang/Object;

    .line 105
    .line 106
    move-object v13, v0

    .line 107
    check-cast v13, Lio/ktor/client/request/HttpRequestBuilder;

    .line 108
    .line 109
    iget-object v0, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->p:Ljava/lang/Object;

    .line 110
    .line 111
    move-object v14, v0

    .line 112
    check-cast v14, Lqr/h;

    .line 113
    .line 114
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    move-object/from16 v0, p1

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :catchall_0
    move-exception v0

    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->p:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lqr/h;

    .line 130
    .line 131
    iget-object v6, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->q:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v6, Lio/ktor/client/request/HttpRequestBuilder;

    .line 134
    .line 135
    invoke-virtual {v6}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-static {}, Lio/ktor/client/plugins/c;->f()Lyr/a;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-interface {v7, v8}, Lyr/b;->f(Lyr/a;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    check-cast v7, Lat/n;

    .line 148
    .line 149
    if-nez v7, :cond_4

    .line 150
    .line 151
    iget-object v7, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->r:Lio/ktor/client/plugins/HttpRequestRetry;

    .line 152
    .line 153
    invoke-static {v7}, Lio/ktor/client/plugins/HttpRequestRetry;->g(Lio/ktor/client/plugins/HttpRequestRetry;)Lat/n;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    :cond_4
    invoke-virtual {v6}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-static {}, Lio/ktor/client/plugins/c;->e()Lyr/a;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    invoke-interface {v8, v9}, Lyr/b;->f(Lyr/a;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    check-cast v8, Lat/n;

    .line 170
    .line 171
    if-nez v8, :cond_5

    .line 172
    .line 173
    iget-object v8, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->r:Lio/ktor/client/plugins/HttpRequestRetry;

    .line 174
    .line 175
    invoke-static {v8}, Lio/ktor/client/plugins/HttpRequestRetry;->h(Lio/ktor/client/plugins/HttpRequestRetry;)Lat/n;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    :cond_5
    invoke-virtual {v6}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-static {}, Lio/ktor/client/plugins/c;->b()Lyr/a;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-interface {v9, v10}, Lyr/b;->f(Lyr/a;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    check-cast v9, Ljava/lang/Integer;

    .line 192
    .line 193
    if-eqz v9, :cond_6

    .line 194
    .line 195
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    goto :goto_0

    .line 200
    :cond_6
    iget-object v9, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->r:Lio/ktor/client/plugins/HttpRequestRetry;

    .line 201
    .line 202
    invoke-static {v9}, Lio/ktor/client/plugins/HttpRequestRetry;->e(Lio/ktor/client/plugins/HttpRequestRetry;)I

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    :goto_0
    invoke-virtual {v6}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    invoke-static {}, Lio/ktor/client/plugins/c;->d()Lyr/a;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    invoke-interface {v10, v11}, Lyr/b;->f(Lyr/a;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 219
    .line 220
    if-nez v10, :cond_7

    .line 221
    .line 222
    iget-object v10, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->r:Lio/ktor/client/plugins/HttpRequestRetry;

    .line 223
    .line 224
    invoke-static {v10}, Lio/ktor/client/plugins/HttpRequestRetry;->b(Lio/ktor/client/plugins/HttpRequestRetry;)Lkotlin/jvm/functions/Function2;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    :cond_7
    invoke-virtual {v6}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    invoke-static {}, Lio/ktor/client/plugins/c;->c()Lyr/a;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    invoke-interface {v11, v12}, Lyr/b;->f(Lyr/a;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 241
    .line 242
    if-nez v11, :cond_8

    .line 243
    .line 244
    iget-object v11, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->r:Lio/ktor/client/plugins/HttpRequestRetry;

    .line 245
    .line 246
    invoke-static {v11}, Lio/ktor/client/plugins/HttpRequestRetry;->f(Lio/ktor/client/plugins/HttpRequestRetry;)Lkotlin/jvm/functions/Function2;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    :cond_8
    const/4 v12, 0x0

    .line 251
    move-object v14, v0

    .line 252
    move-object v13, v6

    .line 253
    move v6, v9

    .line 254
    move-object v9, v11

    .line 255
    const/4 v0, 0x0

    .line 256
    move-object v11, v8

    .line 257
    move/from16 v22, v12

    .line 258
    .line 259
    move-object v12, v7

    .line 260
    move/from16 v7, v22

    .line 261
    .line 262
    :goto_1
    iget-object v8, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->r:Lio/ktor/client/plugins/HttpRequestRetry;

    .line 263
    .line 264
    invoke-static {v8, v13}, Lio/ktor/client/plugins/HttpRequestRetry;->i(Lio/ktor/client/plugins/HttpRequestRetry;Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    if-eqz v0, :cond_9

    .line 269
    .line 270
    :try_start_1
    new-instance v15, Lio/ktor/client/plugins/HttpRequestRetry$b;

    .line 271
    .line 272
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRequestRetry$d;->c()Ltr/c;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRequestRetry$d;->a()Ljava/lang/Throwable;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRequestRetry$d;->d()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    invoke-direct {v15, v13, v3, v4, v0}, Lio/ktor/client/plugins/HttpRequestRetry$b;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Ltr/c;Ljava/lang/Throwable;I)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v9, v15, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    :cond_9
    iput-object v14, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->p:Ljava/lang/Object;

    .line 291
    .line 292
    iput-object v13, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->q:Ljava/lang/Object;

    .line 293
    .line 294
    iput-object v12, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->h:Ljava/lang/Object;

    .line 295
    .line 296
    iput-object v11, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->i:Ljava/lang/Object;

    .line 297
    .line 298
    iput-object v10, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->j:Ljava/lang/Object;

    .line 299
    .line 300
    iput-object v9, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->k:Ljava/lang/Object;

    .line 301
    .line 302
    iput-object v8, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->l:Ljava/lang/Object;

    .line 303
    .line 304
    iput v7, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->m:I

    .line 305
    .line 306
    iput v6, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->n:I

    .line 307
    .line 308
    iput v5, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->o:I

    .line 309
    .line 310
    invoke-interface {v14, v8, v1}, Lqr/h;->a(Lio/ktor/client/request/HttpRequestBuilder;Lrs/c;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    if-ne v0, v2, :cond_a

    .line 315
    .line 316
    return-object v2

    .line 317
    :cond_a
    :goto_2
    check-cast v0, Lio/ktor/client/call/HttpClientCall;

    .line 318
    .line 319
    iget-object v3, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->r:Lio/ktor/client/plugins/HttpRequestRetry;

    .line 320
    .line 321
    invoke-static {v3, v7, v6, v12, v0}, Lio/ktor/client/plugins/HttpRequestRetry;->j(Lio/ktor/client/plugins/HttpRequestRetry;IILat/n;Lio/ktor/client/call/HttpClientCall;)Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    if-nez v3, :cond_b

    .line 326
    .line 327
    return-object v0

    .line 328
    :cond_b
    new-instance v3, Lio/ktor/client/plugins/HttpRequestRetry$d;

    .line 329
    .line 330
    add-int/lit8 v7, v7, 0x1

    .line 331
    .line 332
    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    const/4 v4, 0x0

    .line 337
    invoke-direct {v3, v8, v7, v0, v4}, Lio/ktor/client/plugins/HttpRequestRetry$d;-><init>(Lio/ktor/client/request/HttpRequestBuilder;ILtr/c;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    .line 339
    .line 340
    move v0, v6

    .line 341
    move v6, v7

    .line 342
    move-object v8, v9

    .line 343
    move-object v9, v10

    .line 344
    move-object v10, v11

    .line 345
    move-object v11, v12

    .line 346
    move-object v12, v13

    .line 347
    move-object v13, v14

    .line 348
    const/4 v4, 0x0

    .line 349
    :goto_3
    move-object v7, v3

    .line 350
    goto :goto_5

    .line 351
    :goto_4
    iget-object v3, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->r:Lio/ktor/client/plugins/HttpRequestRetry;

    .line 352
    .line 353
    move-object/from16 v16, v3

    .line 354
    .line 355
    move/from16 v17, v7

    .line 356
    .line 357
    move/from16 v18, v6

    .line 358
    .line 359
    move-object/from16 v19, v11

    .line 360
    .line 361
    move-object/from16 v20, v8

    .line 362
    .line 363
    move-object/from16 v21, v0

    .line 364
    .line 365
    invoke-static/range {v16 .. v21}, Lio/ktor/client/plugins/HttpRequestRetry;->k(Lio/ktor/client/plugins/HttpRequestRetry;IILat/n;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Throwable;)Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-eqz v3, :cond_c

    .line 370
    .line 371
    new-instance v3, Lio/ktor/client/plugins/HttpRequestRetry$d;

    .line 372
    .line 373
    add-int/lit8 v7, v7, 0x1

    .line 374
    .line 375
    const/4 v4, 0x0

    .line 376
    invoke-direct {v3, v8, v7, v4, v0}, Lio/ktor/client/plugins/HttpRequestRetry$d;-><init>(Lio/ktor/client/request/HttpRequestBuilder;ILtr/c;Ljava/lang/Throwable;)V

    .line 377
    .line 378
    .line 379
    move v0, v6

    .line 380
    move v6, v7

    .line 381
    move-object v8, v9

    .line 382
    move-object v9, v10

    .line 383
    move-object v10, v11

    .line 384
    move-object v11, v12

    .line 385
    move-object v12, v13

    .line 386
    move-object v13, v14

    .line 387
    goto :goto_3

    .line 388
    :goto_5
    iget-object v3, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->s:Lio/ktor/client/HttpClient;

    .line 389
    .line 390
    invoke-virtual {v3}, Lio/ktor/client/HttpClient;->l()Lvr/b;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    sget-object v14, Lio/ktor/client/plugins/HttpRequestRetry;->g:Lio/ktor/client/plugins/HttpRequestRetry$c;

    .line 395
    .line 396
    invoke-virtual {v14}, Lio/ktor/client/plugins/HttpRequestRetry$c;->c()Lvr/a;

    .line 397
    .line 398
    .line 399
    move-result-object v14

    .line 400
    invoke-virtual {v3, v14, v7}, Lvr/b;->a(Lvr/a;Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    new-instance v3, Lio/ktor/client/plugins/HttpRequestRetry$a;

    .line 404
    .line 405
    invoke-virtual {v7}, Lio/ktor/client/plugins/HttpRequestRetry$d;->b()Lio/ktor/client/request/HttpRequestBuilder;

    .line 406
    .line 407
    .line 408
    move-result-object v14

    .line 409
    invoke-virtual {v7}, Lio/ktor/client/plugins/HttpRequestRetry$d;->c()Ltr/c;

    .line 410
    .line 411
    .line 412
    move-result-object v15

    .line 413
    invoke-virtual {v7}, Lio/ktor/client/plugins/HttpRequestRetry$d;->a()Ljava/lang/Throwable;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-direct {v3, v14, v15, v4}, Lio/ktor/client/plugins/HttpRequestRetry$a;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Ltr/c;Ljava/lang/Throwable;)V

    .line 418
    .line 419
    .line 420
    iget-object v4, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->r:Lio/ktor/client/plugins/HttpRequestRetry;

    .line 421
    .line 422
    invoke-static {v4}, Lio/ktor/client/plugins/HttpRequestRetry;->a(Lio/ktor/client/plugins/HttpRequestRetry;)Lkotlin/jvm/functions/Function2;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v14

    .line 430
    invoke-interface {v9, v3, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    iput-object v13, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->p:Ljava/lang/Object;

    .line 435
    .line 436
    iput-object v12, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->q:Ljava/lang/Object;

    .line 437
    .line 438
    iput-object v11, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->h:Ljava/lang/Object;

    .line 439
    .line 440
    iput-object v10, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->i:Ljava/lang/Object;

    .line 441
    .line 442
    iput-object v9, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->j:Ljava/lang/Object;

    .line 443
    .line 444
    iput-object v8, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->k:Ljava/lang/Object;

    .line 445
    .line 446
    iput-object v7, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->l:Ljava/lang/Object;

    .line 447
    .line 448
    iput v6, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->m:I

    .line 449
    .line 450
    iput v0, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->n:I

    .line 451
    .line 452
    const/4 v14, 0x2

    .line 453
    iput v14, v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;->o:I

    .line 454
    .line 455
    invoke-interface {v4, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    if-ne v3, v2, :cond_0

    .line 460
    .line 461
    return-object v2

    .line 462
    :goto_6
    invoke-static {}, Lio/ktor/client/plugins/c;->a()Ldu/a;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    new-instance v8, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string v15, "Retrying request "

    .line 472
    .line 473
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v13}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 477
    .line 478
    .line 479
    move-result-object v15

    .line 480
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v15, " attempt: "

    .line 484
    .line 485
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v8

    .line 495
    invoke-interface {v4, v8}, Ldu/a;->b(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    move/from16 v22, v14

    .line 499
    .line 500
    move-object v14, v3

    .line 501
    move/from16 v3, v22

    .line 502
    .line 503
    goto/16 :goto_1

    .line 504
    .line 505
    :cond_c
    throw v0
.end method
