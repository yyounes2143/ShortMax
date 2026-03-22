.class public final Lio/bidmachine/media3/exoplayer/video/p$a;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lio/bidmachine/media3/exoplayer/video/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/p;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/media3/exoplayer/video/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/os/Handler;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->b:Lio/bidmachine/media3/exoplayer/video/p;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/media3/exoplayer/video/p$a;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/p$a;->t(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/media3/exoplayer/video/p$a;Lio/bidmachine/media3/common/a;Lgn/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/p$a;->v(Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/media3/exoplayer/video/p$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/p$a;->r(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lio/bidmachine/media3/exoplayer/video/p$a;Lgn/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/p$a;->u(Lgn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lio/bidmachine/media3/exoplayer/video/p$a;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/p$a;->x(JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lio/bidmachine/media3/exoplayer/video/p$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/p$a;->y(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lio/bidmachine/media3/exoplayer/video/p$a;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/p$a;->w(Ljava/lang/Object;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lio/bidmachine/media3/exoplayer/video/p$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/video/p$a;->q(Ljava/lang/String;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lio/bidmachine/media3/exoplayer/video/p$a;Lgn/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/p$a;->s(Lgn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lio/bidmachine/media3/exoplayer/video/p$a;Lzm/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/p$a;->z(Lzm/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic q(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->b:Lio/bidmachine/media3/exoplayer/video/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lio/bidmachine/media3/exoplayer/video/p;

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    move-wide v3, p2

    .line 12
    move-wide v5, p4

    .line 13
    invoke-interface/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/video/p;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic r(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->b:Lio/bidmachine/media3/exoplayer/video/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/p;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/p;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic s(Lgn/b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lgn/b;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->b:Lio/bidmachine/media3/exoplayer/video/p;

    .line 5
    .line 6
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/p;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/p;->p(Lgn/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic t(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->b:Lio/bidmachine/media3/exoplayer/video/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/p;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/p;->onDroppedFrames(IJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic u(Lgn/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->b:Lio/bidmachine/media3/exoplayer/video/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/p;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/p;->o(Lgn/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic v(Lio/bidmachine/media3/common/a;Lgn/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->b:Lio/bidmachine/media3/exoplayer/video/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/p;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/p;->u(Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic w(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->b:Lio/bidmachine/media3/exoplayer/video/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/p;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/p;->j(Ljava/lang/Object;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic x(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->b:Lio/bidmachine/media3/exoplayer/video/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/p;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/p;->f(JI)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic y(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->b:Lio/bidmachine/media3/exoplayer/video/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/p;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/p;->h(Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic z(Lzm/i0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->b:Lio/bidmachine/media3/exoplayer/video/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/p;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/p;->m(Lzm/i0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v3, Lyn/i;

    .line 12
    .line 13
    invoke-direct {v3, p0, p1, v0, v1}, Lyn/i;-><init>(Lio/bidmachine/media3/exoplayer/video/p$a;Ljava/lang/Object;J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public B(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lyn/n;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lyn/n;-><init>(Lio/bidmachine/media3/exoplayer/video/p$a;JI)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public C(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lyn/h;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lyn/h;-><init>(Lio/bidmachine/media3/exoplayer/video/p$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public D(Lzm/i0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lyn/l;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lyn/l;-><init>(Lio/bidmachine/media3/exoplayer/video/p$a;Lzm/i0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v8, Lyn/k;

    .line 6
    .line 7
    move-object v1, v8

    .line 8
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move-wide v4, p2

    .line 11
    move-wide v6, p4

    .line 12
    invoke-direct/range {v1 .. v7}, Lyn/k;-><init>(Lio/bidmachine/media3/exoplayer/video/p$a;Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lyn/j;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lyn/j;-><init>(Lio/bidmachine/media3/exoplayer/video/p$a;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public m(Lgn/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lgn/b;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lyn/p;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lyn/p;-><init>(Lio/bidmachine/media3/exoplayer/video/p$a;Lgn/b;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public n(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lyn/o;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lyn/o;-><init>(Lio/bidmachine/media3/exoplayer/video/p$a;IJ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public o(Lgn/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lyn/q;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lyn/q;-><init>(Lio/bidmachine/media3/exoplayer/video/p$a;Lgn/b;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public p(Lio/bidmachine/media3/common/a;Lgn/c;)V
    .locals 2
    .param p2    # Lgn/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/p$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lyn/m;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lyn/m;-><init>(Lio/bidmachine/media3/exoplayer/video/p$a;Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
