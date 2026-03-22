.class final Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->B()V
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
    c = "com.startshorts.androidplayer.viewmodel.search.SearchViewModel$fetchPopularAndRanking$1"
    f = "SearchViewModel.kt"
    l = {
        0x54
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;->i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;->i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;->h:I

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
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->a:Lcom/startshorts/androidplayer/repo/search/SearchRepo;

    .line 28
    .line 29
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;->h:I

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->h(Lrs/c;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/Collection;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    xor-int/2addr p1, v2

    .line 45
    sget-object v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->a:Lcom/startshorts/androidplayer/repo/search/SearchRepo;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->g()Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;->i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/d;

    .line 62
    .line 63
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/search/d$a;

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;->i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/search/d$a;

    .line 74
    .line 75
    invoke-direct {v2, v6, p1}, Lcom/startshorts/androidplayer/viewmodel/search/d$a;-><init>(Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;Z)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    instance-of p1, v0, Lcom/startshorts/androidplayer/viewmodel/search/d$b;

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;->i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/search/d$b;

    .line 92
    .line 93
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/d$b;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;->a()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;->c()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;->b()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;->e()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    move-object v1, v7

    .line 112
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;-><init>(Ljava/lang/String;ZLjava/lang/String;ILcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1, v7}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1
.end method
