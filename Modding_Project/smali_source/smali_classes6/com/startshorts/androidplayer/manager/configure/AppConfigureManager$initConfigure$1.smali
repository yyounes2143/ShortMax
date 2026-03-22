.class final Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppConfigureManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;->b(Landroid/content/Context;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$initConfigure$1"
    f = "AppConfigureManager.kt"
    l = {
        0x9a,
        0x9c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;->i:Landroid/content/Context;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;->i:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;-><init>(Landroid/content/Context;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;->i:Landroid/content/Context;

    .line 37
    .line 38
    iput v3, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;->h:I

    .line 39
    .line 40
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;->a(Landroid/content/Context;ZLrs/c;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_3
    :goto_0
    sget-object p1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->s()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    iput v2, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$initConfigure$1;->h:I

    .line 56
    .line 57
    const-string v1, "AppConfigureManager:initConfigure"

    .line 58
    .line 59
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->m(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-ne p1, v0, :cond_4

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_4
    :goto_1
    sget-object p1, Lud/b;->a:Lud/b;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Lud/b;->J3(Z)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->c0()V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p1
.end method
