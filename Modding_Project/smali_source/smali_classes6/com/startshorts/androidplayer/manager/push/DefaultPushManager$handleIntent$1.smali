.class final Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultPushManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->E(Ljava/lang/String;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.manager.push.DefaultPushManager$handleIntent$1"
    f = "DefaultPushManager.kt"
    l = {
        0xca
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->j:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->j:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->h:I

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->i:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "android.intent.action.TIME_SET"

    .line 30
    .line 31
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    sget-object p1, Lcom/startshorts/androidplayer/repo/event/EventRepo;->a:Lcom/startshorts/androidplayer/repo/event/EventRepo;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/event/EventRepo;->b()Lkotlinx/coroutines/r;

    .line 40
    .line 41
    .line 42
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U()Lkotlinx/coroutines/r;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Y()Lkotlinx/coroutines/r;

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {p1, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s(Lcom/startshorts/androidplayer/manager/event/EventManager;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->w()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->j:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->l(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->j:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 69
    .line 70
    iput v2, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->h:I

    .line 71
    .line 72
    invoke-static {p1, p0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->y(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v0, :cond_3

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;->j:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->x(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p1
.end method
