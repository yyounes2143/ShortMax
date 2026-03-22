.class final Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Coroutines.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/CoroutinesKt;->a(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/b;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/g;
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
    c = "io.ktor.utils.io.CoroutinesKt$launchChannel$job$1"
    f = "Coroutines.kt"
    l = {
        0x93
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Z

.field final synthetic k:Lio/ktor/utils/io/b;

.field final synthetic l:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TS;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic m:Lgt/c0;


# direct methods
.method constructor <init>(ZLio/ktor/utils/io/b;Lkotlin/jvm/functions/Function2;Lgt/c0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/ktor/utils/io/b;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lgt/c0;",
            "Lrs/c<",
            "-",
            "Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->j:Z

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->k:Lio/ktor/utils/io/b;

    .line 4
    .line 5
    iput-object p3, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->l:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iput-object p4, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->m:Lgt/c0;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
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
    new-instance v6, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->j:Z

    .line 4
    .line 5
    iget-object v2, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->k:Lio/ktor/utils/io/b;

    .line 6
    .line 7
    iget-object v3, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->l:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    iget-object v4, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->m:Lgt/c0;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;-><init>(ZLio/ktor/utils/io/b;Lkotlin/jvm/functions/Function2;Lgt/c0;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->i:Ljava/lang/Object;

    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    iget v1, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->h:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->i:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lgt/g0;

    .line 32
    .line 33
    iget-boolean v1, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->j:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->k:Lio/ktor/utils/io/b;

    .line 38
    .line 39
    invoke-interface {p1}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget-object v4, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 44
    .line 45
    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    check-cast v3, Lkotlinx/coroutines/r;

    .line 53
    .line 54
    invoke-interface {v1, v3}, Lio/ktor/utils/io/b;->j(Lkotlinx/coroutines/r;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    new-instance v1, Lio/ktor/utils/io/h;

    .line 58
    .line 59
    iget-object v3, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->k:Lio/ktor/utils/io/b;

    .line 60
    .line 61
    invoke-direct {v1, p1, v3}, Lio/ktor/utils/io/h;-><init>(Lgt/g0;Lio/ktor/utils/io/b;)V

    .line 62
    .line 63
    .line 64
    :try_start_1
    iget-object p1, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->l:Lkotlin/jvm/functions/Function2;

    .line 65
    .line 66
    iput v2, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->h:I

    .line 67
    .line 68
    invoke-interface {p1, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-ne p1, v0, :cond_5

    .line 73
    .line 74
    return-object v0

    .line 75
    :goto_0
    iget-object v0, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->m:Lgt/c0;

    .line 76
    .line 77
    invoke-static {}, Lgt/q0;->d()Lgt/c0;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    iget-object v0, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->m:Lgt/c0;

    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    throw p1

    .line 93
    :cond_4
    :goto_1
    iget-object v0, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;->k:Lio/ktor/utils/io/b;

    .line 94
    .line 95
    invoke-interface {v0, p1}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)Z

    .line 96
    .line 97
    .line 98
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 99
    .line 100
    return-object p1
.end method
