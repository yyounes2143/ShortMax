.class final Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->L(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;III)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.discover.DiscoverViewModel$loadModulesPage$1"
    f = "DiscoverViewModel.kt"
    l = {
        0xc3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:I

.field final synthetic n:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;IIILcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            "Ljava/lang/String;",
            "III",
            "Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->k:I

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->l:I

    .line 8
    .line 9
    iput p5, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->m:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->n:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->k:I

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->l:I

    .line 10
    .line 11
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->m:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->n:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;IIILcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->h:I

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
    goto :goto_1

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
    sget-object v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    const-string p1, ""

    .line 44
    .line 45
    :cond_2
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->j:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v4, 0x0

    .line 61
    :goto_0
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->k:I

    .line 62
    .line 63
    iget v6, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->l:I

    .line 64
    .line 65
    iget v7, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->m:I

    .line 66
    .line 67
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->h:I

    .line 68
    .line 69
    move-object v2, p1

    .line 70
    move-object v8, p0

    .line 71
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->p(Ljava/lang/String;Ljava/lang/String;IIIILrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v0, :cond_4

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->n:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    move-object v1, p1

    .line 87
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->F()Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/discover/b$b;

    .line 94
    .line 95
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/b$b;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;->n:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 102
    .line 103
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->s(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p1
.end method
