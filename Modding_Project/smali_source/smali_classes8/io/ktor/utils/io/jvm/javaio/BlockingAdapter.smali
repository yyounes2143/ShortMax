.class abstract Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
.super Ljava/lang/Object;
.source "Blocking.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,316:1\n164#2,4:317\n164#2,4:321\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter\n*L\n209#1:317,4\n285#1:321,4\n*E\n"
    }
.end annotation


# static fields
.field static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private final a:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lrs/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lgt/s0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:I

.field volatile synthetic result:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field volatile synthetic state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "state"

    .line 4
    .line 5
    const-class v2, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/r;)V
    .locals 3
    .param p1    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->a:Lkotlinx/coroutines/r;

    .line 3
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$a;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$a;-><init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)V

    iput-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->b:Lrs/c;

    .line 4
    iput-object p0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 6
    new-instance v2, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$disposable$1;

    invoke-direct {v2, p0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$disposable$1;-><init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)V

    invoke-interface {p1, v2}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->c:Lgt/s0;

    .line 7
    new-instance p1, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$block$1;

    invoke-direct {p1, p0, v1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$block$1;-><init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lrs/c;)V

    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/r;)V

    return-void
.end method

.method public static final synthetic a(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)Lgt/s0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->c:Lgt/s0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)Lrs/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->b:Lrs/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->j(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i(Ljava/lang/Thread;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/c;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->a()Ldu/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "Blocking network thread detected. \nIt can possible lead to a performance decline or even a deadlock.\nPlease make sure you\'re using blocking IO primitives like InputStream and OutputStream only in \nthe context of Dispatchers.IO:\n```\nwithContext(Dispatchers.IO) {\n    myInputStream.read()\n}\n```"

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ldu/a;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    invoke-static {}, Lgt/x0;->b()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 26
    .line 27
    if-ne v2, p1, :cond_2

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    cmp-long v2, v0, v2

    .line 32
    .line 33
    if-lez v2, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/c;->a()Lio/ktor/utils/io/jvm/javaio/b;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2, v0, v1}, Lio/ktor/utils/io/jvm/javaio/b;->a(J)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method

.method private final j(Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v2, v1, Ljava/lang/Thread;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v2, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    move-object v4, v2

    .line 25
    move-object v2, v0

    .line 26
    move-object v0, v4

    .line 27
    :goto_1
    sget-object v3, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    invoke-static {v3, p0, v1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/c;->a()Lio/ktor/utils/io/jvm/javaio/b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1, v2}, Lio/ktor/utils/io/jvm/javaio/b;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_2
    move-object v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "Already suspended or in finished state"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method


# virtual methods
.method protected final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 2
    .line 3
    return-void
.end method

.method protected final e()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->e:I

    .line 2
    .line 3
    return v0
.end method

.method protected final f()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Lkotlinx/coroutines/r;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->a:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract h(Lrs/c;)Ljava/lang/Object;
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
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->c:Lgt/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lgt/s0;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->b:Lrs/c;

    .line 9
    .line 10
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 11
    .line 12
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 13
    .line 14
    const-string v2, "Stream closed"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0, v1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final l(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "jobToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v3, v2, Lrs/c;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any>"

    .line 18
    .line 19
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v1, v2

    .line 23
    check-cast v1, Lrs/c;

    .line 24
    .line 25
    move-object v3, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    instance-of v3, v2, Lkotlin/Unit;

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 32
    .line 33
    return p1

    .line 34
    :cond_2
    instance-of v3, v2, Ljava/lang/Throwable;

    .line 35
    .line 36
    if-nez v3, :cond_6

    .line 37
    .line 38
    instance-of v3, v2, Ljava/lang/Thread;

    .line 39
    .line 40
    if-nez v3, :cond_5

    .line 41
    .line 42
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_4

    .line 47
    .line 48
    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    .line 49
    .line 50
    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 51
    .line 52
    .line 53
    :goto_0
    const-string v4, "when (value) {\n         \u2026Exception()\n            }"

    .line 54
    .line 55
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object v4, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 59
    .line 60
    invoke-static {v4, p0, v2, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {v1, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const-string p1, "thread"

    .line 77
    .line 78
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->i(Ljava/lang/Thread;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 85
    .line 86
    instance-of v0, p1, Ljava/lang/Throwable;

    .line 87
    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    iget p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 91
    .line 92
    return p1

    .line 93
    :cond_3
    check-cast p1, Ljava/lang/Throwable;

    .line 94
    .line 95
    throw p1

    .line 96
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string v0, "Not yet started"

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    const-string v0, "There is already thread owning adapter"

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_6
    check-cast v2, Ljava/lang/Throwable;

    .line 113
    .line 114
    throw v2
.end method

.method public final m([BII)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->d:I

    .line 7
    .line 8
    iput p3, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->e:I

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->l(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method
