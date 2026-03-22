.class public final Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$a;
.super Ljava/lang/Object;
.source "Blocking.kt"

# interfaces
.implements Lrs/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs/c<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,316:1\n175#2,4:317\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1\n*L\n148#1:317,4\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic b:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$a;->b:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->g()Lkotlinx/coroutines/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/e;->a:Lio/ktor/utils/io/jvm/javaio/e;

    .line 13
    .line 14
    invoke-virtual {p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->g()Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lio/ktor/utils/io/jvm/javaio/e;->a:Lio/ktor/utils/io/jvm/javaio/e;

    .line 24
    .line 25
    :goto_0
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$a;->a:Lkotlin/coroutines/CoroutineContext;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$a;->a:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$a;->b:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 10
    .line 11
    :cond_1
    iget-object v2, v1, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v3, v2, Ljava/lang/Thread;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    move v5, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    instance-of v5, v2, Lrs/c;

    .line 21
    .line 22
    :goto_0
    if-eqz v5, :cond_3

    .line 23
    .line 24
    move v5, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_3
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    :goto_1
    if-eqz v5, :cond_7

    .line 31
    .line 32
    sget-object v5, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 33
    .line 34
    invoke-static {v5, v1, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    if-eqz v3, :cond_4

    .line 41
    .line 42
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/c;->a()Lio/ktor/utils/io/jvm/javaio/b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0, v2}, Lio/ktor/utils/io/jvm/javaio/b;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    instance-of v0, v2, Lrs/c;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    check-cast v2, Lrs/c;

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v2, v0}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    instance-of p1, p1, Ljava/util/concurrent/CancellationException;

    .line 84
    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$a;->b:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 88
    .line 89
    invoke-virtual {p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->g()Lkotlinx/coroutines/r;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-static {p1, v0, v4, v0}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$a;->b:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 100
    .line 101
    invoke-static {p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->a(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)Lgt/s0;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-interface {p1}, Lgt/s0;->dispose()V

    .line 108
    .line 109
    .line 110
    :cond_7
    return-void
.end method
