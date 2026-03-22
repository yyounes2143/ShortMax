.class final Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TestPushManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/push/TestPushManager;->b(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.manager.push.TestPushManager$executePushTestTasks$1"
    f = "TestPushManager.kt"
    l = {
        0x31,
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/manager/push/task/PushType;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/push/task/PushType;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->i:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->j:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->i:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;-><init>(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

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
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const-string/jumbo v5, "\u8bf72\u79d2\u5185\u628aapp\u5207\u6362\u5230\u540e\u53f0\uff0c\u5426\u5219push\u4e0d\u89e6\u53d1"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v5, v1, v3, v4}, Lfk/u;->k(Lfk/u;Ljava/lang/String;IILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput v2, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->h:I

    .line 45
    .line 46
    const-wide/16 v1, 0x7d0

    .line 47
    .line 48
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-ne p1, v0, :cond_3

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_3
    :goto_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->i:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->j:Ljava/lang/String;

    .line 60
    .line 61
    iput v3, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;->h:I

    .line 62
    .line 63
    invoke-virtual {p1, v1, v2, p0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v0, :cond_4

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p1
.end method
