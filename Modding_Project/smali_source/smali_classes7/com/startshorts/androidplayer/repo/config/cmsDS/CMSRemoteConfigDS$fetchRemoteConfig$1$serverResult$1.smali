.class final Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CMSRemoteConfigDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.config.cmsDS.CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1"
    f = "CMSRemoteConfigDS.kt"
    l = {
        0x3e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;->invoke(Lrs/c;)Ljava/lang/Object;

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
            "Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;->h:I

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
    goto :goto_1

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
    move-result-object p1

    .line 33
    sget-object v1, Lud/b;->a:Lud/b;

    .line 34
    .line 35
    invoke-virtual {v1}, Lud/b;->M0()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getVersionData()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v1, 0x0

    .line 53
    :goto_0
    iput v2, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;->h:I

    .line 54
    .line 55
    invoke-interface {p1, v3, v4, v1, p0}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->J0(JLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v0, :cond_3

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_3
    :goto_1
    return-object p1
.end method
