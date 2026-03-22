.class final Lio/bidmachine/media3/exoplayer/source/k;
.super Ljava/lang/Object;
.source "ExternallyLoadedMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/k$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lio/bidmachine/media3/exoplayer/source/j;

.field private final c:Lsn/x;

.field private final d:[B

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/common/util/concurrent/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/e<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/source/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/k;->a:Landroid/net/Uri;

    .line 5
    .line 6
    new-instance v0, Lio/bidmachine/media3/common/a$b;

    .line 7
    .line 8
    invoke-direct {v0}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/k;->b:Lio/bidmachine/media3/exoplayer/source/j;

    .line 20
    .line 21
    new-instance p3, Lsn/x;

    .line 22
    .line 23
    new-instance v0, Lzm/b0;

    .line 24
    .line 25
    filled-new-array {p2}, [Lio/bidmachine/media3/common/a;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {v0, p2}, Lzm/b0;-><init>([Lio/bidmachine/media3/common/a;)V

    .line 30
    .line 31
    .line 32
    filled-new-array {v0}, [Lzm/b0;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p3, p2}, Lsn/x;-><init>([Lzm/b0;)V

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/k;->c:Lsn/x;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/k;->d:[B

    .line 52
    .line 53
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    .line 67
    return-void
.end method

.method static synthetic c(Lio/bidmachine/media3/exoplayer/source/k;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lio/bidmachine/media3/exoplayer/source/k;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lio/bidmachine/media3/exoplayer/source/k;)Lsn/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/k;->c:Lsn/x;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lio/bidmachine/media3/exoplayer/source/k;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/k;->d:[B

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(JLgn/i0;)J
    .locals 0

    .line 1
    return-wide p1
.end method

.method public b(Lio/bidmachine/media3/exoplayer/k1;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Lio/bidmachine/media3/exoplayer/source/q$a;J)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/q$a;->d(Lio/bidmachine/media3/exoplayer/source/q;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/k;->b:Lio/bidmachine/media3/exoplayer/source/j;

    .line 5
    .line 6
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/j$a;

    .line 7
    .line 8
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/k;->a:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-direct {p2, p3}, Lio/bidmachine/media3/exoplayer/source/j$a;-><init>(Landroid/net/Uri;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/source/j;->a(Lio/bidmachine/media3/exoplayer/source/j$a;)Lcom/google/common/util/concurrent/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/k;->g:Lcom/google/common/util/concurrent/e;

    .line 18
    .line 19
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/k$a;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lio/bidmachine/media3/exoplayer/source/k$a;-><init>(Lio/bidmachine/media3/exoplayer/source/k;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/google/common/util/concurrent/f;->a()Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/b;->a(Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/a;Ljava/util/concurrent/Executor;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    :goto_0
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Lsn/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/k;->c:Lsn/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/k;->g:Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public i([Lvn/q;[Z[Lsn/s;[ZJ)J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_3

    .line 4
    .line 5
    aget-object v1, p3, v0

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    aget-object v1, p1, v0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    aget-boolean v1, p2, v0

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    aput-object v1, p3, v0

    .line 19
    .line 20
    :cond_1
    aget-object v1, p3, v0

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    aget-object v1, p1, v0

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/k$b;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/source/k$b;-><init>(Lio/bidmachine/media3/exoplayer/source/k;)V

    .line 31
    .line 32
    .line 33
    aput-object v1, p3, v0

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    aput-boolean v1, p4, v0

    .line 37
    .line 38
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    return-wide p5
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 0

    .line 1
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public seekToUs(J)J
    .locals 0

    .line 1
    return-wide p1
.end method
