.class public final Lio/ktor/utils/io/internal/a;
.super Ljava/lang/Object;
.source "CancellableReusableContinuation.kt"

# interfaces
.implements Lrs/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/internal/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrs/c<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCancellableReusableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableReusableContinuation.kt\nio/ktor/utils/io/internal/CancellableReusableContinuation\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,137:1\n175#2,4:138\n175#2,4:142\n175#2,4:146\n*S KotlinDebug\n*F\n+ 1 CancellableReusableContinuation.kt\nio/ktor/utils/io/internal/CancellableReusableContinuation\n*L\n60#1:138,4\n82#1:142,4\n99#1:146,4\n*E\n"
    }
.end annotation


# static fields
.field private static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic jobCancellationHandler:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    const-class v1, Lio/ktor/utils/io/internal/a;

    .line 4
    .line 5
    const-class v2, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lio/ktor/utils/io/internal/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    const-string v0, "jobCancellationHandler"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lio/ktor/utils/io/internal/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/ktor/utils/io/internal/a;->state:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Lio/ktor/utils/io/internal/a;->jobCancellationHandler:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic a(Lio/ktor/utils/io/internal/a;Lio/ktor/utils/io/internal/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/internal/a;->h(Lio/ktor/utils/io/internal/a$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lio/ktor/utils/io/internal/a;Lkotlinx/coroutines/r;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/internal/a;->j(Lkotlinx/coroutines/r;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h(Lio/ktor/utils/io/internal/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/internal/a<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/internal/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final i(Lkotlin/coroutines/CoroutineContext;)V
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lkotlinx/coroutines/r;

    .line 8
    .line 9
    iget-object v0, p0, Lio/ktor/utils/io/internal/a;->jobCancellationHandler:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lio/ktor/utils/io/internal/a$a;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/a$a;->b()Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    if-ne v0, p1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    if-nez p1, :cond_2

    .line 26
    .line 27
    sget-object p1, Lio/ktor/utils/io/internal/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lio/ktor/utils/io/internal/a$a;

    .line 34
    .line 35
    if-eqz p1, :cond_6

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/a$a;->a()V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    new-instance v0, Lio/ktor/utils/io/internal/a$a;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/internal/a$a;-><init>(Lio/ktor/utils/io/internal/a;Lkotlinx/coroutines/r;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object v1, p0, Lio/ktor/utils/io/internal/a;->jobCancellationHandler:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v2, v1

    .line 49
    check-cast v2, Lio/ktor/utils/io/internal/a$a;

    .line 50
    .line 51
    if-nez v2, :cond_4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/a$a;->b()Lkotlinx/coroutines/r;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-ne v3, p1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/a$a;->a()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_5
    :goto_1
    sget-object v3, Lio/ktor/utils/io/internal/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 65
    .line 66
    invoke-static {v3, p0, v1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/a$a;->a()V

    .line 75
    .line 76
    .line 77
    :cond_6
    :goto_2
    return-void
.end method

.method private final j(Lkotlinx/coroutines/r;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/internal/a;->state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lrs/c;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    return-void

    .line 8
    :cond_1
    move-object v1, v0

    .line 9
    check-cast v1, Lrs/c;

    .line 10
    .line 11
    invoke-interface {v1}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 16
    .line 17
    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eq v2, p1, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    const/4 v2, 0x0

    .line 25
    sget-object v3, Lio/ktor/utils/io/internal/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    invoke-static {v3, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<T of io.ktor.utils.io.internal.CancellableReusableContinuation>"

    .line 34
    .line 35
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {v1, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lio/ktor/utils/io/internal/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lio/ktor/utils/io/internal/a$a;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/a$a;->a()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cause"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lio/ktor/utils/io/internal/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lio/ktor/utils/io/internal/a$a;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/a$a;->a()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final g(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "actual"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/internal/a;->state:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lio/ktor/utils/io/internal/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Lio/ktor/utils/io/internal/a;->i(Lkotlin/coroutines/CoroutineContext;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    sget-object v2, Lio/ktor/utils/io/internal/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 32
    .line 33
    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    instance-of p1, v0, Ljava/lang/Throwable;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    const-string p1, "null cannot be cast to non-null type T of io.ktor.utils.io.internal.CancellableReusableContinuation"

    .line 44
    .line 45
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    check-cast v0, Ljava/lang/Throwable;

    .line 50
    .line 51
    throw v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/a;->state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lrs/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lrs/c;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    :cond_1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 20
    .line 21
    :cond_2
    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/internal/a;->state:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    move-object v1, p1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    instance-of v1, v0, Lrs/c;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :cond_2
    :goto_0
    sget-object v2, Lio/ktor/utils/io/internal/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 22
    .line 23
    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    instance-of v1, v0, Lrs/c;

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    check-cast v0, Lrs/c;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void
.end method
