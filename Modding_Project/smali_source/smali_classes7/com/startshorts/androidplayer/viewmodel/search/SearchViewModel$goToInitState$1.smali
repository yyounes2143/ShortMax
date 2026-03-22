.class final Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->D()Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.search.SearchViewModel$goToInitState$1"
    f = "SearchViewModel.kt"
    l = {
        0x66
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
            "Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;->i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;->i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;->h:I

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
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;->h:I

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
    move-result-object v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;->i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/search/d$a;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-direct {v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/search/d$a;-><init>(Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;Z)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;->i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->A(Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;->i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 75
    .line 76
    const-string v2, "goToInitState -> use cached popular list."

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;->i:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/search/d$a;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->g()Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {v2, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/search/d$a;-><init>(Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;Z)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p1
.end method
