.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverRankingViewPagerItemAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->U(Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;)V
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
    c = "com.startshorts.androidplayer.adapter.discover.DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1"
    f = "DiscoverRankingViewPagerItemAdapter.kt"
    l = {
        0x4f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverRankingViewPagerItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,348:1\n125#2,13:349\n*S KotlinDebug\n*F\n+ 1 DiscoverRankingViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1\n*L\n90#1:349,13\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

.field final synthetic k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;

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
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

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
    iget v0, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->i:I

    .line 8
    .line 9
    const-string v8, ""

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->h:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 19
    .line 20
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object/from16 v1, p1

    .line 24
    .line 25
    check-cast v1, Lkotlin/Result;

    .line 26
    .line 27
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->M(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    sget-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 50
    .line 51
    if-eqz v9, :cond_2

    .line 52
    .line 53
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    :cond_2
    move-object v2, v8

    .line 66
    :cond_3
    iget-object v3, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 67
    .line 68
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->L(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/4 v3, 0x0

    .line 84
    :goto_0
    iput-object v9, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->h:Ljava/lang/Object;

    .line 85
    .line 86
    iput v1, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->i:I

    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    const/16 v5, 0x9

    .line 90
    .line 91
    move-object v1, v2

    .line 92
    move v2, v3

    .line 93
    move v3, v4

    .line 94
    move v4, v5

    .line 95
    move-object/from16 v5, p0

    .line 96
    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->n(Ljava/lang/String;IIILrs/c;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-ne v1, v7, :cond_5

    .line 102
    .line 103
    return-object v7

    .line 104
    :cond_5
    move-object v0, v9

    .line 105
    :goto_1
    iget-object v2, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 106
    .line 107
    iget-object v3, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;

    .line 108
    .line 109
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    const/4 v5, 0x0

    .line 114
    if-eqz v4, :cond_b

    .line 115
    .line 116
    move-object v4, v1

    .line 117
    check-cast v4, Ljava/util/List;

    .line 118
    .line 119
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->L(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingResponseList()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    if-eqz v7, :cond_9

    .line 128
    .line 129
    new-instance v15, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;

    .line 130
    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    move-object v10, v9

    .line 138
    goto :goto_2

    .line 139
    :cond_6
    move-object v10, v5

    .line 140
    :goto_2
    if-eqz v0, :cond_8

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-nez v0, :cond_7

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    move-object v11, v0

    .line 150
    goto :goto_4

    .line 151
    :cond_8
    :goto_3
    move-object v11, v8

    .line 152
    :goto_4
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->L(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->isShowMore()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->L(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->L(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    move-object v9, v15

    .line 181
    move-object v0, v15

    .line 182
    move-object v15, v4

    .line 183
    invoke-direct/range {v9 .. v15}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_9
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->K(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Landroidx/lifecycle/MutableLiveData;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;

    .line 194
    .line 195
    check-cast v3, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;

    .line 196
    .line 197
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    if-nez v4, :cond_a

    .line 202
    .line 203
    new-instance v4, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    :cond_a
    invoke-direct {v2, v3, v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$c;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/util/List;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_b
    iget-object v0, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 215
    .line 216
    iget-object v2, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b;

    .line 217
    .line 218
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    if-eqz v1, :cond_e

    .line 223
    .line 224
    instance-of v3, v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 225
    .line 226
    if-eqz v3, :cond_c

    .line 227
    .line 228
    move-object v5, v1

    .line 229
    check-cast v5, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 230
    .line 231
    :cond_c
    if-nez v5, :cond_d

    .line 232
    .line 233
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 234
    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v3, "onResponseFailure exception -> "

    .line 241
    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v1, ", exception must not be null"

    .line 253
    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    const-string v2, "ApiBuilder"

    .line 262
    .line 263
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_d
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->K(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Landroidx/lifecycle/MutableLiveData;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$a;

    .line 272
    .line 273
    check-cast v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;

    .line 274
    .line 275
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-direct {v1, v2, v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$b$a;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 280
    .line 281
    .line 282
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :cond_e
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 286
    .line 287
    return-object v0
.end method
