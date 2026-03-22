.class public final Lio/bidmachine/media3/exoplayer/audio/e$a;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/e;
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

.field private final b:Lio/bidmachine/media3/exoplayer/audio/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/e;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/media3/exoplayer/audio/e;
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
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

    .line 17
    .line 18
    return-void
.end method

.method private synthetic A(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic B(Lgn/b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lgn/b;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

    .line 5
    .line 6
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e;->r(Lgn/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic C(Lgn/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e;->s(Lgn/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic D(Lio/bidmachine/media3/common/a;Lgn/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/e;->E(Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic E(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/e;->g(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic F(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e;->a(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic G(IJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

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
    check-cast v1, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 9
    .line 10
    move v2, p1

    .line 11
    move-wide v3, p2

    .line 12
    move-wide v5, p4

    .line 13
    invoke-interface/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/audio/e;->k(IJJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/media3/exoplayer/audio/e$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/audio/e$a;->z(Ljava/lang/String;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/media3/exoplayer/audio/e$a;Lgn/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->B(Lgn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/media3/exoplayer/audio/e$a;Lio/bidmachine/media3/common/a;Lgn/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/e$a;->D(Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lio/bidmachine/media3/exoplayer/audio/e$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->y(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lio/bidmachine/media3/exoplayer/audio/e$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->F(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lio/bidmachine/media3/exoplayer/audio/e$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->v(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lio/bidmachine/media3/exoplayer/audio/e$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->A(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lio/bidmachine/media3/exoplayer/audio/e$a;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/e$a;->E(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lio/bidmachine/media3/exoplayer/audio/e$a;IJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/audio/e$a;->G(IJJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lio/bidmachine/media3/exoplayer/audio/e$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->w(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lio/bidmachine/media3/exoplayer/audio/e$a;Lgn/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->C(Lgn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lio/bidmachine/media3/exoplayer/audio/e$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->x(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic v(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e;->e(Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic w(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e;->b(Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic x(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e;->n(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic y(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e;->l(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic z(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->b:Lio/bidmachine/media3/exoplayer/audio/e;

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
    check-cast v1, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    move-wide v3, p2

    .line 12
    move-wide v5, p4

    .line 13
    invoke-interface/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/audio/e;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public H(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lin/g;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lin/g;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;J)V

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

.method public I(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lin/k;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lin/k;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;Z)V

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

.method public J(IJJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v8, Lin/b;

    .line 6
    .line 7
    move-object v1, v8

    .line 8
    move-object v2, p0

    .line 9
    move v3, p1

    .line 10
    move-wide v4, p2

    .line 11
    move-wide v6, p4

    .line 12
    invoke-direct/range {v1 .. v7}, Lin/b;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;IJJ)V

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

.method public m(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lin/a;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lin/a;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;Ljava/lang/Exception;)V

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

.method public n(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lin/j;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lin/j;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;Ljava/lang/Exception;)V

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

.method public o(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lin/c;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lin/c;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

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

.method public p(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lin/l;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lin/l;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

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

.method public q(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v8, Lin/e;

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
    invoke-direct/range {v1 .. v7}, Lin/e;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;Ljava/lang/String;JJ)V

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

.method public r(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lin/d;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lin/d;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;Ljava/lang/String;)V

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

.method public s(Lgn/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lgn/b;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lin/f;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lin/f;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;Lgn/b;)V

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

.method public t(Lgn/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lin/h;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lin/h;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;Lgn/b;)V

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

.method public u(Lio/bidmachine/media3/common/a;Lgn/c;)V
    .locals 2
    .param p2    # Lgn/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/e$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lin/i;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lin/i;-><init>(Lio/bidmachine/media3/exoplayer/audio/e$a;Lio/bidmachine/media3/common/a;Lgn/c;)V

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
