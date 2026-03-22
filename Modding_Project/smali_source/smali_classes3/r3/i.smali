.class public final Lr3/i;
.super Ljava/lang/Object;
.source "BufferedDiskCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/i$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBufferedDiskCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedDiskCache.kt\ncom/facebook/imagepipeline/cache/BufferedDiskCache\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,392:1\n40#2,2:393\n44#2,5:396\n40#2,9:401\n1#3:395\n*S KotlinDebug\n*F\n+ 1 BufferedDiskCache.kt\ncom/facebook/imagepipeline/cache/BufferedDiskCache\n*L\n115#1:393,2\n115#1:396,5\n234#1:401,9\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Lr3/i$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lg2/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ln2/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ln2/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lr3/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lr3/b0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr3/i$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lr3/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lr3/i;->h:Lr3/i$a;

    .line 8
    .line 9
    const-class v0, Lr3/i;

    .line 10
    .line 11
    sput-object v0, Lr3/i;->i:Ljava/lang/Class;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lg2/e;Ln2/g;Ln2/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lr3/s;)V
    .locals 1
    .param p1    # Lg2/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln2/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln2/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lr3/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fileCache"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pooledByteBufferFactory"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "pooledByteStreams"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "readExecutor"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "writeExecutor"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "imageCacheStatsTracker"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lr3/i;->a:Lg2/e;

    .line 35
    .line 36
    iput-object p2, p0, Lr3/i;->b:Ln2/g;

    .line 37
    .line 38
    iput-object p3, p0, Lr3/i;->c:Ln2/j;

    .line 39
    .line 40
    iput-object p4, p0, Lr3/i;->d:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    iput-object p5, p0, Lr3/i;->e:Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    iput-object p6, p0, Lr3/i;->f:Lr3/s;

    .line 45
    .line 46
    invoke-static {}, Lr3/b0;->c()Lr3/b0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "getInstance(...)"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lr3/i;->g:Lr3/b0;

    .line 56
    .line 57
    return-void
.end method

.method public static synthetic a(Ly3/k;Lr3/i;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lr3/i;->s(Ly3/k;Lr3/i;Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Lr3/i;Lf2/a;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lr3/i;->q(Ljava/lang/Object;Lr3/i;Lf2/a;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;Lr3/i;Lf2/a;Ly3/k;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lr3/i;->n(Ljava/lang/Object;Lr3/i;Lf2/a;Ly3/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lr3/i;Lf2/a;)Ly3/k;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lr3/i;->l(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lr3/i;Lf2/a;)Ly3/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f(Lf2/a;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lr3/i;->g:Lr3/b0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lr3/b0;->b(Lf2/a;)Ly3/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ly3/k;->close()V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lr3/i;->i:Ljava/lang/Class;

    .line 13
    .line 14
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "Found image for %s in staging area"

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lr3/i;->f:Lr3/s;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lr3/s;->l(Lf2/a;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lr3/i;->i:Ljava/lang/Class;

    .line 31
    .line 32
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "Did not find image for %s in staging area"

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lr3/i;->f:Lr3/s;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Lr3/s;->b(Lf2/a;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    iget-object v0, p0, Lr3/i;->a:Lg2/e;

    .line 47
    .line 48
    invoke-interface {v0, p1}, Lg2/e;->f(Lf2/a;)Z

    .line 49
    .line 50
    .line 51
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    return p1
.end method

.method private final i(Lf2/a;Ly3/k;)Lw/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/a;",
            "Ly3/k;",
            ")",
            "Lw/e<",
            "Ly3/k;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lr3/i;->i:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "Found image for %s in staging area"

    .line 8
    .line 9
    invoke-static {v0, v2, v1}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lr3/i;->f:Lr3/s;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lr3/s;->l(Lf2/a;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lw/e;->h(Ljava/lang/Object;)Lw/e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "forResult(...)"

    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method private final k(Lf2/a;Ljava/util/concurrent/atomic/AtomicBoolean;)Lw/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/a;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lw/e<",
            "Ly3/k;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "BufferedDiskCache_getAsync"

    .line 2
    .line 3
    invoke-static {v0}, Lz3/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lr3/e;

    .line 8
    .line 9
    invoke-direct {v1, v0, p2, p0, p1}, Lr3/e;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lr3/i;Lf2/a;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lr3/i;->d:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {v1, p2}, Lw/e;->b(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lw/e;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p2

    .line 20
    sget-object v0, Lr3/i;->i:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v1, "Failed to schedule disk-cache read for %s"

    .line 31
    .line 32
    invoke-static {v0, p2, v1, p1}, Ll2/a;->y(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lw/e;->g(Ljava/lang/Exception;)Lw/e;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    return-object p1
.end method

.method private static final l(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lr3/i;Lf2/a;)Ly3/k;
    .locals 4

    .line 1
    const-string v0, "$isCancelled"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$key"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p0, v0}, Lz3/a;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object p1, p2, Lr3/i;->g:Lr3/b0;

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Lr3/b0;->b(Lf2/a;)Ly3/k;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    sget-object v0, Lr3/i;->i:Ljava/lang/Class;

    .line 36
    .line 37
    const-string v2, "Found image for %s in staging area"

    .line 38
    .line 39
    invoke-interface {p3}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v0, v2, v3}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p2, Lr3/i;->f:Lr3/s;

    .line 47
    .line 48
    invoke-interface {p2, p3}, Lr3/s;->l(Lf2/a;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    sget-object p1, Lr3/i;->i:Ljava/lang/Class;

    .line 55
    .line 56
    const-string v2, "Did not find image for %s in staging area"

    .line 57
    .line 58
    invoke-interface {p3}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {p1, v2, v3}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p2, Lr3/i;->f:Lr3/s;

    .line 66
    .line 67
    invoke-interface {p1, p3}, Lr3/s;->b(Lf2/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :try_start_1
    invoke-direct {p2, p3}, Lr3/i;->o(Lf2/a;)Lcom/facebook/common/memory/PooledByteBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    invoke-static {v1}, Lz3/a;->f(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_1
    :try_start_2
    invoke-static {p1}, Lo2/a;->w(Ljava/io/Closeable;)Lo2/a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p2, "of(...)"

    .line 85
    .line 86
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    .line 89
    :try_start_3
    new-instance p2, Ly3/k;

    .line 90
    .line 91
    invoke-direct {p2, p1}, Ly3/k;-><init>(Lo2/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    .line 93
    .line 94
    :try_start_4
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    .line 96
    .line 97
    move-object p1, p2

    .line 98
    :goto_0
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 99
    .line 100
    .line 101
    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    if-nez p2, :cond_2

    .line 103
    .line 104
    invoke-static {v1}, Lz3/a;->f(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_2
    :try_start_6
    sget-object p2, Lr3/i;->i:Ljava/lang/Class;

    .line 109
    .line 110
    const-string p3, "Host thread was interrupted, decreasing reference count"

    .line 111
    .line 112
    invoke-static {p2, p3}, Ll2/a;->o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ly3/k;->close()V

    .line 116
    .line 117
    .line 118
    new-instance p1, Ljava/lang/InterruptedException;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    .line 121
    .line 122
    .line 123
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 124
    :catchall_1
    move-exception p2

    .line 125
    :try_start_7
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V

    .line 126
    .line 127
    .line 128
    throw p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 129
    :catch_0
    invoke-static {v1}, Lz3/a;->f(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_3
    :try_start_8
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    .line 136
    .line 137
    .line 138
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 139
    :goto_1
    :try_start_9
    invoke-static {p0, p1}, Lz3/a;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 143
    :catchall_2
    move-exception p0

    .line 144
    invoke-static {v1}, Lz3/a;->f(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    throw p0
.end method

.method private static final n(Ljava/lang/Object;Lr3/i;Lf2/a;Ly3/k;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$key"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, v0}, Lz3/a;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    invoke-direct {p1, p2, p3}, Lr3/i;->r(Lf2/a;Ly3/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    iget-object p0, p1, Lr3/i;->g:Lr3/b0;

    .line 20
    .line 21
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2, p3}, Lr3/b0;->g(Lf2/a;Ly3/k;)Z

    .line 25
    .line 26
    .line 27
    invoke-static {p3}, Ly3/k;->i(Ly3/k;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lz3/a;->f(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    :try_start_1
    invoke-static {p0, v1}, Lz3/a;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :catchall_1
    move-exception p0

    .line 40
    iget-object p1, p1, Lr3/i;->g:Lr3/b0;

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, p3}, Lr3/b0;->g(Lf2/a;Ly3/k;)Z

    .line 46
    .line 47
    .line 48
    invoke-static {p3}, Ly3/k;->i(Ly3/k;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lz3/a;->f(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method private final o(Lf2/a;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lr3/i;->i:Ljava/lang/Class;

    .line 2
    .line 3
    const-string v1, "Disk cache read for %s"

    .line 4
    .line 5
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lr3/i;->a:Lg2/e;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Lg2/e;->c(Lf2/a;)Lcom/facebook/binaryresource/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "Disk cache miss for %s"

    .line 21
    .line 22
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v1, v2}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lr3/i;->f:Lr3/s;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lr3/s;->k(Lf2/a;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v2, "Found entry in disk cache for %s"

    .line 39
    .line 40
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v0, v2, v3}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lr3/i;->f:Lr3/s;

    .line 48
    .line 49
    invoke-interface {v2, p1}, Lr3/s;->i(Lf2/a;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Lcom/facebook/binaryresource/a;->a()Ljava/io/InputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    iget-object v3, p0, Lr3/i;->b:Ln2/g;

    .line 57
    .line 58
    invoke-interface {v1}, Lcom/facebook/binaryresource/a;->size()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    long-to-int v1, v4

    .line 63
    invoke-interface {v3, v2, v1}, Ln2/g;->e(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    .line 64
    .line 65
    .line 66
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 68
    .line 69
    .line 70
    const-string v2, "Successful read from disk cache for %s"

    .line 71
    .line 72
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v0, v2, v3}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 82
    .line 83
    .line 84
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    :goto_0
    sget-object v1, Lr3/i;->i:Ljava/lang/Class;

    .line 86
    .line 87
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v3, "Exception reading from cache for %s"

    .line 96
    .line 97
    invoke-static {v1, v0, v3, v2}, Ll2/a;->y(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lr3/i;->f:Lr3/s;

    .line 101
    .line 102
    invoke-interface {v1, p1}, Lr3/s;->e(Lf2/a;)V

    .line 103
    .line 104
    .line 105
    throw v0
.end method

.method private static final q(Ljava/lang/Object;Lr3/i;Lf2/a;)Ljava/lang/Void;
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$key"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, v0}, Lz3/a;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :try_start_0
    iget-object v2, p1, Lr3/i;->g:Lr3/b0;

    .line 17
    .line 18
    invoke-virtual {v2, p2}, Lr3/b0;->f(Lf2/a;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lr3/i;->a:Lg2/e;

    .line 22
    .line 23
    invoke-interface {p1, p2}, Lg2/e;->d(Lf2/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lz3/a;->f(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    invoke-static {p0, p1}, Lz3/a;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :catchall_1
    move-exception p0

    .line 36
    invoke-static {v1}, Lz3/a;->f(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method private final r(Lf2/a;Ly3/k;)V
    .locals 3

    .line 1
    sget-object v0, Lr3/i;->i:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "About to write to disk-cache for key %s"

    .line 8
    .line 9
    invoke-static {v0, v2, v1}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lr3/i;->a:Lg2/e;

    .line 13
    .line 14
    new-instance v2, Lr3/h;

    .line 15
    .line 16
    invoke-direct {v2, p2, p0}, Lr3/h;-><init>(Ly3/k;Lr3/i;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p1, v2}, Lg2/e;->b(Lf2/a;Lf2/f;)Lcom/facebook/binaryresource/a;

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lr3/i;->f:Lr3/s;

    .line 23
    .line 24
    invoke-interface {p2, p1}, Lr3/s;->c(Lf2/a;)V

    .line 25
    .line 26
    .line 27
    const-string p2, "Successful disk-cache write for key %s"

    .line 28
    .line 29
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, p2, v1}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p2

    .line 38
    sget-object v0, Lr3/i;->i:Ljava/lang/Class;

    .line 39
    .line 40
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v1, "Failed to write to disk-cache for key %s"

    .line 49
    .line 50
    invoke-static {v0, p2, v1, p1}, Ll2/a;->y(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method private static final s(Ly3/k;Lr3/i;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "os"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ly3/k;->r()Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Lr3/i;->c:Ln2/j;

    .line 21
    .line 22
    invoke-virtual {p1, p0, p2}, Ln2/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string p1, "Required value was null."

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method


# virtual methods
.method public final e(Lf2/a;)V
    .locals 1
    .param p1    # Lf2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr3/i;->a:Lg2/e;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lg2/e;->e(Lf2/a;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g(Lf2/a;)Z
    .locals 1
    .param p1    # Lf2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr3/i;->g:Lr3/b0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lr3/b0;->a(Lf2/a;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lr3/i;->a:Lg2/e;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lg2/e;->a(Lf2/a;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 26
    :goto_1
    return p1
.end method

.method public final h(Lf2/a;)Z
    .locals 1
    .param p1    # Lf2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lr3/i;->g(Lf2/a;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lr3/i;->f(Lf2/a;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :goto_0
    return p1
.end method

.method public final j(Lf2/a;Ljava/util/concurrent/atomic/AtomicBoolean;)Lw/e;
    .locals 1
    .param p1    # Lf2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/a;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lw/e<",
            "Ly3/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "isCancelled"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lf4/b;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lr3/i;->g:Lr3/b0;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lr3/b0;->b(Lf2/a;)Ly3/k;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, p1, v0}, Lr3/i;->i(Lf2/a;Ly3/k;)Lw/e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_4

    .line 30
    .line 31
    :cond_0
    invoke-direct {p0, p1, p2}, Lr3/i;->k(Lf2/a;Ljava/util/concurrent/atomic/AtomicBoolean;)Lw/e;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v0, "BufferedDiskCache#get"

    .line 37
    .line 38
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object v0, p0, Lr3/i;->g:Lr3/b0;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lr3/b0;->b(Lf2/a;)Ly3/k;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-direct {p0, p1, v0}, Lr3/i;->i(Lf2/a;Ly3/k;)Lw/e;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lr3/i;->k(Lf2/a;Ljava/util/concurrent/atomic/AtomicBoolean;)Lw/e;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    move-object v0, p1

    .line 63
    :cond_3
    invoke-static {}, Lf4/b;->b()V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_1
    return-object v0

    .line 67
    :goto_2
    invoke-static {}, Lf4/b;->b()V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public final m(Lf2/a;Ly3/k;)V
    .locals 5
    .param p1    # Lf2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ly3/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "encodedImage"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lf4/b;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "Failed to schedule disk-cache write for %s"

    .line 16
    .line 17
    const-string v2, "BufferedDiskCache_putAsync"

    .line 18
    .line 19
    const-string v3, "Check failed."

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-static {p2}, Ly3/k;->T(Ly3/k;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lr3/i;->g:Lr3/b0;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Lr3/b0;->e(Lf2/a;Ly3/k;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Ly3/k;->g(Ly3/k;)Ly3/k;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :try_start_0
    invoke-static {v2}, Lz3/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lr3/i;->e:Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    new-instance v4, Lr3/f;

    .line 45
    .line 46
    invoke-direct {v4, v2, p0, p1, v0}, Lr3/f;-><init>(Ljava/lang/Object;Lr3/i;Lf2/a;Ly3/k;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v2

    .line 54
    sget-object v3, Lr3/i;->i:Ljava/lang/Class;

    .line 55
    .line 56
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v3, v2, v1, v4}, Ll2/a;->y(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lr3/i;->g:Lr3/b0;

    .line 68
    .line 69
    invoke-virtual {v1, p1, p2}, Lr3/b0;->g(Lf2/a;Ly3/k;)Z

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Ly3/k;->i(Ly3/k;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_1
    const-string v0, "BufferedDiskCache#put"

    .line 83
    .line 84
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :try_start_1
    invoke-static {p2}, Ly3/k;->T(Ly3/k;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lr3/i;->g:Lr3/b0;

    .line 94
    .line 95
    invoke-virtual {v0, p1, p2}, Lr3/b0;->e(Lf2/a;Ly3/k;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p2}, Ly3/k;->g(Ly3/k;)Ly3/k;

    .line 99
    .line 100
    .line 101
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    invoke-static {v2}, Lz3/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v3, p0, Lr3/i;->e:Ljava/util/concurrent/Executor;

    .line 107
    .line 108
    new-instance v4, Lr3/f;

    .line 109
    .line 110
    invoke-direct {v4, v2, p0, p1, v0}, Lr3/f;-><init>(Ljava/lang/Object;Lr3/i;Lf2/a;Ly3/k;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    goto :goto_2

    .line 119
    :catch_1
    move-exception v2

    .line 120
    :try_start_3
    sget-object v3, Lr3/i;->i:Ljava/lang/Class;

    .line 121
    .line 122
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-static {v3, v2, v1, v4}, Ll2/a;->y(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lr3/i;->g:Lr3/b0;

    .line 134
    .line 135
    invoke-virtual {v1, p1, p2}, Lr3/b0;->g(Lf2/a;Ly3/k;)Z

    .line 136
    .line 137
    .line 138
    invoke-static {v0}, Ly3/k;->i(Ly3/k;)V

    .line 139
    .line 140
    .line 141
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    .line 143
    invoke-static {}, Lf4/b;->b()V

    .line 144
    .line 145
    .line 146
    :goto_1
    return-void

    .line 147
    :cond_2
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    :goto_2
    invoke-static {}, Lf4/b;->b()V

    .line 154
    .line 155
    .line 156
    throw p1
.end method

.method public final p(Lf2/a;)Lw/e;
    .locals 3
    .param p1    # Lf2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/a;",
            ")",
            "Lw/e<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr3/i;->g:Lr3/b0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lr3/b0;->f(Lf2/a;)Z

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string v0, "BufferedDiskCache_remove"

    .line 12
    .line 13
    invoke-static {v0}, Lz3/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lr3/g;

    .line 18
    .line 19
    invoke-direct {v1, v0, p0, p1}, Lr3/g;-><init>(Ljava/lang/Object;Lr3/i;Lf2/a;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lr3/i;->e:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    invoke-static {v1, v0}, Lw/e;->b(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lw/e;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    sget-object v1, Lr3/i;->i:Ljava/lang/Class;

    .line 31
    .line 32
    invoke-interface {p1}, Lf2/a;->getUriString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v2, "Failed to schedule disk-cache remove for %s"

    .line 41
    .line 42
    invoke-static {v1, v0, v2, p1}, Ll2/a;->y(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lw/e;->g(Ljava/lang/Exception;)Lw/e;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    return-object p1
.end method
