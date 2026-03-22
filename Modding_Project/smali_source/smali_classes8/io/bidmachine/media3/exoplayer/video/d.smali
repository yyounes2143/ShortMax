.class final Lio/bidmachine/media3/exoplayer/video/d;
.super Ljava/lang/Object;
.source "DefaultVideoSink.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/d$b;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/media3/exoplayer/video/n;

.field private final b:Lcn/h;

.field private final c:Lio/bidmachine/media3/exoplayer/video/o;

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/bidmachine/media3/exoplayer/video/VideoSink$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lio/bidmachine/media3/common/a;

.field private g:J

.field private h:J

.field private i:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

.field private j:Ljava/util/concurrent/Executor;

.field private k:Lyn/f;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/n;Lcn/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/video/n;->o(Lcn/h;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/d;->b:Lcn/h;

    .line 10
    .line 11
    new-instance p2, Lio/bidmachine/media3/exoplayer/video/o;

    .line 12
    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/d$b;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/video/d$b;-><init>(Lio/bidmachine/media3/exoplayer/video/d;Lio/bidmachine/media3/exoplayer/video/d$a;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, v0, p1}, Lio/bidmachine/media3/exoplayer/video/o;-><init>(Lio/bidmachine/media3/exoplayer/video/o$a;Lio/bidmachine/media3/exoplayer/video/n;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/d;->c:Lio/bidmachine/media3/exoplayer/video/o;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->d:Ljava/util/Queue;

    .line 30
    .line 31
    new-instance p1, Lio/bidmachine/media3/common/a$b;

    .line 32
    .line 33
    invoke-direct {p1}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->f:Lio/bidmachine/media3/common/a;

    .line 41
    .line 42
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->g:J

    .line 48
    .line 49
    sget-object p1, Lio/bidmachine/media3/exoplayer/video/VideoSink$a;->a:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 50
    .line 51
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->i:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 52
    .line 53
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/b;

    .line 54
    .line 55
    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/video/b;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->j:Ljava/util/concurrent/Executor;

    .line 59
    .line 60
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/c;

    .line 61
    .line 62
    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/video/c;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->k:Lyn/f;

    .line 66
    .line 67
    return-void
.end method

.method static synthetic A(Lio/bidmachine/media3/exoplayer/video/d;)Lcn/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/d;->b:Lcn/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Lio/bidmachine/media3/exoplayer/video/d;)Lyn/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/d;->k:Lyn/f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Lio/bidmachine/media3/exoplayer/video/d;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/d;->d:Ljava/util/Queue;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D(Lio/bidmachine/media3/exoplayer/video/d;)Lio/bidmachine/media3/exoplayer/video/VideoSink$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/d;->i:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic E(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic F(JJLio/bidmachine/media3/common/a;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic c(JJLio/bidmachine/media3/common/a;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/video/d;->F(JJLio/bidmachine/media3/common/a;Landroid/media/MediaFormat;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/d;->E(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lio/bidmachine/media3/exoplayer/video/d;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/d;->j:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic z(Lio/bidmachine/media3/exoplayer/video/d;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/d;->e:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->e:Landroid/view/Surface;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/Surface;

    .line 8
    .line 9
    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/n;->m()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->c:Lio/bidmachine/media3/exoplayer/video/o;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/o;->b()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->d:Ljava/util/Queue;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->c:Lio/bidmachine/media3/exoplayer/video/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/o;->l()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n;->l()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(ILio/bidmachine/media3/common/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/a;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lcn/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iget p1, p2, Lio/bidmachine/media3/common/a;->v:I

    .line 9
    .line 10
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/d;->f:Lio/bidmachine/media3/common/a;

    .line 11
    .line 12
    iget v0, p3, Lio/bidmachine/media3/common/a;->v:I

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    iget v0, p2, Lio/bidmachine/media3/common/a;->w:I

    .line 17
    .line 18
    iget p3, p3, Lio/bidmachine/media3/common/a;->w:I

    .line 19
    .line 20
    if-eq v0, p3, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/d;->c:Lio/bidmachine/media3/exoplayer/video/o;

    .line 23
    .line 24
    iget v0, p2, Lio/bidmachine/media3/common/a;->w:I

    .line 25
    .line 26
    invoke-virtual {p3, p1, v0}, Lio/bidmachine/media3/exoplayer/video/o;->i(II)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget p1, p2, Lio/bidmachine/media3/common/a;->x:F

    .line 30
    .line 31
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/d;->f:Lio/bidmachine/media3/common/a;

    .line 32
    .line 33
    iget p3, p3, Lio/bidmachine/media3/common/a;->x:F

    .line 34
    .line 35
    cmpl-float p3, p1, p3

    .line 36
    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 40
    .line 41
    invoke-virtual {p3, p1}, Lio/bidmachine/media3/exoplayer/video/n;->p(F)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/d;->f:Lio/bidmachine/media3/common/a;

    .line 45
    .line 46
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/n;->h(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Lio/bidmachine/media3/common/a;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->c:Lio/bidmachine/media3/exoplayer/video/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/o;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public j(Lyn/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->k:Lyn/f;

    .line 2
    .line 3
    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/n;->n(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lio/bidmachine/media3/exoplayer/h2$a;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public m(JJ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->g:J

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->c:Lio/bidmachine/media3/exoplayer/video/o;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/o;->h(J)V

    .line 10
    .line 11
    .line 12
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->g:J

    .line 13
    .line 14
    :cond_0
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/d;->h:J

    .line 15
    .line 16
    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public p(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/n;->d(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public r(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/n;->r(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public render(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->c:Lio/bidmachine/media3/exoplayer/video/o;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/o;->j(JJ)V
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;

    .line 9
    .line 10
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/d;->f:Lio/bidmachine/media3/common/a;

    .line 11
    .line 12
    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;)V

    .line 13
    .line 14
    .line 15
    throw p2
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t(JZLio/bidmachine/media3/exoplayer/video/VideoSink$b;)Z
    .locals 0

    .line 1
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/d;->d:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {p3, p4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/d;->h:J

    .line 7
    .line 8
    sub-long/2addr p1, p3

    .line 9
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/d;->c:Lio/bidmachine/media3/exoplayer/video/o;

    .line 10
    .line 11
    invoke-virtual {p3, p1, p2}, Lio/bidmachine/media3/exoplayer/video/o;->g(J)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->e:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/video/n;->q(Landroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public w(Lio/bidmachine/media3/exoplayer/video/VideoSink$a;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->i:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/d;->j:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    return-void
.end method

.method public x(Landroid/view/Surface;Lcn/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d;->e:Landroid/view/Surface;

    .line 2
    .line 3
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/video/n;->q(Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public y(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d;->a:Lio/bidmachine/media3/exoplayer/video/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/n;->e(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
