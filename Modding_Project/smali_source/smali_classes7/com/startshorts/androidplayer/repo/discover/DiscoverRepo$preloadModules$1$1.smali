.class final Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.repo.discover.DiscoverRepo$preloadModules$1$1"
    f = "DiscoverRepo.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/Object;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;->i:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;->j:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;->i:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;-><init>(Ljava/lang/Object;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->g(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;->i:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;->j:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;

    .line 26
    .line 27
    sget-object v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->d(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;)Lvg/a;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lvg/a;->c()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->getTabResponseList()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v4, v3

    .line 46
    :goto_0
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->d(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;)Lvg/a;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lvg/a;->b()Ljava/util/HashMap;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->getTabPageResponse()Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-object v4, v3

    .line 65
    :goto_1
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 69
    .line 70
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->getTabPageResponse()Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;->getBannerResponseList()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    :cond_2
    invoke-static {v1, v3}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->f(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    sget-object p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;->i:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->e(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 99
    .line 100
    return-object p1

    .line 101
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 104
    .line 105
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method
