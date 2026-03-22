.class final Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImmersionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->p0(III)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodesByPrevEpisodeId$1"
    f = "ImmersionViewModel.kt"
    l = {
        0x19b,
        0x19d
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,782:1\n125#2,13:783\n*S KotlinDebug\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1\n*L\n421#1:783,13\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;",
            "III",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->k:I

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->l:I

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->m:I

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->k:I

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->l:I

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->m:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIILrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

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
    iget v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->i:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->h:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object/from16 v0, p1

    .line 36
    .line 37
    check-cast v0, Lkotlin/Result;

    .line 38
    .line 39
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    move-object v13, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "queryEpisodesByPrevEpisodeId -> shortsId("

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->k:I

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v4, ") episodeId("

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->l:I

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const/16 v4, 0x29

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 88
    .line 89
    iget v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->l:I

    .line 90
    .line 91
    iput v2, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->i:I

    .line 92
    .line 93
    invoke-virtual {v0, v3, v15}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->w(ILrs/c;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-ne v0, v14, :cond_2

    .line 98
    .line 99
    return-object v14

    .line 100
    :goto_0
    iget-object v2, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 101
    .line 102
    iget v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->k:I

    .line 103
    .line 104
    iget v7, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->m:I

    .line 105
    .line 106
    invoke-static {v13}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    move-object v0, v13

    .line 113
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;->getDramId()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-lez v4, :cond_5

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;->getDramId()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    iput-object v13, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->h:Ljava/lang/Object;

    .line 128
    .line 129
    iput v1, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->i:I

    .line 130
    .line 131
    const/4 v1, 0x0

    .line 132
    const/4 v5, 0x0

    .line 133
    const/4 v6, 0x0

    .line 134
    const/16 v8, 0xc

    .line 135
    .line 136
    const/4 v9, 0x0

    .line 137
    const/4 v10, 0x0

    .line 138
    const/4 v11, 0x0

    .line 139
    const/4 v12, 0x0

    .line 140
    const/16 v16, 0x0

    .line 141
    .line 142
    const/16 v17, 0xf81

    .line 143
    .line 144
    const/16 v18, 0x0

    .line 145
    .line 146
    move-object v0, v2

    .line 147
    move v2, v5

    .line 148
    move v5, v6

    .line 149
    move v6, v8

    .line 150
    move v8, v9

    .line 151
    move-object v9, v10

    .line 152
    move v10, v11

    .line 153
    move v11, v12

    .line 154
    move/from16 v12, v16

    .line 155
    .line 156
    move-object/from16 v16, v13

    .line 157
    .line 158
    move-object/from16 v13, p0

    .line 159
    .line 160
    move-object/from16 v19, v14

    .line 161
    .line 162
    move/from16 v14, v17

    .line 163
    .line 164
    move-object/from16 v15, v18

    .line 165
    .line 166
    invoke-static/range {v0 .. v15}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->m0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    move-object/from16 v1, v19

    .line 171
    .line 172
    if-ne v0, v1, :cond_4

    .line 173
    .line 174
    return-object v1

    .line 175
    :cond_4
    move-object/from16 v0, v16

    .line 176
    .line 177
    :goto_1
    move-object v13, v0

    .line 178
    goto :goto_2

    .line 179
    :cond_5
    move-object/from16 v16, v13

    .line 180
    .line 181
    sget-object v0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->Companion:Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;->getUNKNOWN_EXCEPTION()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    const/4 v6, 0x4

    .line 188
    const/4 v7, 0x0

    .line 189
    const/4 v5, 0x0

    .line 190
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 194
    .line 195
    move-object/from16 v13, v16

    .line 196
    .line 197
    :goto_2
    move-object/from16 v0, p0

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_6
    move-object/from16 v16, v13

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :goto_3
    iget-object v1, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 204
    .line 205
    iget v2, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;->k:I

    .line 206
    .line 207
    invoke-static {v13}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    if-eqz v3, :cond_9

    .line 212
    .line 213
    instance-of v4, v3, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 214
    .line 215
    if-eqz v4, :cond_7

    .line 216
    .line 217
    move-object v4, v3

    .line 218
    check-cast v4, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_7
    const/4 v4, 0x0

    .line 222
    :goto_4
    if-nez v4, :cond_8

    .line 223
    .line 224
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 225
    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v4, "onResponseFailure exception -> "

    .line 232
    .line 233
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v3, ", exception must not be null"

    .line 244
    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    const-string v3, "ApiBuilder"

    .line 253
    .line 254
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_8
    const/4 v5, 0x4

    .line 259
    const/4 v6, 0x0

    .line 260
    const/4 v7, 0x0

    .line 261
    move-object v3, v4

    .line 262
    move v4, v7

    .line 263
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_9
    :goto_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 267
    .line 268
    return-object v1
.end method
