.class public Lot/e;
.super Lgt/b1;
.source "Dispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final b:I

.field private final c:I

.field private final d:J

.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lgt/b1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lot/e;->b:I

    .line 5
    .line 6
    iput p2, p0, Lot/e;->c:I

    .line 7
    .line 8
    iput-wide p3, p0, Lot/e;->d:J

    .line 9
    .line 10
    iput-object p5, p0, Lot/e;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {p0}, Lot/e;->o()Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lot/e;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 17
    .line 18
    return-void
.end method

.method private final o()Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .locals 7

    .line 1
    new-instance v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    .line 3
    iget v1, p0, Lot/e;->b:I

    .line 4
    .line 5
    iget v2, p0, Lot/e;->c:I

    .line 6
    .line 7
    iget-wide v3, p0, Lot/e;->d:J

    .line 8
    .line 9
    iget-object v5, p0, Lot/e;->e:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v6
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lot/e;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v1, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;ZZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lot/e;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    .line 3
    const/4 v4, 0x2

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    move-object v1, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;ZZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public m()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lot/e;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(Ljava/lang/Runnable;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lot/e;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o(Ljava/lang/Runnable;ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
