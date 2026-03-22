.class final Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS$fetchModuleMore$2"
    f = "DiscoverRemoteDS.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:I

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->k:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->l:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->m:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->k:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->l:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->m:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->invoke(Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->i:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->j:Ljava/lang/String;

    .line 36
    .line 37
    iget v6, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->k:I

    .line 38
    .line 39
    iget-object v7, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->l:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v8, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->m:Ljava/lang/String;

    .line 42
    .line 43
    iput v2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMore$2;->h:I

    .line 44
    .line 45
    move-object v9, p0

    .line 46
    invoke-interface/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->R1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    :goto_0
    return-object p1
.end method
