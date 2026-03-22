.class public final Lcom/startshorts/androidplayer/repo/event/EventRepo;
.super Ljava/lang/Object;
.source "EventRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/event/EventRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lcom/startshorts/androidplayer/repo/event/EventRemoteDS;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/event/EventRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/event/EventRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/event/EventRepo;->a:Lcom/startshorts/androidplayer/repo/event/EventRepo;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/repo/event/EventRemoteDS;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/event/EventRemoteDS;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/startshorts/androidplayer/repo/event/EventRepo;->b:Lcom/startshorts/androidplayer/repo/event/EventRemoteDS;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()Lcom/startshorts/androidplayer/repo/event/EventRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/event/EventRepo;->b:Lcom/startshorts/androidplayer/repo/event/EventRemoteDS;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/repo/event/EventRepo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v6, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v6, p4

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v7, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v7, p5

    .line 16
    :goto_1
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v8, p6

    .line 21
    invoke-virtual/range {v2 .. v8}, Lcom/startshorts/androidplayer/repo/event/EventRepo;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/r;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$queryEventAdjustTime$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/repo/event/EventRepo$queryEventAdjustTime$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "queryEventAdjustTime"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
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
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    instance-of v3, v2, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;

    .line 13
    .line 14
    iget v4, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->o:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->o:I

    .line 24
    .line 25
    move-object/from16 v4, p0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;

    .line 29
    .line 30
    move-object/from16 v4, p0

    .line 31
    .line 32
    invoke-direct {v3, v4, v2}, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;-><init>(Lcom/startshorts/androidplayer/repo/event/EventRepo;Lrs/c;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v2, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->m:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget v6, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->o:I

    .line 42
    .line 43
    const-string v7, ", ids -> "

    .line 44
    .line 45
    const-string v8, ", reason -> "

    .line 46
    .line 47
    const-string v9, "EventRemote"

    .line 48
    .line 49
    const/4 v10, 0x2

    .line 50
    const/4 v11, 0x1

    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    if-eq v6, v11, :cond_2

    .line 54
    .line 55
    if-ne v6, v10, :cond_1

    .line 56
    .line 57
    iget-object v0, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->l:Ljava/lang/Object;

    .line 58
    .line 59
    iget-object v1, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->k:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    iget-object v5, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->j:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 66
    .line 67
    iget-object v6, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->i:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v6, Ljava/util/List;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->h:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v3, Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_2
    iget-object v0, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->k:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 91
    .line 92
    iget-object v1, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->j:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 95
    .line 96
    iget-object v6, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->i:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v6, Ljava/util/List;

    .line 99
    .line 100
    iget-object v11, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->h:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v11, Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    check-cast v2, Lkotlin/Result;

    .line 108
    .line 109
    invoke-virtual {v2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    move-object v12, v0

    .line 114
    move-object v0, v2

    .line 115
    move-object v15, v6

    .line 116
    move-object v6, v1

    .line 117
    move-object v1, v15

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 123
    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v12, "uploadEvents size -> "

    .line 130
    .line 131
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v2, v9, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sget-object v2, Lcom/startshorts/androidplayer/repo/event/EventRepo;->b:Lcom/startshorts/androidplayer/repo/event/EventRemoteDS;

    .line 161
    .line 162
    iput-object v0, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->h:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object v1, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->i:Ljava/lang/Object;

    .line 165
    .line 166
    move-object/from16 v6, p4

    .line 167
    .line 168
    iput-object v6, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->j:Ljava/lang/Object;

    .line 169
    .line 170
    move-object/from16 v12, p5

    .line 171
    .line 172
    iput-object v12, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->k:Ljava/lang/Object;

    .line 173
    .line 174
    iput v11, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->o:I

    .line 175
    .line 176
    move-object/from16 v11, p2

    .line 177
    .line 178
    invoke-virtual {v2, v11, v3}, Lcom/startshorts/androidplayer/repo/event/EventRemoteDS;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    if-ne v2, v5, :cond_4

    .line 183
    .line 184
    return-object v5

    .line 185
    :cond_4
    move-object v11, v0

    .line 186
    move-object v0, v2

    .line 187
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_8

    .line 192
    .line 193
    move-object v2, v0

    .line 194
    check-cast v2, Lcom/startshorts/androidplayer/bean/event/UploadSupersetEventResult;

    .line 195
    .line 196
    if-eqz v2, :cond_5

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/event/UploadSupersetEventResult;->getDiffTimeLong()J

    .line 199
    .line 200
    .line 201
    move-result-wide v13

    .line 202
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 203
    .line 204
    invoke-virtual {v2, v13, v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->l1(J)V

    .line 205
    .line 206
    .line 207
    :cond_5
    sget-object v2, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 208
    .line 209
    iput-object v11, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->h:Ljava/lang/Object;

    .line 210
    .line 211
    iput-object v1, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->i:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v6, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->j:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v12, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->k:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v0, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->l:Ljava/lang/Object;

    .line 218
    .line 219
    iput v10, v3, Lcom/startshorts/androidplayer/repo/event/EventRepo$uploadEvents$1;->o:I

    .line 220
    .line 221
    invoke-virtual {v2, v1, v3}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->C(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    if-ne v2, v5, :cond_6

    .line 226
    .line 227
    return-object v5

    .line 228
    :cond_6
    move-object v5, v6

    .line 229
    move-object v3, v11

    .line 230
    move-object v6, v1

    .line 231
    move-object v1, v12

    .line 232
    :goto_2
    if-eqz v5, :cond_7

    .line 233
    .line 234
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    :cond_7
    move-object v12, v1

    .line 246
    move-object v11, v3

    .line 247
    move-object v1, v6

    .line 248
    :cond_8
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    if-eqz v0, :cond_9

    .line 253
    .line 254
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 255
    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v3, "uploadEvent size fail -> "

    .line 262
    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v0, v9, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    sget-object v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->o0(Ljava/util/List;)V

    .line 295
    .line 296
    .line 297
    if-eqz v12, :cond_9

    .line 298
    .line 299
    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 303
    .line 304
    return-object v0
.end method
