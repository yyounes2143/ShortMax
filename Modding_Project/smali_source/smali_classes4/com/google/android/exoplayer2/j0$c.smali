.class final Lcom/google/android/exoplayer2/j0$c;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lc7/x;
.implements Lcom/google/android/exoplayer2/audio/b;
.implements Lp6/o;
.implements Lg6/d;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$b;
.implements Lcom/google/android/exoplayer2/d$b;
.implements Lcom/google/android/exoplayer2/b$b;
.implements Lcom/google/android/exoplayer2/r1$b;
.implements Lcom/google/android/exoplayer2/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/j0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/j0;Lcom/google/android/exoplayer2/j0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/j0$c;-><init>(Lcom/google/android/exoplayer2/j0;)V

    return-void
.end method

.method public static synthetic B(Ljava/util/List;Lcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j0$c;->M(Ljava/util/List;Lcom/google/android/exoplayer2/l1$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j0$c;->P(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/l1$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j0$c;->R(Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/l1$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Lp6/f;Lcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j0$c;->N(Lp6/f;Lcom/google/android/exoplayer2/l1$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(ZLcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j0$c;->Q(ZLcom/google/android/exoplayer2/l1$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J(IZLcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/j0$c;->S(IZLcom/google/android/exoplayer2/l1$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lcom/google/android/exoplayer2/j0$c;Lcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/j0$c;->O(Lcom/google/android/exoplayer2/l1$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Lc7/z;Lcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/j0$c;->T(Lc7/z;Lcom/google/android/exoplayer2/l1$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic M(Ljava/util/List;Lcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l1$d;->onCues(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic N(Lp6/f;Lcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l1$d;->r(Lp6/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic O(Lcom/google/android/exoplayer2/l1$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->w0(Lcom/google/android/exoplayer2/j0;)Lcom/google/android/exoplayer2/z0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/l1$d;->J(Lcom/google/android/exoplayer2/z0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static synthetic P(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l1$d;->C(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Q(ZLcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l1$d;->a(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic R(Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l1$d;->P(Lcom/google/android/exoplayer2/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic S(IZLcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/l1$d;->q(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic T(Lc7/z;Lcom/google/android/exoplayer2/l1$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l1$d;->u(Lc7/z;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public C(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->t0(Lcom/google/android/exoplayer2/j0;)Lcom/google/android/exoplayer2/z0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z0;->b()Lcom/google/android/exoplayer2/z0$b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/z0$b;->I(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/z0$b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z0$b;->F()Lcom/google/android/exoplayer2/z0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/j0;->u0(Lcom/google/android/exoplayer2/j0;Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/z0;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->v0(Lcom/google/android/exoplayer2/j0;)Lcom/google/android/exoplayer2/z0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/google/android/exoplayer2/j0;->w0(Lcom/google/android/exoplayer2/j0;)Lcom/google/android/exoplayer2/z0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z0;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/j0;->x0(Lcom/google/android/exoplayer2/j0;Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/z0;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->O0(Lcom/google/android/exoplayer2/j0;)Lb7/p;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/google/android/exoplayer2/m0;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/m0;-><init>(Lcom/google/android/exoplayer2/j0$c;)V

    .line 54
    .line 55
    .line 56
    const/16 v2, 0xe

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Lb7/p;->i(ILb7/p$a;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->O0(Lcom/google/android/exoplayer2/j0;)Lb7/p;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/google/android/exoplayer2/n0;

    .line 68
    .line 69
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/n0;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 70
    .line 71
    .line 72
    const/16 p1, 0x1c

    .line 73
    .line 74
    invoke-virtual {v0, p1, v1}, Lb7/p;->i(ILb7/p$a;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/google/android/exoplayer2/j0;->O0(Lcom/google/android/exoplayer2/j0;)Lb7/p;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lb7/p;->f()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public E(Lr5/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->Q0(Lcom/google/android/exoplayer2/j0;Lr5/e;)Lr5/e;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lp5/a;->E(Lr5/e;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->q0(Lcom/google/android/exoplayer2/j0;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->r0(Lcom/google/android/exoplayer2/j0;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->O0(Lcom/google/android/exoplayer2/j0;)Lb7/p;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/google/android/exoplayer2/r0;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/r0;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    const/16 p1, 0x17

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Lb7/p;->l(ILb7/p$a;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lp5/a;->b(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lp5/a;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lp5/a;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lp5/a;->e(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lp5/a;->f(JI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lp5/a;->g(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public h(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lp5/a;->h(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/j0;->E0(Lcom/google/android/exoplayer2/j0;ZII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public j(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lp5/a;->j(Ljava/lang/Object;J)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/android/exoplayer2/j0;->P0(Lcom/google/android/exoplayer2/j0;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-ne p2, p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/j0;->O0(Lcom/google/android/exoplayer2/j0;)Lb7/p;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lo5/y;

    .line 25
    .line 26
    invoke-direct {p2}, Lo5/y;-><init>()V

    .line 27
    .line 28
    .line 29
    const/16 p3, 0x1a

    .line 30
    .line 31
    invoke-virtual {p1, p3, p2}, Lb7/p;->l(ILb7/p$a;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public k(IJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-interface/range {v1 .. v6}, Lp5/a;->k(IJJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public l(Lcom/google/android/exoplayer2/v0;Lr5/g;)V
    .locals 1
    .param p2    # Lr5/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->M0(Lcom/google/android/exoplayer2/j0;Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/v0;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lp5/a;->l(Lcom/google/android/exoplayer2/v0;Lr5/g;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public m(Lr5/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->K0(Lcom/google/android/exoplayer2/j0;Lr5/e;)Lr5/e;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lp5/a;->m(Lr5/e;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public n(Lr5/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lp5/a;->n(Lr5/e;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/j0;->M0(Lcom/google/android/exoplayer2/j0;Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/v0;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/j0;->K0(Lcom/google/android/exoplayer2/j0;Lr5/e;)Lr5/e;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public o(Lr5/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lp5/a;->o(Lr5/e;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/j0;->p0(Lcom/google/android/exoplayer2/j0;Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/v0;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/j0;->Q0(Lcom/google/android/exoplayer2/j0;Lr5/e;)Lr5/e;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-interface/range {v1 .. v6}, Lp5/a;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp6/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->O0(Lcom/google/android/exoplayer2/j0;)Lb7/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/exoplayer2/k0;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/k0;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x1b

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lb7/p;->l(ILb7/p$a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lp5/a;->onDroppedFrames(IJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->B0(Lcom/google/android/exoplayer2/j0;Landroid/graphics/SurfaceTexture;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 7
    .line 8
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/j0;->A0(Lcom/google/android/exoplayer2/j0;II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/j0;->z0(Lcom/google/android/exoplayer2/j0;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/j0;->A0(Lcom/google/android/exoplayer2/j0;II)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/j0;->A0(Lcom/google/android/exoplayer2/j0;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-interface/range {v1 .. v6}, Lp5/a;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/v0;Lr5/g;)V
    .locals 1
    .param p2    # Lr5/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->p0(Lcom/google/android/exoplayer2/j0;Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/v0;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->L0(Lcom/google/android/exoplayer2/j0;)Lp5/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lp5/a;->p(Lcom/google/android/exoplayer2/v0;Lr5/g;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public q(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/j0;->F0(Lcom/google/android/exoplayer2/j0;)Lcom/google/android/exoplayer2/r1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/j0;->G0(Lcom/google/android/exoplayer2/r1;)Lcom/google/android/exoplayer2/j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->H0(Lcom/google/android/exoplayer2/j0;)Lcom/google/android/exoplayer2/j;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/j;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->I0(Lcom/google/android/exoplayer2/j0;Lcom/google/android/exoplayer2/j;)Lcom/google/android/exoplayer2/j;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->O0(Lcom/google/android/exoplayer2/j0;)Lb7/p;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/google/android/exoplayer2/p0;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/p0;-><init>(Lcom/google/android/exoplayer2/j;)V

    .line 37
    .line 38
    .line 39
    const/16 p1, 0x1d

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Lb7/p;->l(ILb7/p$a;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public r(Lp6/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->s0(Lcom/google/android/exoplayer2/j0;Lp6/f;)Lp6/f;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->O0(Lcom/google/android/exoplayer2/j0;)Lb7/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/android/exoplayer2/l0;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/l0;-><init>(Lp6/f;)V

    .line 15
    .line 16
    .line 17
    const/16 p1, 0x1b

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lb7/p;->l(ILb7/p$a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public s(F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/j0;->C0(Lcom/google/android/exoplayer2/j0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {p1, p3, p4}, Lcom/google/android/exoplayer2/j0;->A0(Lcom/google/android/exoplayer2/j0;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->y0(Lcom/google/android/exoplayer2/j0;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 10
    .line 11
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->z0(Lcom/google/android/exoplayer2/j0;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/j0;->y0(Lcom/google/android/exoplayer2/j0;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/j0;->z0(Lcom/google/android/exoplayer2/j0;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/j0;->A0(Lcom/google/android/exoplayer2/j0;II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public t(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/j0;->z0(Lcom/google/android/exoplayer2/j0;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public u(Lc7/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->N0(Lcom/google/android/exoplayer2/j0;Lc7/z;)Lc7/z;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->O0(Lcom/google/android/exoplayer2/j0;)Lb7/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/android/exoplayer2/q0;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/q0;-><init>(Lc7/z;)V

    .line 15
    .line 16
    .line 17
    const/16 p1, 0x19

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lb7/p;->l(ILb7/p$a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public v(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j0;->getPlayWhenReady()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->D0(ZI)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/j0;->E0(Lcom/google/android/exoplayer2/j0;ZII)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public w(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j0;->z0(Lcom/google/android/exoplayer2/j0;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j0;->O0(Lcom/google/android/exoplayer2/j0;)Lb7/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/exoplayer2/o0;

    .line 8
    .line 9
    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/o0;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x1e

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lb7/p;->l(ILb7/p$a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public y(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0$c;->a:Lcom/google/android/exoplayer2/j0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/j0;->J0(Lcom/google/android/exoplayer2/j0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
