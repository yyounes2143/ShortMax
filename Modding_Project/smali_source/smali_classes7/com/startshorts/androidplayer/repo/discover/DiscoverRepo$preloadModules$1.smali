.class final Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->H()V
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
    c = "com.startshorts.androidplayer.repo.discover.DiscoverRepo$preloadModules$1"
    f = "DiscoverRepo.kt"
    l = {
        0xaa,
        0xab
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->j:Ljava/lang/String;

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
    new-instance v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_3

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
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lgt/g0;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast p1, Lkotlin/Result;

    .line 35
    .line 36
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_2
    move-object v4, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->i:Ljava/lang/Object;

    .line 46
    .line 47
    move-object v1, p1

    .line 48
    check-cast v1, Lgt/g0;

    .line 49
    .line 50
    sget-object p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->i:Ljava/lang/Object;

    .line 53
    .line 54
    iput v3, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->h:I

    .line 55
    .line 56
    invoke-virtual {p1, v3, p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->q(ZLrs/c;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-ne p1, v0, :cond_2

    .line 61
    .line 62
    return-object v0

    .line 63
    :goto_0
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 64
    .line 65
    new-instance v7, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->j:Ljava/lang/String;

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-direct {v7, p1, v1, v5}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1$1;-><init>(Ljava/lang/Object;Ljava/lang/String;Lrs/c;)V

    .line 71
    .line 72
    .line 73
    iput-object v5, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->i:Ljava/lang/Object;

    .line 74
    .line 75
    iput v2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;->h:I

    .line 76
    .line 77
    const-string v5, "preloadModules-1"

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v9, 0x2

    .line 81
    const/4 v10, 0x0

    .line 82
    move-object v8, p0

    .line 83
    invoke-static/range {v3 .. v10}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->t(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-ne p1, v0, :cond_4

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p1
.end method
