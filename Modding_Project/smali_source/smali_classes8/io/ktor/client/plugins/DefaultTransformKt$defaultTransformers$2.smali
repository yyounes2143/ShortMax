.class final Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultTransform.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultTransformKt;->b(Lio/ktor/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lat/n<",
        "Lds/c<",
        "Ltr/d;",
        "Lio/ktor/client/call/HttpClientCall;",
        ">;",
        "Ltr/d;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.client.plugins.DefaultTransformKt$defaultTransformers$2"
    f = "DefaultTransform.kt"
    l = {
        0x44,
        0x48,
        0x48,
        0x4e,
        0x4e,
        0x52,
        0x5a,
        0x74,
        0x79
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDefaultTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultTransform.kt\nio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I

.field private synthetic k:Ljava/lang/Object;

.field synthetic l:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final i(Lds/c;Ltr/d;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lds/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltr/d;
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
            "Lds/c<",
            "Ltr/d;",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;",
            "Ltr/d;",
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
    new-instance v0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, v0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lds/c;

    .line 2
    .line 3
    check-cast p2, Ltr/d;

    .line 4
    .line 5
    check-cast p3, Lrs/c;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->i(Lds/c;Ltr/d;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    iget v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->j:I

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v9, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :pswitch_0
    iget-object v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Les/a;

    .line 26
    .line 27
    iget-object v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lds/c;

    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    move-object v4, v0

    .line 35
    move-object/from16 v0, p1

    .line 36
    .line 37
    goto/16 :goto_e

    .line 38
    .line 39
    :pswitch_1
    iget-object v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Les/a;

    .line 42
    .line 43
    iget-object v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lds/c;

    .line 46
    .line 47
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object v4, v0

    .line 51
    move-object/from16 v0, p1

    .line 52
    .line 53
    goto/16 :goto_c

    .line 54
    .line 55
    :pswitch_2
    iget-object v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Les/a;

    .line 58
    .line 59
    iget-object v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Lds/c;

    .line 62
    .line 63
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object v14, v0

    .line 67
    move-object/from16 v0, p1

    .line 68
    .line 69
    goto/16 :goto_b

    .line 70
    .line 71
    :pswitch_3
    iget-object v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->h:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Ltr/c;

    .line 74
    .line 75
    iget-object v2, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Les/a;

    .line 78
    .line 79
    iget-object v3, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v3, Lds/c;

    .line 82
    .line 83
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    move-object v14, v2

    .line 87
    move-object v15, v3

    .line 88
    move-object v2, v0

    .line 89
    move-object/from16 v0, p1

    .line 90
    .line 91
    goto/16 :goto_8

    .line 92
    .line 93
    :pswitch_4
    iget-object v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Les/a;

    .line 96
    .line 97
    iget-object v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v1, Lds/c;

    .line 100
    .line 101
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object v2, v0

    .line 105
    move-object/from16 v0, p1

    .line 106
    .line 107
    goto/16 :goto_7

    .line 108
    .line 109
    :pswitch_5
    iget-object v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->i:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Les/a;

    .line 112
    .line 113
    iget-object v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->h:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v1, Lds/c;

    .line 116
    .line 117
    iget-object v2, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v2, Les/a;

    .line 120
    .line 121
    iget-object v3, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v3, Lds/c;

    .line 124
    .line 125
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    move-object v14, v0

    .line 129
    move-object v15, v3

    .line 130
    move-object/from16 v0, p1

    .line 131
    .line 132
    goto/16 :goto_6

    .line 133
    .line 134
    :pswitch_6
    iget-object v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Les/a;

    .line 137
    .line 138
    iget-object v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v1, Lds/c;

    .line 141
    .line 142
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    move-object v2, v0

    .line 146
    move-object/from16 v0, p1

    .line 147
    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :pswitch_7
    iget-object v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->i:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Les/a;

    .line 153
    .line 154
    iget-object v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->h:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v1, Lds/c;

    .line 157
    .line 158
    iget-object v2, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v2, Les/a;

    .line 161
    .line 162
    iget-object v3, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v3, Lds/c;

    .line 165
    .line 166
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    move-object v14, v0

    .line 170
    move-object v15, v3

    .line 171
    move-object/from16 v0, p1

    .line 172
    .line 173
    goto/16 :goto_2

    .line 174
    .line 175
    :pswitch_8
    iget-object v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Les/a;

    .line 178
    .line 179
    iget-object v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v1, Lds/c;

    .line 182
    .line 183
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    move-object v14, v0

    .line 187
    move-object/from16 v0, p1

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 194
    .line 195
    move-object v15, v0

    .line 196
    check-cast v15, Lds/c;

    .line 197
    .line 198
    iget-object v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Ltr/d;

    .line 201
    .line 202
    invoke-virtual {v0}, Ltr/d;->a()Les/a;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    invoke-virtual {v0}, Ltr/d;->b()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    instance-of v2, v0, Lio/ktor/utils/io/ByteReadChannel;

    .line 211
    .line 212
    if-nez v2, :cond_0

    .line 213
    .line 214
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 215
    .line 216
    return-object v0

    .line 217
    :cond_0
    invoke-virtual {v15}, Lds/c;->b()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Lio/ktor/client/call/HttpClientCall;

    .line 222
    .line 223
    invoke-virtual {v2}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v14}, Les/a;->a()Lkotlin/reflect/KClass;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    const-class v4, Lkotlin/Unit;

    .line 232
    .line 233
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-eqz v4, :cond_2

    .line 242
    .line 243
    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    .line 244
    .line 245
    invoke-static {v0}, Lio/ktor/utils/io/ByteReadChannelKt;->a(Lio/ktor/utils/io/ByteReadChannel;)Z

    .line 246
    .line 247
    .line 248
    new-instance v0, Ltr/d;

    .line 249
    .line 250
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 251
    .line 252
    invoke-direct {v0, v14, v2}, Ltr/d;-><init>(Les/a;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    iput-object v15, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 256
    .line 257
    iput-object v14, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 258
    .line 259
    iput v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->j:I

    .line 260
    .line 261
    invoke-virtual {v15, v0, v6}, Lds/c;->d(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    if-ne v0, v7, :cond_1

    .line 266
    .line 267
    return-object v7

    .line 268
    :cond_1
    move-object v1, v15

    .line 269
    :goto_0
    move-object v9, v0

    .line 270
    check-cast v9, Ltr/d;

    .line 271
    .line 272
    :goto_1
    move-object v15, v1

    .line 273
    goto/16 :goto_f

    .line 274
    .line 275
    :cond_2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 276
    .line 277
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_5

    .line 286
    .line 287
    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    .line 288
    .line 289
    iput-object v15, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 290
    .line 291
    iput-object v14, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 292
    .line 293
    iput-object v15, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->h:Ljava/lang/Object;

    .line 294
    .line 295
    iput-object v14, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->i:Ljava/lang/Object;

    .line 296
    .line 297
    const/4 v1, 0x2

    .line 298
    iput v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->j:I

    .line 299
    .line 300
    const-wide/16 v1, 0x0

    .line 301
    .line 302
    const/4 v4, 0x1

    .line 303
    const/4 v5, 0x0

    .line 304
    move-object/from16 v3, p0

    .line 305
    .line 306
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/ByteReadChannel$a;->a(Lio/ktor/utils/io/ByteReadChannel;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    if-ne v0, v7, :cond_3

    .line 311
    .line 312
    return-object v7

    .line 313
    :cond_3
    move-object v2, v14

    .line 314
    move-object v1, v15

    .line 315
    :goto_2
    check-cast v0, Lhs/l;

    .line 316
    .line 317
    const/4 v3, 0x3

    .line 318
    invoke-static {v0, v8, v8, v3, v9}, Lhs/l;->l0(Lhs/l;IIILjava/lang/Object;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    new-instance v4, Ltr/d;

    .line 331
    .line 332
    invoke-direct {v4, v14, v0}, Ltr/d;-><init>(Les/a;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    iput-object v15, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 336
    .line 337
    iput-object v2, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 338
    .line 339
    iput-object v9, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->h:Ljava/lang/Object;

    .line 340
    .line 341
    iput-object v9, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->i:Ljava/lang/Object;

    .line 342
    .line 343
    iput v3, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->j:I

    .line 344
    .line 345
    invoke-virtual {v1, v4, v6}, Lds/c;->d(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    if-ne v0, v7, :cond_4

    .line 350
    .line 351
    return-object v7

    .line 352
    :cond_4
    move-object v1, v15

    .line 353
    :goto_3
    move-object v9, v0

    .line 354
    check-cast v9, Ltr/d;

    .line 355
    .line 356
    :goto_4
    move-object v15, v1

    .line 357
    move-object v14, v2

    .line 358
    goto/16 :goto_f

    .line 359
    .line 360
    :cond_5
    const-class v4, Lhs/j;

    .line 361
    .line 362
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-eqz v4, :cond_6

    .line 371
    .line 372
    move v4, v1

    .line 373
    goto :goto_5

    .line 374
    :cond_6
    const-class v4, Lhs/l;

    .line 375
    .line 376
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    :goto_5
    if-eqz v4, :cond_9

    .line 385
    .line 386
    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    .line 387
    .line 388
    iput-object v15, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 389
    .line 390
    iput-object v14, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 391
    .line 392
    iput-object v15, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->h:Ljava/lang/Object;

    .line 393
    .line 394
    iput-object v14, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->i:Ljava/lang/Object;

    .line 395
    .line 396
    const/4 v1, 0x4

    .line 397
    iput v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->j:I

    .line 398
    .line 399
    const-wide/16 v1, 0x0

    .line 400
    .line 401
    const/4 v4, 0x1

    .line 402
    const/4 v5, 0x0

    .line 403
    move-object/from16 v3, p0

    .line 404
    .line 405
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/ByteReadChannel$a;->a(Lio/ktor/utils/io/ByteReadChannel;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    if-ne v0, v7, :cond_7

    .line 410
    .line 411
    return-object v7

    .line 412
    :cond_7
    move-object v2, v14

    .line 413
    move-object v1, v15

    .line 414
    :goto_6
    new-instance v3, Ltr/d;

    .line 415
    .line 416
    invoke-direct {v3, v14, v0}, Ltr/d;-><init>(Les/a;Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    iput-object v15, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 420
    .line 421
    iput-object v2, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 422
    .line 423
    iput-object v9, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->h:Ljava/lang/Object;

    .line 424
    .line 425
    iput-object v9, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->i:Ljava/lang/Object;

    .line 426
    .line 427
    const/4 v0, 0x5

    .line 428
    iput v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->j:I

    .line 429
    .line 430
    invoke-virtual {v1, v3, v6}, Lds/c;->d(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    if-ne v0, v7, :cond_8

    .line 435
    .line 436
    return-object v7

    .line 437
    :cond_8
    move-object v1, v15

    .line 438
    :goto_7
    move-object v9, v0

    .line 439
    check-cast v9, Ltr/d;

    .line 440
    .line 441
    goto :goto_4

    .line 442
    :cond_9
    const-class v4, [B

    .line 443
    .line 444
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    if-eqz v4, :cond_10

    .line 453
    .line 454
    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    .line 455
    .line 456
    iput-object v15, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 457
    .line 458
    iput-object v14, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 459
    .line 460
    iput-object v2, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->h:Ljava/lang/Object;

    .line 461
    .line 462
    const/4 v3, 0x6

    .line 463
    iput v3, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->j:I

    .line 464
    .line 465
    invoke-static {v0, v6}, Lio/ktor/util/ByteChannelsKt;->a(Lio/ktor/utils/io/ByteReadChannel;Lrs/c;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    if-ne v0, v7, :cond_a

    .line 470
    .line 471
    return-object v7

    .line 472
    :cond_a
    :goto_8
    check-cast v0, [B

    .line 473
    .line 474
    invoke-static {v2}, Lio/ktor/http/d;->b(Lwr/k;)Ljava/lang/Long;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    sget-object v4, Lyr/n;->a:Lyr/n;

    .line 479
    .line 480
    invoke-virtual {v4}, Lyr/n;->a()Z

    .line 481
    .line 482
    .line 483
    move-result v4

    .line 484
    if-nez v4, :cond_b

    .line 485
    .line 486
    invoke-interface {v2}, Lwr/k;->a()Lwr/f;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    sget-object v4, Lwr/i;->a:Lwr/i;

    .line 491
    .line 492
    invoke-virtual {v4}, Lwr/i;->f()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    invoke-interface {v2, v4}, Lyr/p;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    if-nez v2, :cond_b

    .line 501
    .line 502
    move v2, v1

    .line 503
    goto :goto_9

    .line 504
    :cond_b
    move v2, v8

    .line 505
    :goto_9
    invoke-virtual {v15}, Lds/c;->b()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    check-cast v4, Lio/ktor/client/call/HttpClientCall;

    .line 510
    .line 511
    invoke-virtual {v4}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    invoke-interface {v4}, Lsr/b;->getMethod()Lwr/m;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    sget-object v5, Lwr/m;->b:Lwr/m$a;

    .line 520
    .line 521
    invoke-virtual {v5}, Lwr/m$a;->b()Lwr/m;

    .line 522
    .line 523
    .line 524
    move-result-object v5

    .line 525
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v4

    .line 529
    if-eqz v2, :cond_e

    .line 530
    .line 531
    if-nez v4, :cond_e

    .line 532
    .line 533
    if-eqz v3, :cond_e

    .line 534
    .line 535
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 536
    .line 537
    .line 538
    move-result-wide v4

    .line 539
    const-wide/16 v10, 0x0

    .line 540
    .line 541
    cmp-long v2, v4, v10

    .line 542
    .line 543
    if-lez v2, :cond_e

    .line 544
    .line 545
    array-length v2, v0

    .line 546
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 547
    .line 548
    .line 549
    move-result-wide v4

    .line 550
    long-to-int v4, v4

    .line 551
    if-ne v2, v4, :cond_c

    .line 552
    .line 553
    move v8, v1

    .line 554
    :cond_c
    if-eqz v8, :cond_d

    .line 555
    .line 556
    goto :goto_a

    .line 557
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .line 561
    .line 562
    const-string v2, "Expected "

    .line 563
    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v2, ", actual "

    .line 571
    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    array-length v0, v0

    .line 576
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 584
    .line 585
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    throw v1

    .line 593
    :cond_e
    :goto_a
    new-instance v1, Ltr/d;

    .line 594
    .line 595
    invoke-direct {v1, v14, v0}, Ltr/d;-><init>(Les/a;Ljava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    iput-object v15, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 599
    .line 600
    iput-object v14, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 601
    .line 602
    iput-object v9, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->h:Ljava/lang/Object;

    .line 603
    .line 604
    const/4 v0, 0x7

    .line 605
    iput v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->j:I

    .line 606
    .line 607
    invoke-virtual {v15, v1, v6}, Lds/c;->d(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    if-ne v0, v7, :cond_f

    .line 612
    .line 613
    return-object v7

    .line 614
    :cond_f
    move-object v1, v15

    .line 615
    :goto_b
    move-object v9, v0

    .line 616
    check-cast v9, Ltr/d;

    .line 617
    .line 618
    goto/16 :goto_1

    .line 619
    .line 620
    :cond_10
    const-class v1, Lio/ktor/utils/io/ByteReadChannel;

    .line 621
    .line 622
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    if-eqz v1, :cond_12

    .line 631
    .line 632
    invoke-interface {v2}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    sget-object v3, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 637
    .line 638
    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    check-cast v1, Lkotlinx/coroutines/r;

    .line 643
    .line 644
    invoke-static {v1}, Lkotlinx/coroutines/t;->a(Lkotlinx/coroutines/r;)Lgt/s;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    invoke-interface {v2}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 649
    .line 650
    .line 651
    move-result-object v11

    .line 652
    new-instance v13, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;

    .line 653
    .line 654
    invoke-direct {v13, v0, v2, v9}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;-><init>(Ljava/lang/Object;Ltr/c;Lrs/c;)V

    .line 655
    .line 656
    .line 657
    const/4 v0, 0x2

    .line 658
    const/4 v2, 0x0

    .line 659
    const/4 v12, 0x0

    .line 660
    move-object v10, v15

    .line 661
    move-object v4, v14

    .line 662
    move v14, v0

    .line 663
    move-object v5, v15

    .line 664
    move-object v15, v2

    .line 665
    invoke-static/range {v10 .. v15}, Lio/ktor/utils/io/CoroutinesKt;->f(Lgt/g0;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/ktor/utils/io/n;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    new-instance v2, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$2$1;

    .line 670
    .line 671
    invoke-direct {v2, v1}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$2$1;-><init>(Lgt/s;)V

    .line 672
    .line 673
    .line 674
    invoke-interface {v0, v2}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 675
    .line 676
    .line 677
    invoke-interface {v0}, Lio/ktor/utils/io/n;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    new-instance v1, Ltr/d;

    .line 682
    .line 683
    invoke-direct {v1, v4, v0}, Ltr/d;-><init>(Les/a;Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    iput-object v5, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 687
    .line 688
    iput-object v4, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 689
    .line 690
    const/16 v0, 0x8

    .line 691
    .line 692
    iput v0, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->j:I

    .line 693
    .line 694
    invoke-virtual {v5, v1, v6}, Lds/c;->d(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    if-ne v0, v7, :cond_11

    .line 699
    .line 700
    return-object v7

    .line 701
    :cond_11
    move-object v1, v5

    .line 702
    :goto_c
    move-object v9, v0

    .line 703
    check-cast v9, Ltr/d;

    .line 704
    .line 705
    :goto_d
    move-object v15, v1

    .line 706
    move-object v14, v4

    .line 707
    goto :goto_f

    .line 708
    :cond_12
    move-object v4, v14

    .line 709
    move-object v5, v15

    .line 710
    const-class v1, Lwr/o;

    .line 711
    .line 712
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-eqz v1, :cond_14

    .line 721
    .line 722
    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    .line 723
    .line 724
    invoke-static {v0}, Lio/ktor/utils/io/ByteReadChannelKt;->a(Lio/ktor/utils/io/ByteReadChannel;)Z

    .line 725
    .line 726
    .line 727
    new-instance v0, Ltr/d;

    .line 728
    .line 729
    invoke-virtual {v2}, Ltr/c;->e()Lwr/o;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    invoke-direct {v0, v4, v1}, Ltr/d;-><init>(Les/a;Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    iput-object v5, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->k:Ljava/lang/Object;

    .line 737
    .line 738
    iput-object v4, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->l:Ljava/lang/Object;

    .line 739
    .line 740
    const/16 v1, 0x9

    .line 741
    .line 742
    iput v1, v6, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->j:I

    .line 743
    .line 744
    invoke-virtual {v5, v0, v6}, Lds/c;->d(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    if-ne v0, v7, :cond_13

    .line 749
    .line 750
    return-object v7

    .line 751
    :cond_13
    move-object v1, v5

    .line 752
    :goto_e
    move-object v9, v0

    .line 753
    check-cast v9, Ltr/d;

    .line 754
    .line 755
    goto :goto_d

    .line 756
    :cond_14
    move-object v14, v4

    .line 757
    move-object v15, v5

    .line 758
    :goto_f
    if-eqz v9, :cond_15

    .line 759
    .line 760
    invoke-static {}, Lio/ktor/client/plugins/DefaultTransformKt;->a()Ldu/a;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    .line 765
    .line 766
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .line 768
    .line 769
    const-string v2, "Transformed with default transformers response body for "

    .line 770
    .line 771
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v15}, Lds/c;->b()Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    check-cast v2, Lio/ktor/client/call/HttpClientCall;

    .line 779
    .line 780
    invoke-virtual {v2}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 781
    .line 782
    .line 783
    move-result-object v2

    .line 784
    invoke-interface {v2}, Lsr/b;->getUrl()Lio/ktor/http/Url;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    const-string v2, " to "

    .line 792
    .line 793
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v14}, Les/a;->a()Lkotlin/reflect/KClass;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    invoke-interface {v0, v1}, Ldu/a;->b(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    :cond_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 811
    .line 812
    return-object v0

    .line 813
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
