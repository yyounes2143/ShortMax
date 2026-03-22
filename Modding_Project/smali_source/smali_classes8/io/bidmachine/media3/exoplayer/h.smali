.class public abstract Lio/bidmachine/media3/exoplayer/h;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/h2;
.implements Lio/bidmachine/media3/exoplayer/i2;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I

.field private final c:Lgn/c0;

.field private d:Lgn/g0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:Lhn/b2;

.field private g:Lcn/h;

.field private h:I

.field private i:Lsn/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:[Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:J

.field private l:J

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Lzm/a0;

.field private q:Lio/bidmachine/media3/exoplayer/i2$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->a:Ljava/lang/Object;

    .line 10
    .line 11
    iput p1, p0, Lio/bidmachine/media3/exoplayer/h;->b:I

    .line 12
    .line 13
    new-instance p1, Lgn/c0;

    .line 14
    .line 15
    invoke-direct {p1}, Lgn/c0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/h;->c:Lgn/c0;

    .line 19
    .line 20
    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    .line 22
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/h;->m:J

    .line 23
    .line 24
    sget-object p1, Lzm/a0;->a:Lzm/a0;

    .line 25
    .line 26
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/h;->p:Lzm/a0;

    .line 27
    .line 28
    return-void
.end method

.method private Z(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/h;->n:Z

    .line 3
    .line 4
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/h;->l:J

    .line 5
    .line 6
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/h;->m:J

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/h;->Q(JZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final A(ILhn/b2;Lcn/h;)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/exoplayer/h;->e:I

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/h;->f:Lhn/b2;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/h;->g:Lcn/h;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->P()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected final B(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
    .locals 1
    .param p2    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lio/bidmachine/media3/exoplayer/h;->C(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;ZI)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method protected final C(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;ZI)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
    .locals 9
    .param p2    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/h;->o:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/h;->o:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-interface {p0, p2}, Lio/bidmachine/media3/exoplayer/i2;->a(Lio/bidmachine/media3/common/a;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/i2;->f(I)I

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/h;->o:Z

    .line 20
    .line 21
    :goto_0
    move v6, v1

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/h;->o:Z

    .line 25
    .line 26
    throw p1

    .line 27
    :catch_0
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/h;->o:Z

    .line 28
    .line 29
    :cond_0
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/h2;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->G()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    move-object v2, p1

    .line 40
    move-object v5, p2

    .line 41
    move v7, p3

    .line 42
    move v8, p4

    .line 43
    invoke-static/range {v2 .. v8}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->d(Ljava/lang/Throwable;Ljava/lang/String;ILio/bidmachine/media3/common/a;IZI)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method protected final D()Lcn/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->g:Lcn/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcn/h;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final E()Lgn/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->d:Lgn/g0;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgn/g0;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final F()Lgn/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->c:Lgn/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgn/c0;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->c:Lgn/c0;

    .line 7
    .line 8
    return-object v0
.end method

.method protected final G()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/h;->e:I

    .line 2
    .line 3
    return v0
.end method

.method protected final H()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/h;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected final I()Lhn/b2;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->f:Lhn/b2;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lhn/b2;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final J()[Lio/bidmachine/media3/common/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->j:[Lio/bidmachine/media3/common/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/media3/common/a;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final K()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/h;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected final L()Lzm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->p:Lzm/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final M()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->hasReadStreamToEnd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/h;->n:Z

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->i:Lsn/s;

    .line 11
    .line 12
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lsn/s;

    .line 17
    .line 18
    invoke-interface {v0}, Lsn/s;->isReady()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method protected abstract N()V
.end method

.method protected O(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected P()V
    .locals 0

    .line 1
    return-void
.end method

.method protected abstract Q(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected R()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/h;->q:Lio/bidmachine/media3/exoplayer/i2$a;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, p0}, Lio/bidmachine/media3/exoplayer/i2$a;->b(Lio/bidmachine/media3/exoplayer/h2;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v1
.end method

.method protected T()V
    .locals 0

    .line 1
    return-void
.end method

.method protected U()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected V()V
    .locals 0

    .line 1
    return-void
.end method

.method protected W([Lio/bidmachine/media3/common/a;JJLio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected X(Lzm/a0;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected final Y(Lgn/c0;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->i:Lsn/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsn/s;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lsn/s;->c(Lgn/c0;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    const/4 v0, -0x4

    .line 14
    if-ne p3, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p2}, Lfn/a;->f()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-wide/high16 p1, -0x8000000000000000L

    .line 23
    .line 24
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/h;->m:J

    .line 25
    .line 26
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/h;->n:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, -0x3

    .line 32
    :goto_0
    return v0

    .line 33
    :cond_1
    iget-wide v0, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 34
    .line 35
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/h;->k:J

    .line 36
    .line 37
    add-long/2addr v0, v2

    .line 38
    iput-wide v0, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 39
    .line 40
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/h;->m:J

    .line 41
    .line 42
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/h;->m:J

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 p2, -0x5

    .line 50
    if-ne p3, p2, :cond_3

    .line 51
    .line 52
    iget-object p2, p1, Lgn/c0;->b:Lio/bidmachine/media3/common/a;

    .line 53
    .line 54
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lio/bidmachine/media3/common/a;

    .line 59
    .line 60
    iget-wide v0, p2, Lio/bidmachine/media3/common/a;->t:J

    .line 61
    .line 62
    const-wide v2, 0x7fffffffffffffffL

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    cmp-long v0, v0, v2

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-wide v1, p2, Lio/bidmachine/media3/common/a;->t:J

    .line 76
    .line 77
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/h;->k:J

    .line 78
    .line 79
    add-long/2addr v1, v3

    .line 80
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/a$b;->y0(J)Lio/bidmachine/media3/common/a$b;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p1, Lgn/c0;->b:Lio/bidmachine/media3/common/a;

    .line 89
    .line 90
    :cond_3
    :goto_1
    return p3
.end method

.method protected a0(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->i:Lsn/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsn/s;

    .line 8
    .line 9
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/h;->k:J

    .line 10
    .line 11
    sub-long/2addr p1, v1

    .line 12
    invoke-interface {v0, p1, p2}, Lsn/s;->skipData(J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final disable()V
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/h;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    :goto_0
    invoke-static {v2}, Lcn/a;->g(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->c:Lgn/c0;

    .line 13
    .line 14
    invoke-virtual {v0}, Lgn/c0;->a()V

    .line 15
    .line 16
    .line 17
    iput v1, p0, Lio/bidmachine/media3/exoplayer/h;->h:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->i:Lsn/s;

    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->j:[Lio/bidmachine/media3/common/a;

    .line 23
    .line 24
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/h;->n:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->N()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/h;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getCapabilities()Lio/bidmachine/media3/exoplayer/i2;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getMediaClock()Lgn/e0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/h;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStream()Lsn/s;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->i:Lsn/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/h;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/h;->m:J

    .line 2
    .line 3
    const-wide/high16 v2, -0x8000000000000000L

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/h;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final maybeThrowStreamError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->i:Lsn/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsn/s;

    .line 8
    .line 9
    invoke-interface {v0}, Lsn/s;->maybeThrowError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final r(Lzm/a0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->p:Lzm/a0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/h;->p:Lzm/a0;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/h;->X(Lzm/a0;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final release()V
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/h;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->R()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/h;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->c:Lgn/c0;

    .line 12
    .line 13
    invoke-virtual {v0}, Lgn/c0;->a()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->T()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final resetPosition(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/h;->Z(JZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/h;->n:Z

    .line 3
    .line 4
    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/h;->h:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-static {v1}, Lcn/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lio/bidmachine/media3/exoplayer/h;->h:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->U()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/h;->h:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 11
    .line 12
    .line 13
    iput v2, p0, Lio/bidmachine/media3/exoplayer/h;->h:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->V()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final t([Lio/bidmachine/media3/common/a;Lsn/s;JJLio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/h;->n:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/h;->i:Lsn/s;

    .line 9
    .line 10
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/h;->m:J

    .line 11
    .line 12
    const-wide/high16 v2, -0x8000000000000000L

    .line 13
    .line 14
    cmp-long p2, v0, v2

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/h;->m:J

    .line 19
    .line 20
    :cond_0
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/h;->j:[Lio/bidmachine/media3/common/a;

    .line 21
    .line 22
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/h;->k:J

    .line 23
    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-wide v2, p3

    .line 27
    move-wide v4, p5

    .line 28
    move-object v6, p7

    .line 29
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/h;->W([Lio/bidmachine/media3/common/a;JJLio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final u(Lio/bidmachine/media3/exoplayer/i2$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/h;->q:Lio/bidmachine/media3/exoplayer/i2$a;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/h;->q:Lio/bidmachine/media3/exoplayer/i2$a;

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public final w(Lgn/g0;[Lio/bidmachine/media3/common/a;Lsn/s;JZZJJLio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    move-object v8, p0

    .line 2
    move/from16 v9, p6

    .line 3
    .line 4
    iget v0, v8, Lio/bidmachine/media3/exoplayer/h;->h:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 13
    .line 14
    .line 15
    move-object v0, p1

    .line 16
    iput-object v0, v8, Lio/bidmachine/media3/exoplayer/h;->d:Lgn/g0;

    .line 17
    .line 18
    iput v1, v8, Lio/bidmachine/media3/exoplayer/h;->h:I

    .line 19
    .line 20
    move/from16 v0, p7

    .line 21
    .line 22
    invoke-virtual {p0, v9, v0}, Lio/bidmachine/media3/exoplayer/h;->O(ZZ)V

    .line 23
    .line 24
    .line 25
    move-object v0, p0

    .line 26
    move-object v1, p2

    .line 27
    move-object v2, p3

    .line 28
    move-wide/from16 v3, p8

    .line 29
    .line 30
    move-wide/from16 v5, p10

    .line 31
    .line 32
    move-object/from16 v7, p12

    .line 33
    .line 34
    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/h;->t([Lio/bidmachine/media3/common/a;Lsn/s;JJLio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 35
    .line 36
    .line 37
    move-wide/from16 v0, p8

    .line 38
    .line 39
    invoke-direct {p0, v0, v1, v9}, Lio/bidmachine/media3/exoplayer/h;->Z(JZ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
