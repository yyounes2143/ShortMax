.class final Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AccountLocalDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.repo.account.AccountLocalDS$save$1"
    f = "AccountLocalDS.kt"
    l = {
        0x2d5
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccountLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountLocalDS.kt\ncom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,719:1\n116#2,11:720\n*S KotlinDebug\n*F\n+ 1 AccountLocalDS.kt\ncom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1\n*L\n83#1:720,11\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I

.field final synthetic k:Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->k:Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

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
    new-instance p1, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->k:Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;-><init>(Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->j:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->i:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->h:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lqt/a;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->k:Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a(Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;)Lqt/a;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->k:Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->h:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->i:Ljava/lang/Object;

    .line 47
    .line 48
    iput v2, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;->j:I

    .line 49
    .line 50
    invoke-interface {v1, v3, p0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-ne v2, v0, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    move-object v0, p1

    .line 58
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b(Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    invoke-interface {v1, v3}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    invoke-interface {v1, v3}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method
