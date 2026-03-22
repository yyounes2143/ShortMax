.class public final Landroidx/lifecycle/CoroutineLiveData;
.super Landroidx/lifecycle/MediatorLiveData;
.source "CoroutineLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MediatorLiveData<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private blockRunner:Landroidx/lifecycle/BlockRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/BlockRunner<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private emittedSource:Landroidx/lifecycle/EmittedSource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;JLkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/lifecycle/LiveDataScope<",
            "TT;>;-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 4
    sget-object v0, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/r;

    invoke-static {v0}, Lgt/r1;->a(Lkotlinx/coroutines/r;)Lgt/s;

    move-result-object v0

    .line 5
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    move-result-object v1

    invoke-virtual {v1}, Lgt/j1;->m()Lgt/j1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    move-result-object v5

    .line 6
    new-instance p1, Landroidx/lifecycle/BlockRunner;

    .line 7
    new-instance v6, Landroidx/lifecycle/c;

    invoke-direct {v6, p0}, Landroidx/lifecycle/c;-><init>(Landroidx/lifecycle/CoroutineLiveData;)V

    move-object v0, p1

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p2

    .line 8
    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/BlockRunner;-><init>(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/jvm/functions/Function2;JLgt/g0;Lkotlin/jvm/functions/Function0;)V

    .line 9
    iput-object p1, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;JLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 1
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const-wide/16 p2, 0x1388

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/lifecycle/CoroutineLiveData;-><init>(Lkotlin/coroutines/CoroutineContext;JLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/lifecycle/CoroutineLiveData;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic a(Landroidx/lifecycle/CoroutineLiveData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/CoroutineLiveData;->_init_$lambda$0(Landroidx/lifecycle/CoroutineLiveData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final clearSource$lifecycle_livedata_release(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    instance-of v0, p1, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;-><init>(Landroidx/lifecycle/CoroutineLiveData;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Landroidx/lifecycle/CoroutineLiveData;->emittedSource:Landroidx/lifecycle/EmittedSource;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iput v3, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/lifecycle/EmittedSource;->disposeNow(Lrs/c;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-ne p1, v1, :cond_3

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Landroidx/lifecycle/CoroutineLiveData;->emittedSource:Landroidx/lifecycle/EmittedSource;

    .line 68
    .line 69
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p1
.end method

.method public final emitSource$lifecycle_livedata_release(Landroidx/lifecycle/LiveData;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Landroidx/lifecycle/LiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Lrs/c<",
            "-",
            "Lgt/s0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;-><init>(Landroidx/lifecycle/CoroutineLiveData;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object p1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 56
    .line 57
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    iput v4, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroidx/lifecycle/CoroutineLiveData;->clearSource$lifecycle_livedata_release(Lrs/c;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-ne p2, v1, :cond_4

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 76
    iput-object p2, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    iput v3, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    .line 79
    .line 80
    invoke-static {p0, p1, v0}, Landroidx/lifecycle/CoroutineLiveDataKt;->addDisposableSource(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;Lrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-ne p2, v1, :cond_5

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_5
    :goto_2
    check-cast p2, Landroidx/lifecycle/EmittedSource;

    .line 88
    .line 89
    iput-object p2, p0, Landroidx/lifecycle/CoroutineLiveData;->emittedSource:Landroidx/lifecycle/EmittedSource;

    .line 90
    .line 91
    return-object p2
.end method

.method protected onActive()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/MediatorLiveData;->onActive()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/BlockRunner;->maybeRun()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/MediatorLiveData;->onInactive()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/BlockRunner;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
