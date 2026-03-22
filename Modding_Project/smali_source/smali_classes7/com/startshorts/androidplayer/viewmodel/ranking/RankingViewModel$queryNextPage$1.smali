.class final Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RankingViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->E(IIIILjava/lang/Integer;)V
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
    c = "com.startshorts.androidplayer.viewmodel.ranking.RankingViewModel$queryNextPage$1"
    f = "RankingViewModel.kt"
    l = {
        0x3b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:I

.field final synthetic j:Ljava/lang/Integer;

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

.field final synthetic n:I


# direct methods
.method constructor <init>(ILjava/lang/Integer;IILcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "II",
            "Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->i:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->j:Ljava/lang/Integer;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->k:I

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->l:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->m:Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 10
    .line 11
    iput p6, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->n:I

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 15
    .line 16
    .line 17
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->i:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->j:Ljava/lang/Integer;

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->k:I

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->l:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->m:Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 12
    .line 13
    iget v6, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->n:I

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;-><init>(ILjava/lang/Integer;IILcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;ILrs/c;)V

    .line 18
    .line 19
    .line 20
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

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
    sget-object v1, Lcom/startshorts/androidplayer/repo/ranking/RankingRepo;->a:Lcom/startshorts/androidplayer/repo/ranking/RankingRepo;

    .line 34
    .line 35
    iget p1, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->i:I

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->j:Ljava/lang/Integer;

    .line 42
    .line 43
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->k:I

    .line 44
    .line 45
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->l:I

    .line 46
    .line 47
    sget-object v6, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 48
    .line 49
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->r()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->s()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->h:I

    .line 58
    .line 59
    move-object v2, p1

    .line 60
    move-object v6, v7

    .line 61
    move-object v7, v8

    .line 62
    move-object v8, p0

    .line 63
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/repo/ranking/RankingRepo;->a(Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v0, :cond_2

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->m:Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 71
    .line 72
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->k:I

    .line 73
    .line 74
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->n:I

    .line 75
    .line 76
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    move-object v3, p1

    .line 83
    check-cast v3, Ljava/util/List;

    .line 84
    .line 85
    if-nez v3, :cond_3

    .line 86
    .line 87
    new-instance v3, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->C()Lfk/x;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v4, v3, v1}, Lfk/x;->g(Ljava/util/List;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->C()Lfk/x;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lfk/x;->f()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->C()Lfk/x;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lfk/x;->d()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-direct {v4, v2, v3, v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;-><init>(ILjava/util/List;Z)V

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v4}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->m:Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 127
    .line 128
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;->n:I

    .line 129
    .line 130
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_5

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->C()Lfk/x;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lfk/x;->f()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;

    .line 148
    .line 149
    invoke-static {p1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {v3, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;-><init>(ILcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v2, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    return-object p1
.end method
