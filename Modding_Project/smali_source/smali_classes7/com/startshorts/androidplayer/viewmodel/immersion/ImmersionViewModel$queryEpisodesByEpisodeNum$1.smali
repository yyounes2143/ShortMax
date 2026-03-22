.class final Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImmersionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->o0(IIZI)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodesByEpisodeNum$1"
    f = "ImmersionViewModel.kt"
    l = {
        0x12c,
        0x130
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,782:1\n125#2,13:783\n*S KotlinDebug\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1\n*L\n313#1:783,13\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:Z

.field final synthetic n:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIZILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;",
            "IIZI",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->k:I

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->l:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->m:Z

    .line 8
    .line 9
    iput p5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->n:I

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
    .locals 7
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->k:I

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->l:I

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->m:Z

    .line 10
    .line 11
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->n:I

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIZILrs/c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->i:I

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
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->h:Ljava/lang/Object;

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
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "queryEpisodesByEpisodeNum -> shortsId("

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->k:I

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v4, ") episodeNum("

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->l:I

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, ") isMergeShorts("

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-boolean v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->m:Z

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 v4, 0x29

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 98
    .line 99
    iget v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->k:I

    .line 100
    .line 101
    iget v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->l:I

    .line 102
    .line 103
    iput v2, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->i:I

    .line 104
    .line 105
    invoke-virtual {v0, v3, v4, v15}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->q(IILrs/c;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-ne v0, v14, :cond_2

    .line 110
    .line 111
    return-object v14

    .line 112
    :goto_0
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 113
    .line 114
    iget v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->k:I

    .line 115
    .line 116
    iget v7, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->n:I

    .line 117
    .line 118
    iget-boolean v8, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->m:Z

    .line 119
    .line 120
    invoke-static {v13}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    move-object v2, v13

    .line 127
    check-cast v2, Ljava/lang/Number;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    iput-object v13, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->h:Ljava/lang/Object;

    .line 134
    .line 135
    iput v1, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->i:I

    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    const/4 v2, 0x0

    .line 139
    const/4 v5, 0x0

    .line 140
    const/16 v6, 0xc

    .line 141
    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v10, 0x0

    .line 144
    const/4 v11, 0x0

    .line 145
    const/4 v12, 0x0

    .line 146
    const/16 v16, 0xf01

    .line 147
    .line 148
    const/16 v17, 0x0

    .line 149
    .line 150
    move-object/from16 v18, v13

    .line 151
    .line 152
    move-object/from16 v13, p0

    .line 153
    .line 154
    move-object/from16 v19, v14

    .line 155
    .line 156
    move/from16 v14, v16

    .line 157
    .line 158
    move-object/from16 v15, v17

    .line 159
    .line 160
    invoke-static/range {v0 .. v15}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->m0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    move-object/from16 v1, v19

    .line 165
    .line 166
    if-ne v0, v1, :cond_4

    .line 167
    .line 168
    return-object v1

    .line 169
    :cond_4
    move-object/from16 v0, v18

    .line 170
    .line 171
    :goto_1
    move-object v13, v0

    .line 172
    :goto_2
    move-object/from16 v0, p0

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    move-object/from16 v18, v13

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :goto_3
    iget-object v1, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 179
    .line 180
    iget v2, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;->k:I

    .line 181
    .line 182
    invoke-static {v13}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    if-eqz v3, :cond_8

    .line 187
    .line 188
    instance-of v4, v3, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 189
    .line 190
    if-eqz v4, :cond_6

    .line 191
    .line 192
    move-object v4, v3

    .line 193
    check-cast v4, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_6
    const/4 v4, 0x0

    .line 197
    :goto_4
    if-nez v4, :cond_7

    .line 198
    .line 199
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 200
    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v4, "onResponseFailure exception -> "

    .line 207
    .line 208
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v3, ", exception must not be null"

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    const-string v3, "ApiBuilder"

    .line 228
    .line 229
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_7
    const/4 v5, 0x4

    .line 234
    const/4 v6, 0x0

    .line 235
    const/4 v7, 0x0

    .line 236
    move-object v3, v4

    .line 237
    move v4, v7

    .line 238
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_8
    :goto_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 242
    .line 243
    return-object v1
.end method
