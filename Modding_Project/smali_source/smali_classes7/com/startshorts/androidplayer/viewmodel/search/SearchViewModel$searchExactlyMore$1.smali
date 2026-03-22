.class final Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->G(Ljava/lang/String;II)V
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
    c = "com.startshorts.androidplayer.viewmodel.search.SearchViewModel$searchExactlyMore$1"
    f = "SearchViewModel.kt"
    l = {
        0x8f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;IILcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->j:I

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->k:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->l:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->j:I

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->k:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->l:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;-><init>(Ljava/lang/String;IILcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->h:I

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
    sget-object v1, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->a:Lcom/startshorts/androidplayer/repo/search/SearchRepo;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->i:Ljava/lang/String;

    .line 36
    .line 37
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->j:I

    .line 38
    .line 39
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->k:I

    .line 40
    .line 41
    sget-object v5, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;->Companion:Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity$Companion;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity$Companion;->getSupportTypes()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity$Companion;->getSupportConditionCodes()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->h:I

    .line 52
    .line 53
    move-object v2, p1

    .line 54
    move-object v5, v6

    .line 55
    move-object v6, v7

    .line 56
    move-object v7, p0

    .line 57
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->i(Ljava/lang/String;IILjava/util/List;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v0, :cond_2

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->l:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->i:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    move-object v2, p1

    .line 75
    check-cast v2, Lcom/startshorts/androidplayer/bean/search/SearchResult;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/search/d$e;

    .line 82
    .line 83
    invoke-direct {v3, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/search/d$e;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/search/SearchResult;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->l:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;->i:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/search/d$c;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {v2, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/search/d$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p1
.end method
