.class final Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ShortsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->R(IIZ)V
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
    c = "com.startshorts.androidplayer.viewmodel.shorts.ShortsViewModel$loadEpisodes$2"
    f = "ShortsViewModel.kt"
    l = {
        0x6b,
        0x6e,
        0x6f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Z

.field k:I

.field l:I

.field m:I

.field private synthetic n:Ljava/lang/Object;

.field final synthetic o:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic p:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

.field final synthetic q:Z

.field final synthetic r:I

.field final synthetic s:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;ZIILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;",
            "ZII",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->o:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->p:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->q:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->r:I

    .line 8
    .line 9
    iput p5, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->s:I

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 8
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
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->o:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->p:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->q:Z

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->r:I

    .line 10
    .line 11
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->s:I

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;ZIILrs/c;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v7, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->n:Ljava/lang/Object;

    .line 19
    .line 20
    return-object v7
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v9

    .line 7
    iget v0, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->m:I

    .line 8
    .line 9
    const/4 v7, 0x3

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    if-eq v0, v2, :cond_2

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    if-ne v0, v7, :cond_0

    .line 19
    .line 20
    iget-object v0, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->n:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    iget v0, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->l:I

    .line 36
    .line 37
    iget v1, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->k:I

    .line 38
    .line 39
    iget-boolean v2, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->j:Z

    .line 40
    .line 41
    iget-object v3, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->i:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 44
    .line 45
    iget-object v4, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->h:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v5, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->n:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Lgt/g0;

    .line 50
    .line 51
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v6, p1

    .line 55
    .line 56
    check-cast v6, Lkotlin/Result;

    .line 57
    .line 58
    invoke-virtual {v6}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    move/from16 v21, v0

    .line 63
    .line 64
    move/from16 v20, v1

    .line 65
    .line 66
    move/from16 v19, v2

    .line 67
    .line 68
    move-object/from16 v17, v3

    .line 69
    .line 70
    move-object v11, v4

    .line 71
    move-object v1, v5

    .line 72
    move-object/from16 v18, v6

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_2
    iget-object v0, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->n:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lgt/g0;

    .line 79
    .line 80
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object/from16 v2, p1

    .line 84
    .line 85
    check-cast v2, Lkotlin/Result;

    .line 86
    .line 87
    invoke-virtual {v2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    :cond_3
    move-object v10, v0

    .line 92
    move-object v11, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->n:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lgt/g0;

    .line 100
    .line 101
    sget-object v3, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 102
    .line 103
    iput-object v0, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->n:Ljava/lang/Object;

    .line 104
    .line 105
    iput v2, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->m:I

    .line 106
    .line 107
    invoke-virtual {v3, v8}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->n(Lrs/c;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-ne v2, v9, :cond_3

    .line 112
    .line 113
    return-object v9

    .line 114
    :goto_0
    iget-object v0, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->o:Lkotlin/jvm/internal/Ref$IntRef;

    .line 115
    .line 116
    iget-object v12, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->p:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 117
    .line 118
    iget-boolean v13, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->q:Z

    .line 119
    .line 120
    iget v14, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->r:I

    .line 121
    .line 122
    iget v15, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->s:I

    .line 123
    .line 124
    invoke-static {v11}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_7

    .line 129
    .line 130
    move-object v2, v11

    .line 131
    check-cast v2, Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    .line 135
    .line 136
    sget-object v2, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 137
    .line 138
    iget v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 139
    .line 140
    invoke-static {v12}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->g()Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->e()Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    iput-object v10, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->n:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v11, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->h:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object v12, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->i:Ljava/lang/Object;

    .line 157
    .line 158
    iput-boolean v13, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->j:Z

    .line 159
    .line 160
    iput v14, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->k:I

    .line 161
    .line 162
    iput v15, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->l:I

    .line 163
    .line 164
    iput v1, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->m:I

    .line 165
    .line 166
    const/16 v16, 0xa

    .line 167
    .line 168
    move-object v0, v2

    .line 169
    move v1, v3

    .line 170
    move/from16 v2, v16

    .line 171
    .line 172
    move v3, v4

    .line 173
    move-object v4, v5

    .line 174
    move-object v5, v6

    .line 175
    move-object/from16 v6, p0

    .line 176
    .line 177
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->r(IIZLjava/lang/Integer;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    if-ne v6, v9, :cond_5

    .line 182
    .line 183
    return-object v9

    .line 184
    :cond_5
    move-object/from16 v18, v6

    .line 185
    .line 186
    move-object v1, v10

    .line 187
    move-object/from16 v17, v12

    .line 188
    .line 189
    move/from16 v19, v13

    .line 190
    .line 191
    move/from16 v20, v14

    .line 192
    .line 193
    move/from16 v21, v15

    .line 194
    .line 195
    :goto_1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 196
    .line 197
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2$1$1;

    .line 198
    .line 199
    const/16 v22, 0x0

    .line 200
    .line 201
    move-object/from16 v16, v4

    .line 202
    .line 203
    invoke-direct/range {v16 .. v22}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2$1$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Ljava/lang/Object;ZIILrs/c;)V

    .line 204
    .line 205
    .line 206
    iput-object v11, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->n:Ljava/lang/Object;

    .line 207
    .line 208
    const/4 v2, 0x0

    .line 209
    iput-object v2, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->h:Ljava/lang/Object;

    .line 210
    .line 211
    iput-object v2, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->i:Ljava/lang/Object;

    .line 212
    .line 213
    iput v7, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->m:I

    .line 214
    .line 215
    const-string v2, "handleRequestResult"

    .line 216
    .line 217
    const/4 v3, 0x0

    .line 218
    const/4 v6, 0x2

    .line 219
    const/4 v7, 0x0

    .line 220
    move-object/from16 v5, p0

    .line 221
    .line 222
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->t(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-ne v0, v9, :cond_6

    .line 227
    .line 228
    return-object v9

    .line 229
    :cond_6
    move-object v0, v11

    .line 230
    :goto_2
    move-object v11, v0

    .line 231
    :cond_7
    iget-object v0, v8, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;->p:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 232
    .line 233
    invoke-static {v11}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-eqz v1, :cond_8

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->s(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 244
    .line 245
    .line 246
    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 247
    .line 248
    return-object v0
.end method
