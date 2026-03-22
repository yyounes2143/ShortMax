.class public final Lokhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "Http2Stream.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Stream$Companion;,
        Lokhttp3/internal/http2/Http2Stream$FramingSink;,
        Lokhttp3/internal/http2/Http2Stream$FramingSource;,
        Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n*L\n1#1,688:1\n1#2:689\n615#3,4:690\n615#3,4:694\n563#3:698\n615#3,4:699\n615#3,4:703\n563#3:707\n563#3:708\n615#3,4:709\n563#3:713\n557#3:714\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream\n*L\n176#1:690,4\n255#1:694,4\n263#1:698\n274#1:699,4\n281#1:703,4\n295#1:707\n305#1:708\n491#1:709,4\n637#1:713\n657#1:714\n*E\n"
    }
.end annotation


# static fields
.field public static final o:Lokhttp3/internal/http2/Http2Stream$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Lokhttp3/internal/http2/Http2Connection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokhttp3/Headers;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Z

.field private final i:Lokhttp3/internal/http2/Http2Stream$FramingSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lokhttp3/internal/http2/Http2Stream$FramingSink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private m:Lokhttp3/internal/http2/ErrorCode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Ljava/io/IOException;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Stream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokhttp3/internal/http2/Http2Stream;->o:Lokhttp3/internal/http2/Http2Stream$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V
    .locals 3
    .param p2    # Lokhttp3/internal/http2/Http2Connection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 10
    .line 11
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 12
    .line 13
    invoke-virtual {p2}, Lokhttp3/internal/http2/Http2Connection;->a0()Lokhttp3/internal/http2/Settings;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->c()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    int-to-long v0, p1

    .line 22
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->f:J

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->g:Ljava/util/ArrayDeque;

    .line 30
    .line 31
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 32
    .line 33
    invoke-virtual {p2}, Lokhttp3/internal/http2/Http2Connection;->Z()Lokhttp3/internal/http2/Settings;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Lokhttp3/internal/http2/Settings;->c()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    int-to-long v1, p2

    .line 42
    invoke-direct {v0, p0, v1, v2, p4}, Lokhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Lokhttp3/internal/http2/Http2Stream;JZ)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->i:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 46
    .line 47
    new-instance p2, Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 48
    .line 49
    invoke-direct {p2, p0, p3}, Lokhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Lokhttp3/internal/http2/Http2Stream;Z)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->j:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 53
    .line 54
    new-instance p2, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 60
    .line 61
    new-instance p2, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->l:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 67
    .line 68
    if-eqz p5, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->t()Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_0

    .line 75
    .line 76
    invoke-interface {p1, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_1
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->t()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    :goto_0
    return-void

    .line 95
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    const-string p2, "remotely-initiated streams should have headers"

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method private final e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lokhttp3/internal/Util;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "Thread "

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, " MUST NOT hold lock on "

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return v1

    .line 59
    :cond_2
    :try_start_1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    .line 60
    .line 61
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->n:Ljava/io/IOException;

    .line 62
    .line 63
    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    .line 64
    .line 65
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->i:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 72
    .line 73
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->k()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->j:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 80
    .line 81
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->k()Z

    .line 82
    .line 83
    .line 84
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return v1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :try_start_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    monitor-exit p0

    .line 94
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 95
    .line 96
    iget p2, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Connection;->o0(I)Lokhttp3/internal/http2/Http2Stream;

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x1

    .line 102
    return p1

    .line 103
    :goto_1
    monitor-exit p0

    .line 104
    throw p1
.end method


# virtual methods
.method public final A(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/Http2Stream;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public final B(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/Http2Stream;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public final declared-synchronized C()Lokhttp3/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 3
    .line 4
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :goto_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->g:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->D()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 26
    .line 27
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->a()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->g:Ljava/util/ArrayDeque;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->g:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "headersQueue.removeFirst()"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    check-cast v0, Lokhttp3/Headers;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-object v0

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->n:Ljava/io/IOException;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    .line 61
    .line 62
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    .line 63
    .line 64
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    throw v0

    .line 71
    :goto_2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 72
    .line 73
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->a()V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    throw v0
.end method

.method public final D()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public final E()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->l:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->f:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->f:J

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p1, p1, v0

    .line 9
    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    .line 13
    .line 14
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lokhttp3/internal/Util;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Thread "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " MUST NOT hold lock on "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->i:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 53
    .line 54
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->k()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->i:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 61
    .line 62
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->d()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->j:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 69
    .line 70
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->k()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->j:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 77
    .line 78
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->d()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_4

    .line 87
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const/4 v0, 0x0

    .line 90
    :goto_2
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->u()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    monitor-exit p0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    if-nez v1, :cond_5

    .line 107
    .line 108
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 109
    .line 110
    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Connection;->o0(I)Lokhttp3/internal/http2/Http2Stream;

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_3
    return-void

    .line 116
    :goto_4
    monitor-exit p0

    .line 117
    throw v0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->j:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->j:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 10
    .line 11
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->k()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->n:Ljava/io/IOException;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    .line 27
    .line 28
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    throw v0

    .line 37
    :cond_1
    return-void

    .line 38
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 39
    .line 40
    const-string v1, "stream finished"

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 47
    .line 48
    const-string v1, "stream closed"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public final d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "rstStatusCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 14
    .line 15
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 16
    .line 17
    invoke-virtual {p2, v0, p1}, Lokhttp3/internal/http2/Http2Connection;->G0(ILokhttp3/internal/http2/ErrorCode;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final f(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .param p1    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http2/Http2Stream;->e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 15
    .line 16
    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->H0(ILokhttp3/internal/http2/ErrorCode;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final g()Lokhttp3/internal/http2/Http2Connection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized h()Lokhttp3/internal/http2/ErrorCode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final i()Ljava/io/IOException;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->n:Ljava/io/IOException;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final m()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Lokio/Sink;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->h:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->t()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "reply before requesting the sink"

    .line 14
    .line 15
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->j:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 27
    .line 28
    return-object v0

    .line 29
    :goto_1
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public final o()Lokhttp3/internal/http2/Http2Stream$FramingSink;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->j:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Lokhttp3/internal/http2/Http2Stream$FramingSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->i:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final r()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final s()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->l:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Z
    .locals 4

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 12
    .line 13
    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->P()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ne v3, v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v1, v2

    .line 21
    :goto_1
    return v1
.end method

.method public final declared-synchronized u()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->i:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 10
    .line 11
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->k()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->i:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 18
    .line 19
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->d()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->j:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 29
    .line 30
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->k()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->j:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 37
    .line 38
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->d()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    :cond_2
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return v1

    .line 50
    :cond_3
    monitor-exit p0

    .line 51
    const/4 v0, 0x1

    .line 52
    return v0

    .line 53
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw v0
.end method

.method public final v()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w(Lokio/BufferedSource;I)V
    .locals 3
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lokhttp3/internal/Util;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "Thread "

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " MUST NOT hold lock on "

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->i:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 57
    .line 58
    int-to-long v1, p2

    .line 59
    invoke-virtual {v0, p1, v1, v2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->l(Lokio/BufferedSource;J)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final x(Lokhttp3/Headers;Z)V
    .locals 2
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "headers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lokhttp3/internal/Util;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "Thread "

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " MUST NOT hold lock on "

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    :goto_0
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->h:Z

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    if-nez p2, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->i:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->o(Lokhttp3/Headers;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream;->h:Z

    .line 74
    .line 75
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->g:Ljava/util/ArrayDeque;

    .line 76
    .line 77
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :goto_2
    if-eqz p2, :cond_4

    .line 81
    .line 82
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->i:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->m(Z)V

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->u()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    .line 92
    .line 93
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    .line 98
    .line 99
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    monitor-exit p0

    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 105
    .line 106
    iget p2, p0, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Connection;->o0(I)Lokhttp3/internal/http2/Http2Stream;

    .line 109
    .line 110
    .line 111
    :cond_5
    return-void

    .line 112
    :goto_3
    monitor-exit p0

    .line 113
    throw p1
.end method

.method public final declared-synchronized y(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "errorCode"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    .line 12
    .line 13
    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    .line 14
    .line 15
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method

.method public final z(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/Http2Stream;->d:J

    .line 2
    .line 3
    return-void
.end method
