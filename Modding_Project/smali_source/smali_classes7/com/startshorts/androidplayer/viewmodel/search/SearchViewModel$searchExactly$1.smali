.class final Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->F(Ljava/lang/String;Ljava/lang/Long;)V
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
    c = "com.startshorts.androidplayer.viewmodel.search.SearchViewModel$searchExactly$1"
    f = "SearchViewModel.kt"
    l = {
        0x75,
        0x77
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/Long;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->i:Ljava/lang/Long;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->k:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->i:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->k:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;-><init>(Ljava/lang/Long;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Lkotlin/Result;

    .line 19
    .line 20
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->i:Ljava/lang/Long;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->h:I

    .line 49
    .line 50
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_3

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_3
    :goto_0
    sget-object v4, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->a:Lcom/startshorts/androidplayer/repo/search/SearchRepo;

    .line 58
    .line 59
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->j:Ljava/lang/String;

    .line 60
    .line 61
    sget-object p1, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;->Companion:Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity$Companion;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity$Companion;->getSupportTypes()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity$Companion;->getSupportConditionCodes()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->h:I

    .line 72
    .line 73
    const/4 v6, 0x1

    .line 74
    const/16 v7, 0x14

    .line 75
    .line 76
    move-object v10, p0

    .line 77
    invoke-virtual/range {v4 .. v10}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->i(Ljava/lang/String;IILjava/util/List;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v0, :cond_4

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->k:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 85
    .line 86
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->j:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    move-object v1, p1

    .line 95
    check-cast v1, Lcom/startshorts/androidplayer/bean/search/SearchResult;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getShortPlays()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getMemberInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-nez v2, :cond_5

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-nez v2, :cond_5

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/search/d$b;

    .line 124
    .line 125
    sget-object v2, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->a:Lcom/startshorts/androidplayer/repo/search/SearchRepo;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->g()Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    const/4 v6, 0x0

    .line 132
    const-string v7, "search exactly result is empty"

    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    move-object v4, v1

    .line 136
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;-><init>(Ljava/lang/String;ZLjava/lang/String;ILcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/search/d$g;

    .line 148
    .line 149
    invoke-direct {v2, v5, v1}, Lcom/startshorts/androidplayer/viewmodel/search/d$g;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/search/SearchResult;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->k:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 156
    .line 157
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;->j:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_a

    .line 164
    .line 165
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 166
    .line 167
    if-eqz v1, :cond_7

    .line 168
    .line 169
    move-object v1, p1

    .line 170
    check-cast v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    const/4 v1, 0x0

    .line 174
    :goto_3
    const/4 v2, 0x0

    .line 175
    if-eqz v1, :cond_8

    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isNetworkError()Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-ne v4, v3, :cond_8

    .line 182
    .line 183
    move v6, v3

    .line 184
    goto :goto_4

    .line 185
    :cond_8
    move v6, v2

    .line 186
    :goto_4
    if-eqz v1, :cond_9

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getCode()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    move v8, v1

    .line 193
    goto :goto_5

    .line 194
    :cond_9
    move v8, v2

    .line 195
    :goto_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/search/d$b;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    sget-object p1, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->a:Lcom/startshorts/androidplayer/repo/search/SearchRepo;

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->g()Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    move-object v4, v1

    .line 212
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;-><init>(Ljava/lang/String;ZLjava/lang/String;ILcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 219
    .line 220
    return-object p1
.end method
