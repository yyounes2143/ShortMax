.class final Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverRankingTabViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->F(I)V
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
    c = "com.startshorts.androidplayer.viewmodel.discover.RankingTabViewModel$queryRankingTabData$1"
    f = "DiscoverRankingTabViewModel.kt"
    l = {
        0x34
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:I

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;


# direct methods
.method constructor <init>(ILcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->i:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->j:Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;

    .line 2
    .line 3
    iget v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->i:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->j:Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;-><init>(ILcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 34
    .line 35
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->i:I

    .line 36
    .line 37
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->h:I

    .line 38
    .line 39
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->l(ILrs/c;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->j:Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_7

    .line 53
    .line 54
    move-object v1, p1

    .line 55
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;->getBannerResponseList()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    goto :goto_1

    .line 83
    :cond_5
    move-object v3, v2

    .line 84
    :goto_1
    if-nez v3, :cond_6

    .line 85
    .line 86
    move-object v1, v2

    .line 87
    :cond_6
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->H(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/discover/h$b;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->C()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/discover/h$b;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;->j:Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

    .line 107
    .line 108
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/discover/h$a;

    .line 119
    .line 120
    invoke-static {p1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {v2, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/h$a;-><init>(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p1
.end method
