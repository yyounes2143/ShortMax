.class final Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CoroutineTaskManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;->e(Ljava/lang/Runnable;J)V
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
    c = "io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager$scheduleTask$1"
    f = "CoroutineTaskManager.kt"
    l = {
        0x1e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:J

.field final synthetic k:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

.field final synthetic l:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(JLio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;Ljava/lang/Runnable;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;",
            "Ljava/lang/Runnable;",
            "Lrs/c<",
            "-",
            "Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->j:J

    .line 2
    .line 3
    iput-object p3, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->k:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    .line 4
    .line 5
    iput-object p4, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->l:Ljava/lang/Runnable;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->j:J

    .line 4
    .line 5
    iget-object v3, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->k:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    .line 6
    .line 7
    iget-object v4, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->l:Ljava/lang/Runnable;

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;-><init>(JLio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;Ljava/lang/Runnable;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v6, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->i:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v6
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->h:I

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
    iget-object v0, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->i:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lgt/g0;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->i:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lgt/g0;

    .line 34
    .line 35
    iget-wide v3, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->j:J

    .line 36
    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    cmp-long v1, v3, v5

    .line 40
    .line 41
    if-lez v1, :cond_2

    .line 42
    .line 43
    iput-object p1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->i:Ljava/lang/Object;

    .line 44
    .line 45
    iput v2, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->h:I

    .line 46
    .line 47
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->l:Ljava/lang/Runnable;

    .line 55
    .line 56
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    :catchall_0
    iget-object p1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->k:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    .line 62
    .line 63
    iget-object v0, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$1;->l:Ljava/lang/Runnable;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcr/a;->cancel(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p1
.end method
