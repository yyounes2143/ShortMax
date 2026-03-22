.class public final Lcom/google/android/exoplayer2/audio/b$a;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/b;
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

.field private final b:Lcom/google/android/exoplayer2/audio/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/b;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/audio/b;
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
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

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
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 17
    .line 18
    return-void
.end method

.method private synthetic A(IJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/s0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/google/android/exoplayer2/audio/b;

    .line 9
    .line 10
    move v2, p1

    .line 11
    move-wide v3, p2

    .line 12
    move-wide v5, p4

    .line 13
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/b;->k(IJJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/audio/b$a;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/b$a;->y(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->r(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->u(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/audio/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/b$a;->x(Lcom/google/android/exoplayer2/v0;Lr5/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/audio/b$a;Lr5/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->w(Lr5/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/audio/b$a;IJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/b$a;->A(IJJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/audio/b$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->z(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->s(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/google/android/exoplayer2/audio/b$a;Lr5/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->v(Lr5/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/b$a;->t(Ljava/lang/String;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic r(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/s0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/b;->e(Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic s(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/s0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/b;->b(Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic t(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/s0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/google/android/exoplayer2/audio/b;

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    move-wide v3, p2

    .line 12
    move-wide v5, p4

    .line 13
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/b;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic u(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/s0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/b;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic v(Lr5/e;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lr5/e;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 5
    .line 6
    invoke-static {v0}, Lb7/s0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/b;->o(Lr5/e;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic w(Lr5/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/s0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/b;->E(Lr5/e;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic x(Lcom/google/android/exoplayer2/v0;Lr5/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/s0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/b;->F(Lcom/google/android/exoplayer2/v0;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 13
    .line 14
    invoke-static {v0}, Lb7/s0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    .line 19
    .line 20
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/b;->p(Lcom/google/android/exoplayer2/v0;Lr5/g;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic y(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/s0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/b;->g(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic z(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->b:Lcom/google/android/exoplayer2/audio/b;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/s0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/audio/b;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/b;->a(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public B(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lq5/m;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lq5/m;-><init>(Lcom/google/android/exoplayer2/audio/b$a;J)V

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

.method public C(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lq5/s;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lq5/s;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Z)V

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

.method public D(IJJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v8, Lq5/r;

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
    invoke-direct/range {v1 .. v7}, Lq5/r;-><init>(Lcom/google/android/exoplayer2/audio/b$a;IJJ)V

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

.method public k(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lq5/l;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lq5/l;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/Exception;)V

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

.method public l(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lq5/q;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lq5/q;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/Exception;)V

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

.method public m(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v8, Lq5/k;

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
    invoke-direct/range {v1 .. v7}, Lq5/k;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/String;JJ)V

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

.method public n(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lq5/j;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lq5/j;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Ljava/lang/String;)V

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

.method public o(Lr5/e;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lr5/e;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lq5/o;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lq5/o;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Lr5/e;)V

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

.method public p(Lr5/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lq5/n;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lq5/n;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Lr5/e;)V

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

.method public q(Lcom/google/android/exoplayer2/v0;Lr5/g;)V
    .locals 2
    .param p2    # Lr5/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lq5/p;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lq5/p;-><init>(Lcom/google/android/exoplayer2/audio/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;)V

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
