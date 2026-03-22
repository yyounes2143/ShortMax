.class final Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImmersionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->q0(II)Lkotlinx/coroutines/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodesByShortsId$1"
    f = "ImmersionViewModel.kt"
    l = {
        0x155,
        0x15d
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,782:1\n125#2,13:783\n*S KotlinDebug\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1\n*L\n358#1:783,13\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

.field final synthetic k:I

.field final synthetic l:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;",
            "II",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->k:I

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->l:I

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->k:I

    .line 6
    .line 7
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->l:I

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IILrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v14

    .line 7
    iget v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->i:I

    .line 8
    .line 9
    const-string v1, "HttpLoggingInterceptor"

    .line 10
    .line 11
    const-string v2, "toString(...)"

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x1

    .line 15
    const/16 v5, 0x29

    .line 16
    .line 17
    const-string v13, "app/hiDrama/getDramaIdByshortPlayId"

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-eq v0, v4, :cond_1

    .line 22
    .line 23
    if-ne v0, v3, :cond_0

    .line 24
    .line 25
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    move-object/from16 v20, v13

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move-object/from16 v0, p1

    .line 46
    .line 47
    check-cast v0, Lkotlin/Result;

    .line 48
    .line 49
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_2
    move-object v12, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 59
    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v7, "queryEpisodesByShortsId -> shortsId("

    .line 66
    .line 67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v7, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->k:I

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v0, v6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object v6, Lud/a;->a:Lud/a;

    .line 97
    .line 98
    invoke-virtual {v6, v0}, Lud/a;->B0(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v6, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 102
    .line 103
    iget v7, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->k:I

    .line 104
    .line 105
    invoke-static {v6, v7, v0, v13}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object v6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 109
    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v8, "queryShortIdTraceID -> "

    .line 116
    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v6, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 131
    .line 132
    iget v6, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->k:I

    .line 133
    .line 134
    iput v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->i:I

    .line 135
    .line 136
    invoke-virtual {v0, v6, v15}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->r(ILrs/c;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-ne v0, v14, :cond_2

    .line 141
    .line 142
    return-object v14

    .line 143
    :goto_0
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 144
    .line 145
    iget v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->k:I

    .line 146
    .line 147
    iget v7, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->l:I

    .line 148
    .line 149
    invoke-static {v12}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_6

    .line 154
    .line 155
    move-object v6, v12

    .line 156
    check-cast v6, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult2;

    .line 157
    .line 158
    invoke-static {v6}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-static {v0, v4, v13, v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    if-eqz v6, :cond_5

    .line 166
    .line 167
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult2;->getDramaId()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    if-lez v8, :cond_5

    .line 172
    .line 173
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sget-object v2, Lud/a;->a:Lud/a;

    .line 185
    .line 186
    invoke-virtual {v2, v8}, Lud/a;->C0(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v2, "app/forYou/playSlideV3"

    .line 190
    .line 191
    invoke-static {v0, v4, v8, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 195
    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v10, "queryShortSlidV3TraceID -> "

    .line 202
    .line 203
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-virtual {v2, v1, v8}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v2, "queryEpisodesByShortsId -> episodeId("

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult2;->getDramaId()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult2;->getDramaId()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;)Z

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    iput-object v12, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->h:Ljava/lang/Object;

    .line 252
    .line 253
    iput v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->i:I

    .line 254
    .line 255
    const/4 v1, 0x0

    .line 256
    const/4 v2, 0x0

    .line 257
    const/4 v6, 0x0

    .line 258
    const/16 v8, 0xc

    .line 259
    .line 260
    const/4 v9, 0x0

    .line 261
    const/4 v10, 0x0

    .line 262
    const/16 v16, 0x0

    .line 263
    .line 264
    const/16 v17, 0x0

    .line 265
    .line 266
    const/16 v18, 0xb81

    .line 267
    .line 268
    const/16 v19, 0x0

    .line 269
    .line 270
    move v3, v4

    .line 271
    move v4, v5

    .line 272
    move v5, v6

    .line 273
    move v6, v8

    .line 274
    move v8, v9

    .line 275
    move-object v9, v10

    .line 276
    move/from16 v10, v16

    .line 277
    .line 278
    move-object/from16 v16, v12

    .line 279
    .line 280
    move/from16 v12, v17

    .line 281
    .line 282
    move-object/from16 v20, v13

    .line 283
    .line 284
    move-object/from16 v13, p0

    .line 285
    .line 286
    move-object/from16 v21, v14

    .line 287
    .line 288
    move/from16 v14, v18

    .line 289
    .line 290
    move-object/from16 v15, v19

    .line 291
    .line 292
    invoke-static/range {v0 .. v15}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->m0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    move-object/from16 v1, v21

    .line 297
    .line 298
    if-ne v0, v1, :cond_4

    .line 299
    .line 300
    return-object v1

    .line 301
    :cond_4
    move-object/from16 v0, v16

    .line 302
    .line 303
    :goto_1
    move-object v12, v0

    .line 304
    move-object/from16 v2, v20

    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_5
    move-object/from16 v16, v12

    .line 308
    .line 309
    move-object/from16 v20, v13

    .line 310
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v2, "queryEpisodeIdByShortsId("

    .line 317
    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    new-instance v8, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 332
    .line 333
    const v2, 0x15f90

    .line 334
    .line 335
    .line 336
    invoke-direct {v8, v2, v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const/4 v10, 0x4

    .line 340
    const/4 v11, 0x0

    .line 341
    const/4 v9, 0x0

    .line 342
    move-object v6, v0

    .line 343
    move v7, v4

    .line 344
    invoke-static/range {v6 .. v11}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    move-object/from16 v2, v20

    .line 348
    .line 349
    invoke-static {v0, v4, v2, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILjava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 353
    .line 354
    move-object/from16 v12, v16

    .line 355
    .line 356
    :goto_2
    move-object/from16 v0, p0

    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_6
    move-object/from16 v16, v12

    .line 360
    .line 361
    move-object v2, v13

    .line 362
    goto :goto_2

    .line 363
    :goto_3
    iget-object v1, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 364
    .line 365
    iget v9, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;->k:I

    .line 366
    .line 367
    invoke-static {v12}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    if-eqz v3, :cond_9

    .line 372
    .line 373
    instance-of v4, v3, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 374
    .line 375
    if-eqz v4, :cond_7

    .line 376
    .line 377
    move-object v4, v3

    .line 378
    check-cast v4, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 379
    .line 380
    :goto_4
    move-object v10, v4

    .line 381
    goto :goto_5

    .line 382
    :cond_7
    const/4 v4, 0x0

    .line 383
    goto :goto_4

    .line 384
    :goto_5
    if-nez v10, :cond_8

    .line 385
    .line 386
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 387
    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    const-string v4, "onResponseFailure exception -> "

    .line 394
    .line 395
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v3, ", exception must not be null"

    .line 406
    .line 407
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    const-string v3, "ApiBuilder"

    .line 415
    .line 416
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    goto :goto_6

    .line 420
    :cond_8
    const/4 v7, 0x4

    .line 421
    const/4 v8, 0x0

    .line 422
    const/4 v6, 0x0

    .line 423
    move-object v3, v1

    .line 424
    move v4, v9

    .line 425
    move-object v5, v10

    .line 426
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 430
    .line 431
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    invoke-virtual {v3, v4, v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->l0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-static {v1, v9, v2, v3}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILjava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :cond_9
    :goto_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 446
    .line 447
    return-object v1
.end method
