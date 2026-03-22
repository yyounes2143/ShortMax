.class public Lhn/r1;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"

# interfaces
.implements Lhn/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhn/r1$a;
    }
.end annotation


# instance fields
.field private final a:Lcn/h;

.field private final b:Lzm/a0$b;

.field private final c:Lzm/a0$c;

.field private final d:Lhn/r1$a;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lhn/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/q<",
            "Lhn/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lzm/w;

.field private h:Lcn/n;

.field private i:Z


# direct methods
.method public constructor <init>(Lcn/h;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcn/h;

    .line 9
    .line 10
    iput-object v0, p0, Lhn/r1;->a:Lcn/h;

    .line 11
    .line 12
    new-instance v0, Lcn/q;

    .line 13
    .line 14
    invoke-static {}, Lcn/m0;->X()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lhn/j;

    .line 19
    .line 20
    invoke-direct {v2}, Lhn/j;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, p1, v2}, Lcn/q;-><init>(Landroid/os/Looper;Lcn/h;Lcn/q$b;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lhn/r1;->f:Lcn/q;

    .line 27
    .line 28
    new-instance p1, Lzm/a0$b;

    .line 29
    .line 30
    invoke-direct {p1}, Lzm/a0$b;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lhn/r1;->b:Lzm/a0$b;

    .line 34
    .line 35
    new-instance v0, Lzm/a0$c;

    .line 36
    .line 37
    invoke-direct {v0}, Lzm/a0$c;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lhn/r1;->c:Lzm/a0$c;

    .line 41
    .line 42
    new-instance v0, Lhn/r1$a;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Lhn/r1$a;-><init>(Lzm/a0$b;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lhn/r1;->d:Lhn/r1$a;

    .line 48
    .line 49
    new-instance p1, Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lhn/r1;->e:Landroid/util/SparseArray;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic A0(Lhn/b$a;Lsn/j;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->G2(Lhn/b$a;Lsn/j;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lhn/r1;->g:Lzm/w;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lhn/r1;->d:Lhn/r1$a;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lhn/r1$a;->f(Lio/bidmachine/media3/exoplayer/source/r$b;)Lzm/a0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, p2}, Lhn/r1;->x1(Lio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lzm/a0;->a:Lzm/a0;

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1, p2}, Lhn/r1;->y1(Lzm/a0;ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    return-object p1

    .line 28
    :cond_1
    iget-object p2, p0, Lhn/r1;->g:Lzm/w;

    .line 29
    .line 30
    invoke-interface {p2}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lzm/a0;->p()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ge p1, v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    sget-object p2, Lzm/a0;->a:Lzm/a0;

    .line 42
    .line 43
    :goto_1
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p2, p1, v0}, Lhn/r1;->y1(Lzm/a0;ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method private static synthetic A2(Lhn/b$a;ZLhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->h0(Lhn/b$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B0(Lhn/b$a;Lgn/b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->L2(Lhn/b$a;Lgn/b;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private B1()Lhn/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lhn/r1;->d:Lhn/r1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhn/r1$a;->g()Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lhn/r1;->x1(Lio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic B2(Lhn/b$a;ZLhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->B(Lhn/b$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C0(Lhn/b$a;ZLhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->g2(Lhn/b$a;ZLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private C1()Lhn/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lhn/r1;->d:Lhn/r1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhn/r1$a;->h()Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lhn/r1;->x1(Lio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic C2(Lhn/b$a;IILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lhn/b;->s0(Lhn/b$a;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D0(Lhn/b$a;Lzm/w$b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->S1(Lhn/b$a;Lzm/w$b;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private D1(Lio/bidmachine/media3/common/PlaybackException;)Lhn/b$a;
    .locals 1
    .param p1    # Lio/bidmachine/media3/common/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 6
    .line 7
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->o:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lhn/r1;->x1(Lio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private static synthetic D2(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->h(Lhn/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E0(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->r2(Lhn/b$a;ILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic E1(Lhn/b;Lzm/n;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic E2(Lhn/b$a;Lzm/d0;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->E(Lhn/b$a;Lzm/d0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F0(Lhn/b$a;IJJLhn/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lhn/r1;->R1(Lhn/b$a;IJJLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic F1(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lhn/b;->N(Lhn/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic F2(Lhn/b$a;Lzm/e0;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->v0(Lhn/b$a;Lzm/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G0(Lhn/b$a;Lio/bidmachine/media3/common/a;Lgn/c;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhn/r1;->L1(Lhn/b$a;Lio/bidmachine/media3/common/a;Lgn/c;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G1(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->q0(Lhn/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G2(Lhn/b$a;Lsn/j;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->l(Lhn/b$a;Lsn/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H0(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->c2(Lhn/b$a;ILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic H1(Lhn/b$a;Ljava/lang/String;JJLhn/b;)V
    .locals 7

    .line 1
    invoke-interface {p6, p0, p1, p2, p3}, Lhn/b;->n(Lhn/b$a;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    move-object v0, p6

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-wide v3, p4

    .line 8
    move-wide v5, p2

    .line 9
    invoke-interface/range {v0 .. v6}, Lhn/b;->K(Lhn/b$a;Ljava/lang/String;JJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static synthetic H2(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->b0(Lhn/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I0(Lhn/b$a;Lio/bidmachine/media3/common/PlaybackException;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->t2(Lhn/b$a;Lio/bidmachine/media3/common/PlaybackException;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic I1(Lhn/b$a;Ljava/lang/String;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->r(Lhn/b$a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic I2(Lhn/b$a;Ljava/lang/String;JJLhn/b;)V
    .locals 7

    .line 1
    invoke-interface {p6, p0, p1, p2, p3}, Lhn/b;->L(Lhn/b$a;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    move-object v0, p6

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-wide v3, p4

    .line 8
    move-wide v5, p2

    .line 9
    invoke-interface/range {v0 .. v6}, Lhn/b;->W(Lhn/b$a;Ljava/lang/String;JJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic J0(Lhn/b$a;ZLhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->B2(Lhn/b$a;ZLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic J1(Lhn/b$a;Lgn/b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->w0(Lhn/b$a;Lgn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic J2(Lhn/b$a;Ljava/lang/String;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->c(Lhn/b$a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K0(Lhn/b$a;JILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lhn/r1;->M2(Lhn/b$a;JILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic K1(Lhn/b$a;Lgn/b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->j(Lhn/b$a;Lgn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic K2(Lhn/b$a;Lgn/b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->q(Lhn/b$a;Lgn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L0(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->s2(Lhn/b$a;ILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic L1(Lhn/b$a;Lio/bidmachine/media3/common/a;Lgn/c;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lhn/b;->T(Lhn/b$a;Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic L2(Lhn/b$a;Lgn/b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->g(Lhn/b$a;Lgn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M0(Lhn/b$a;Lzm/s;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->n2(Lhn/b$a;Lzm/s;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic M1(Lhn/b$a;JLhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lhn/b;->f0(Lhn/b$a;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic M2(Lhn/b$a;JILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2, p3}, Lhn/b;->g0(Lhn/b$a;JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N0(Lhn/b$a;IJJLhn/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lhn/r1;->T1(Lhn/b$a;IJJLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic N1(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->a(Lhn/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic N2(Lhn/b$a;Lio/bidmachine/media3/common/a;Lgn/c;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lhn/b;->d(Lhn/b$a;Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O0(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->d2(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic O1(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->d0(Lhn/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic O2(Lhn/b$a;Lzm/i0;Lhn/b;)V
    .locals 6

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->X(Lhn/b$a;Lzm/i0;)V

    .line 2
    .line 3
    .line 4
    iget v2, p1, Lzm/i0;->a:I

    .line 5
    .line 6
    iget v3, p1, Lzm/i0;->b:I

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    iget v5, p1, Lzm/i0;->d:F

    .line 10
    .line 11
    move-object v0, p2

    .line 12
    move-object v1, p0

    .line 13
    invoke-interface/range {v0 .. v5}, Lhn/b;->j0(Lhn/b$a;IIIF)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic P0(Lhn/b$a;JLhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhn/r1;->M1(Lhn/b$a;JLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic P1(Lhn/b$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->A(Lhn/b$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic P2(Lhn/b$a;FLhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->t(Lhn/b$a;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q0(Lhn/b$a;Lsn/i;Lsn/j;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhn/r1;->j2(Lhn/b$a;Lsn/i;Lsn/j;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Q1(Lhn/b$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->t0(Lhn/b$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Q2(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lhn/b;->F(Lhn/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R0(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhn/r1;->b2(Lhn/b$a;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic R1(Lhn/b$a;IJJLhn/b;)V
    .locals 7

    .line 1
    move-object v0, p6

    .line 2
    move-object v1, p0

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move-wide v5, p4

    .line 6
    invoke-interface/range {v0 .. v6}, Lhn/b;->D(Lhn/b$a;IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic R2(Lzm/w;Lhn/b;Lzm/n;)V
    .locals 2

    .line 1
    new-instance v0, Lhn/b$b;

    .line 2
    .line 3
    iget-object v1, p0, Lhn/r1;->e:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-direct {v0, p3, v1}, Lhn/b$b;-><init>(Lzm/n;Landroid/util/SparseArray;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1, v0}, Lhn/b;->p0(Lzm/w;Lhn/b$b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic S0(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhn/r1;->Q2(Lhn/b$a;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic S1(Lhn/b$a;Lzm/w$b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->M(Lhn/b$a;Lzm/w$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private S2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/i1;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lhn/i1;-><init>(Lhn/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x404

    .line 11
    .line 12
    invoke-virtual {p0, v0, v2, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lhn/r1;->f:Lcn/q;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcn/q;->j()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic T0(Lhn/b$a;Lzm/t;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->o2(Lhn/b$a;Lzm/t;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic T1(Lhn/b$a;IJJLhn/b;)V
    .locals 7

    .line 1
    move-object v0, p6

    .line 2
    move-object v1, p0

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move-wide v5, p4

    .line 6
    invoke-interface/range {v0 .. v6}, Lhn/b;->i0(Lhn/b$a;IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic U0(Lhn/b$a;Lsn/j;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->Y1(Lhn/b$a;Lsn/j;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic U1(Lhn/b$a;Ljava/util/List;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->o0(Lhn/b$a;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V0(Lhn/b$a;Lsn/i;Lsn/j;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhn/r1;->i2(Lhn/b$a;Lsn/i;Lsn/j;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic V1(Lhn/b$a;Lbn/b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->S(Lhn/b$a;Lbn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic W0(Lhn/b$a;Lgn/b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->K1(Lhn/b$a;Lgn/b;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic W1(Lhn/b$a;Lzm/k;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->k(Lhn/b$a;Lzm/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X0(Lhn/b$a;FLhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->P2(Lhn/b$a;FLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic X1(Lhn/b$a;IZLhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lhn/b;->r0(Lhn/b$a;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Y0(Lhn/b$a;Ljava/lang/String;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->J2(Lhn/b$a;Ljava/lang/String;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Y1(Lhn/b$a;Lsn/j;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->u0(Lhn/b$a;Lsn/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z0(Lhn/b$a;Lzm/v;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->q2(Lhn/b$a;Lzm/v;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Z1(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lhn/b;->n0(Lhn/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a1(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->G1(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic a2(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lhn/b;->R(Lhn/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b1(Lhn/b$a;ILzm/w$e;Lzm/w$e;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lhn/r1;->w2(Lhn/b$a;ILzm/w$e;Lzm/w$e;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic b2(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lhn/b;->e(Lhn/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c1(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhn/r1;->F1(Lhn/b$a;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic c2(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0}, Lhn/b;->P(Lhn/b$a;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p0, p1}, Lhn/b;->p(Lhn/b$a;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic d1(Lhn/r1;Lzm/w;Lhn/b;Lzm/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lhn/r1;->R2(Lzm/w;Lhn/b;Lzm/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic d2(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->m(Lhn/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e1(Lhn/b$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->Q1(Lhn/b$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic e2(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lhn/b;->v(Lhn/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f1(Lhn/b$a;ZLhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->h2(Lhn/b$a;ZLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic f2(Lhn/b$a;IJLhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2, p3}, Lhn/b;->Y(Lhn/b$a;IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g1(Lhn/b$a;Lzm/i0;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->O2(Lhn/b$a;Lzm/i0;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic g2(Lhn/b$a;ZLhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->b(Lhn/b$a;Z)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p0, p1}, Lhn/b;->y(Lhn/b$a;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic h0(Lhn/b$a;Lgn/b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->J1(Lhn/b$a;Lgn/b;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h1(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->N1(Lhn/b$a;ILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic h2(Lhn/b$a;ZLhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->x0(Lhn/b$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i0(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->O1(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i1(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhn/r1;->Z1(Lhn/b$a;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic i2(Lhn/b$a;Lsn/i;Lsn/j;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lhn/b;->l0(Lhn/b$a;Lsn/i;Lsn/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j0(Lhn/b$a;Lio/bidmachine/media3/common/a;Lgn/c;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhn/r1;->N2(Lhn/b$a;Lio/bidmachine/media3/common/a;Lgn/c;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j1(Lhn/b$a;Lsn/i;Lsn/j;ILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lhn/r1;->l2(Lhn/b$a;Lsn/i;Lsn/j;ILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic j2(Lhn/b$a;Lsn/i;Lsn/j;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lhn/b;->O(Lhn/b$a;Lsn/i;Lsn/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lhn/b$a;Lsn/i;Lsn/j;Ljava/io/IOException;ZLhn/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lhn/r1;->k2(Lhn/b$a;Lsn/i;Lsn/j;Ljava/io/IOException;ZLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k1(Lhn/b$a;ZILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhn/r1;->v2(Lhn/b$a;ZILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic k2(Lhn/b$a;Lsn/i;Lsn/j;Ljava/io/IOException;ZLhn/b;)V
    .locals 6

    .line 1
    move-object v0, p5

    .line 2
    move-object v1, p0

    .line 3
    move-object v2, p1

    .line 4
    move-object v3, p2

    .line 5
    move-object v4, p3

    .line 6
    move v5, p4

    .line 7
    invoke-interface/range {v0 .. v5}, Lhn/b;->f(Lhn/b$a;Lsn/i;Lsn/j;Ljava/io/IOException;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic l0(Lhn/b$a;ZLhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->A2(Lhn/b$a;ZLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l1(Lhn/b$a;Ljava/lang/String;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->I1(Lhn/b$a;Ljava/lang/String;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic l2(Lhn/b$a;Lsn/i;Lsn/j;ILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2}, Lhn/b;->u(Lhn/b$a;Lsn/i;Lsn/j;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, p0, p1, p2, p3}, Lhn/b;->H(Lhn/b$a;Lsn/i;Lsn/j;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic m0(Lhn/b$a;Ljava/util/List;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->U1(Lhn/b$a;Ljava/util/List;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m1(Lhn/b$a;Lzm/e0;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->F2(Lhn/b$a;Lzm/e0;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic m2(Lhn/b$a;Lzm/q;ILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lhn/b;->C(Lhn/b$a;Lzm/q;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lhn/b;Lzm/n;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhn/r1;->E1(Lhn/b;Lzm/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n1(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->H2(Lhn/b$a;Ljava/lang/Exception;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic n2(Lhn/b$a;Lzm/s;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->z(Lhn/b$a;Lzm/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lhn/b$a;Lzm/k;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->W1(Lhn/b$a;Lzm/k;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o1(Lhn/b$a;Ljava/lang/String;JJLhn/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lhn/r1;->H1(Lhn/b$a;Ljava/lang/String;JJLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic o2(Lhn/b$a;Lzm/t;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->V(Lhn/b$a;Lzm/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->D2(Lhn/b$a;ILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p1(Lhn/b$a;IIZLhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lhn/r1;->y2(Lhn/b$a;IIZLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic p2(Lhn/b$a;ZILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lhn/b;->i(Lhn/b$a;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q0(Lhn/b$a;IILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhn/r1;->C2(Lhn/b$a;IILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q1(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhn/r1;->a2(Lhn/b$a;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic q2(Lhn/b$a;Lzm/v;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->o(Lhn/b$a;Lzm/v;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r0(Lhn/b$a;Lzm/d0;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->E2(Lhn/b$a;Lzm/d0;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r1(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->z2(Lhn/b$a;ILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic r2(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->e0(Lhn/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s0(Lhn/b$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->P1(Lhn/b$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s1(Lhn/b$a;ZILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhn/r1;->p2(Lhn/b$a;ZILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic s2(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->Q(Lhn/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t0(Lhn/b$a;IJLhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lhn/r1;->f2(Lhn/b$a;IJLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t1(Lhn/b$a;IZLhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhn/r1;->X1(Lhn/b$a;IZLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic t2(Lhn/b$a;Lio/bidmachine/media3/common/PlaybackException;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->U(Lhn/b$a;Lio/bidmachine/media3/common/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u0(Lhn/b$a;Ljava/lang/String;JJLhn/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lhn/r1;->I2(Lhn/b$a;Ljava/lang/String;JJLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u1(Lhn/b$a;Ljava/lang/Object;JLhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lhn/r1;->x2(Lhn/b$a;Ljava/lang/Object;JLhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic u2(Lhn/b$a;Lio/bidmachine/media3/common/PlaybackException;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->k0(Lhn/b$a;Lio/bidmachine/media3/common/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v0(Lhn/b$a;Lgn/b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->K2(Lhn/b$a;Lgn/b;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v1(Lhn/b$a;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhn/r1;->e2(Lhn/b$a;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic v2(Lhn/b$a;ZILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lhn/b;->c0(Lhn/b$a;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w0(Lhn/b$a;Lio/bidmachine/media3/common/PlaybackException;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->u2(Lhn/b$a;Lio/bidmachine/media3/common/PlaybackException;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic w2(Lhn/b$a;ILzm/w$e;Lzm/w$e;Lhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1}, Lhn/b;->w(Lhn/b$a;I)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, p0, p2, p3, p1}, Lhn/b;->Z(Lhn/b$a;Lzm/w$e;Lzm/w$e;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic x0(Lhn/r1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhn/r1;->S2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private x1(Lio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;
    .locals 3
    .param p1    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lhn/r1;->g:Lzm/w;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lhn/r1;->d:Lhn/r1$a;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lhn/r1$a;->f(Lio/bidmachine/media3/exoplayer/source/r$b;)Lzm/a0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    if-eqz p1, :cond_2

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v2, p0, Lhn/r1;->b:Lzm/a0$b;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v0, v0, Lzm/a0$b;->c:I

    .line 31
    .line 32
    invoke-virtual {p0, v1, v0, p1}, Lhn/r1;->y1(Lzm/a0;ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_2
    :goto_1
    iget-object p1, p0, Lhn/r1;->g:Lzm/w;

    .line 38
    .line 39
    invoke-interface {p1}, Lzm/w;->x()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v1, p0, Lhn/r1;->g:Lzm/w;

    .line 44
    .line 45
    invoke-interface {v1}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lzm/a0;->p()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ge p1, v2, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    sget-object v1, Lzm/a0;->a:Lzm/a0;

    .line 57
    .line 58
    :goto_2
    invoke-virtual {p0, v1, p1, v0}, Lhn/r1;->y1(Lzm/a0;ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method private static synthetic x2(Lhn/b$a;Ljava/lang/Object;JLhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2, p3}, Lhn/b;->m0(Lhn/b$a;Ljava/lang/Object;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y0(Lhn/b$a;Lzm/q;ILhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhn/r1;->m2(Lhn/b$a;Lzm/q;ILhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic y2(Lhn/b$a;IIZLhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2, p3}, Lhn/b;->a0(Lhn/b$a;IIZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z0(Lhn/b$a;Lbn/b;Lhn/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhn/r1;->V1(Lhn/b$a;Lbn/b;Lhn/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private z1()Lhn/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lhn/r1;->d:Lhn/r1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhn/r1$a;->e()Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lhn/r1;->x1(Lio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic z2(Lhn/b$a;ILhn/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lhn/b;->I(Lhn/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/t;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/t;-><init>(Lhn/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x4

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final B()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lhn/r1;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lhn/r1;->i:Z

    .line 11
    .line 12
    new-instance v1, Lhn/o;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lhn/o;-><init>(Lhn/b$a;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-virtual {p0, v0, v2, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public C(Lbn/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/n;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/n;-><init>(Lhn/b$a;Lbn/b;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1b

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final D(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/o1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lhn/o1;-><init>(Lhn/b$a;II)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x18

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final E(Lio/bidmachine/media3/common/a;Lgn/c;)V
    .locals 2
    .param p2    # Lgn/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/f0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lhn/f0;-><init>(Lhn/b$a;Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f1

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final F(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/x;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/x;-><init>(Lhn/b$a;Z)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final G(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/w;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/w;-><init>(Lhn/b$a;F)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x16

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final H(Lzm/a0;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lhn/r1;->d:Lhn/r1$a;

    .line 2
    .line 3
    iget-object v0, p0, Lhn/r1;->g:Lzm/w;

    .line 4
    .line 5
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lzm/w;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lhn/r1$a;->l(Lzm/w;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lhn/d;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Lhn/d;-><init>(Lhn/b$a;I)V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p1, p2, v0}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final I(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/e0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/e0;-><init>(Lhn/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x15

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public J(Lzm/k;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/a1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/a1;-><init>(Lhn/b$a;Lzm/k;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1d

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final K(ILio/bidmachine/media3/exoplayer/source/r$b;Ljava/lang/Exception;)V
    .locals 0
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/z0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lhn/z0;-><init>(Lhn/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x400

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final L(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 2
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/r$b;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/source/r$b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhn/r1;->d:Lhn/r1$a;

    .line 2
    .line 3
    iget-object v1, p0, Lhn/r1;->g:Lzm/w;

    .line 4
    .line 5
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lzm/w;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, v1}, Lhn/r1$a;->k(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/r$b;Lzm/w;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public M(Lio/bidmachine/media3/common/PlaybackException;)V
    .locals 2
    .param p1    # Lio/bidmachine/media3/common/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lhn/r1;->D1(Lio/bidmachine/media3/common/PlaybackException;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/p1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/p1;-><init>(Lhn/b$a;Lio/bidmachine/media3/common/PlaybackException;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xa

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final N(ILio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/h1;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lhn/h1;-><init>(Lhn/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x402

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final O(ILio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/v0;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lhn/v0;-><init>(Lhn/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x403

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final P(Lzm/w$e;Lzm/w$e;I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p3, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lhn/r1;->i:Z

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lhn/r1;->d:Lhn/r1$a;

    .line 8
    .line 9
    iget-object v1, p0, Lhn/r1;->g:Lzm/w;

    .line 10
    .line 11
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lzm/w;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lhn/r1$a;->j(Lzm/w;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lhn/q;

    .line 25
    .line 26
    invoke-direct {v1, v0, p3, p1, p2}, Lhn/q;-><init>(Lhn/b$a;ILzm/w$e;Lzm/w$e;)V

    .line 27
    .line 28
    .line 29
    const/16 p1, 0xb

    .line 30
    .line 31
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final Q(Lzm/q;I)V
    .locals 2
    .param p1    # Lzm/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/a0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lhn/a0;-><init>(Lhn/b$a;Lzm/q;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public R(Lzm/w;Lzm/w$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final S(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;Ljava/io/IOException;Z)V
    .locals 6
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/m0;

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p4

    .line 11
    move-object v4, p5

    .line 12
    move v5, p6

    .line 13
    invoke-direct/range {v0 .. v5}, Lhn/m0;-><init>(Lhn/b$a;Lsn/i;Lsn/j;Ljava/io/IOException;Z)V

    .line 14
    .line 15
    .line 16
    const/16 p3, 0x3eb

    .line 17
    .line 18
    invoke-virtual {p0, p1, p3, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public T(Lzm/e0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/l;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/l;-><init>(Lhn/b$a;Lzm/e0;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected final T2(Lhn/b$a;ILcn/q$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b$a;",
            "I",
            "Lcn/q$a<",
            "Lhn/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhn/r1;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lhn/r1;->f:Lcn/q;

    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Lcn/q;->l(ILcn/q$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final U(Lio/bidmachine/media3/common/PlaybackException;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lhn/r1;->D1(Lio/bidmachine/media3/common/PlaybackException;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/u0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/u0;-><init>(Lhn/b$a;Lio/bidmachine/media3/common/PlaybackException;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xa

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final V(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;)V
    .locals 0
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/i0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lhn/i0;-><init>(Lhn/b$a;Lsn/j;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3ed

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final W(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;)V
    .locals 0
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/k0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lhn/k0;-><init>(Lhn/b$a;Lsn/j;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3ec

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public X(Lzm/w;Landroid/os/Looper;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lhn/r1;->g:Lzm/w;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lhn/r1;->d:Lhn/r1$a;

    .line 6
    .line 7
    invoke-static {v0}, Lhn/r1$a;->a(Lhn/r1$a;)Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lzm/w;

    .line 29
    .line 30
    iput-object v0, p0, Lhn/r1;->g:Lzm/w;

    .line 31
    .line 32
    iget-object v0, p0, Lhn/r1;->a:Lcn/h;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {v0, p2, v1}, Lcn/h;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcn/n;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lhn/r1;->h:Lcn/n;

    .line 40
    .line 41
    iget-object v0, p0, Lhn/r1;->f:Lcn/q;

    .line 42
    .line 43
    new-instance v1, Lhn/q1;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1}, Lhn/q1;-><init>(Lhn/r1;Lzm/w;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2, v1}, Lcn/q;->e(Landroid/os/Looper;Lcn/q$b;)Lcn/q;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lhn/r1;->f:Lcn/q;

    .line 53
    .line 54
    return-void
.end method

.method public final Y(ILio/bidmachine/media3/exoplayer/source/r$b;I)V
    .locals 0
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/s0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lhn/s0;-><init>(Lhn/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3fe

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Z(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;)V
    .locals 0
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/q0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3, p4}, Lhn/q0;-><init>(Lhn/b$a;Lsn/i;Lsn/j;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3ea

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/m1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/m1;-><init>(Lhn/b$a;Z)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x17

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public a0(Lzm/d0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/z;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/z;-><init>(Lhn/b$a;Lzm/d0;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x13

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/x0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/x0;-><init>(Lhn/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f6

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public b0(IIZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/g;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2, p3}, Lhn/g;-><init>(Lhn/b$a;IIZ)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x409

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/s;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/s;-><init>(Lhn/b$a;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fb

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public c0(Lhn/b;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lhn/r1;->f:Lcn/q;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcn/q;->c(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/e;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/e;-><init>(Lhn/b$a;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f4

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d0(ILio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/d1;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lhn/d1;-><init>(Lhn/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x401

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/i;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/i;-><init>(Lhn/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x405

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public e0(Lzm/s;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/c;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/c;-><init>(Lhn/b$a;Lzm/s;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xe

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->B1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/h0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2, p3}, Lhn/h0;-><init>(Lhn/b$a;JI)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fd

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public f0(Lzm/w$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/n1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/n1;-><init>(Lhn/b$a;Lzm/w$b;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xd

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/y0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lhn/y0;-><init>(Lhn/b$a;J)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f2

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g0(ILio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/k1;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lhn/k1;-><init>(Lhn/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x3ff

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/f;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/f;-><init>(Lhn/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x406

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final i(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;I)V
    .locals 0
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/l0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3, p4, p5}, Lhn/l0;-><init>(Lhn/b$a;Lsn/i;Lsn/j;I)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3e8

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final j(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/t0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2, p3}, Lhn/t0;-><init>(Lhn/b$a;Ljava/lang/Object;J)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1a

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final k(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lhn/e1;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move v2, p1

    .line 10
    move-wide v3, p2

    .line 11
    move-wide v5, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lhn/e1;-><init>(Lhn/b$a;IJJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3f3

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public l(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/g1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/g1;-><init>(Lhn/b$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x408

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final m(Lzm/i0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/n0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/n0;-><init>(Lhn/b$a;Lzm/i0;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x19

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public n(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/l1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/l1;-><init>(Lhn/b$a;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x407

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final o(Lgn/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/p0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/p0;-><init>(Lhn/b$a;Lgn/b;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f7

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lhn/p;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move-wide v3, p4

    .line 11
    move-wide v5, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lhn/p;-><init>(Lhn/b$a;Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3f0

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lhn/r1;->z1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lhn/j1;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move v2, p1

    .line 10
    move-wide v3, p2

    .line 11
    move-wide v5, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lhn/j1;-><init>(Lhn/b$a;IJJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3ee

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbn/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/f1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/f1;-><init>(Lhn/b$a;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1b

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->B1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/w0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2, p3}, Lhn/w0;-><init>(Lhn/b$a;IJ)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fa

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/u;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lhn/u;-><init>(Lhn/b$a;ZI)V

    .line 8
    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/y;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/y;-><init>(Lhn/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/m;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/m;-><init>(Lhn/b$a;Z)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x9

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lhn/r;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move-wide v3, p4

    .line 11
    move-wide v5, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lhn/r;-><init>(Lhn/b$a;Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3f8

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final p(Lgn/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->B1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/r0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/r0;-><init>(Lhn/b$a;Lgn/b;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fc

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public q(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/o0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lhn/o0;-><init>(Lhn/b$a;IZ)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1e

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final r(Lgn/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->B1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/d0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/d0;-><init>(Lhn/b$a;Lgn/b;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f5

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public release()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lhn/r1;->h:Lcn/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcn/n;

    .line 8
    .line 9
    new-instance v1, Lhn/c1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lhn/c1;-><init>(Lhn/r1;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final s(Lgn/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/b1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/b1;-><init>(Lhn/b$a;Lgn/b;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3ef

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final t(Lzm/v;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/h;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/h;-><init>(Lhn/b$a;Lzm/v;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xc

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final u(Lio/bidmachine/media3/common/a;Lgn/c;)V
    .locals 2
    .param p2    # Lgn/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lhn/r1;->C1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/g0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lhn/g0;-><init>(Lhn/b$a;Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f9

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final v(Lzm/t;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/j0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/j0;-><init>(Lhn/b$a;Lzm/t;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1c

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final w(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/k;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lhn/k;-><init>(Lhn/b$a;ZI)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x5

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected final w1()Lhn/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lhn/r1;->d:Lhn/r1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhn/r1$a;->d()Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lhn/r1;->x1(Lio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final x(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;)V
    .locals 0
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lhn/r1;->A1(ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lhn/c0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3, p4}, Lhn/c0;-><init>(Lhn/b$a;Lsn/i;Lsn/j;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3e9

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public y(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/b0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/b0;-><init>(Lhn/b$a;Z)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x7

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected final y1(Lzm/a0;ILio/bidmachine/media3/exoplayer/source/r$b;)Lhn/b$a;
    .locals 17
    .param p3    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lzm/a0;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move-object v6, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object/from16 v6, p3

    .line 17
    .line 18
    :goto_0
    iget-object v1, v0, Lhn/r1;->a:Lcn/h;

    .line 19
    .line 20
    invoke-interface {v1}, Lcn/h;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iget-object v1, v0, Lhn/r1;->g:Lzm/w;

    .line 25
    .line 26
    invoke-interface {v1}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v4, v1}, Lzm/a0;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, v0, Lhn/r1;->g:Lzm/w;

    .line 37
    .line 38
    invoke-interface {v1}, Lzm/w;->x()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ne v5, v1, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_1
    const-wide/16 v7, 0x0

    .line 48
    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    invoke-virtual {v6}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_2

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget-object v1, v0, Lhn/r1;->g:Lzm/w;

    .line 60
    .line 61
    invoke-interface {v1}, Lzm/w;->getCurrentAdGroupIndex()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget v9, v6, Lio/bidmachine/media3/exoplayer/source/r$b;->b:I

    .line 66
    .line 67
    if-ne v1, v9, :cond_5

    .line 68
    .line 69
    iget-object v1, v0, Lhn/r1;->g:Lzm/w;

    .line 70
    .line 71
    invoke-interface {v1}, Lzm/w;->getCurrentAdIndexInAdGroup()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget v9, v6, Lio/bidmachine/media3/exoplayer/source/r$b;->c:I

    .line 76
    .line 77
    if-ne v1, v9, :cond_5

    .line 78
    .line 79
    iget-object v1, v0, Lhn/r1;->g:Lzm/w;

    .line 80
    .line 81
    invoke-interface {v1}, Lzm/w;->getCurrentPosition()J

    .line 82
    .line 83
    .line 84
    move-result-wide v7

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    if-eqz v1, :cond_3

    .line 87
    .line 88
    iget-object v1, v0, Lhn/r1;->g:Lzm/w;

    .line 89
    .line 90
    invoke-interface {v1}, Lzm/w;->getContentPosition()J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lzm/a0;->q()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    iget-object v1, v0, Lhn/r1;->c:Lzm/a0$c;

    .line 103
    .line 104
    invoke-virtual {v4, v5, v1}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lzm/a0$c;->b()J

    .line 109
    .line 110
    .line 111
    move-result-wide v7

    .line 112
    :cond_5
    :goto_2
    iget-object v1, v0, Lhn/r1;->d:Lhn/r1$a;

    .line 113
    .line 114
    invoke-virtual {v1}, Lhn/r1$a;->d()Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    new-instance v16, Lhn/b$a;

    .line 119
    .line 120
    iget-object v1, v0, Lhn/r1;->g:Lzm/w;

    .line 121
    .line 122
    invoke-interface {v1}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    iget-object v1, v0, Lhn/r1;->g:Lzm/w;

    .line 127
    .line 128
    invoke-interface {v1}, Lzm/w;->x()I

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    iget-object v1, v0, Lhn/r1;->g:Lzm/w;

    .line 133
    .line 134
    invoke-interface {v1}, Lzm/w;->getCurrentPosition()J

    .line 135
    .line 136
    .line 137
    move-result-wide v12

    .line 138
    iget-object v1, v0, Lhn/r1;->g:Lzm/w;

    .line 139
    .line 140
    invoke-interface {v1}, Lzm/w;->a()J

    .line 141
    .line 142
    .line 143
    move-result-wide v14

    .line 144
    move-object/from16 v1, v16

    .line 145
    .line 146
    move-object/from16 v4, p1

    .line 147
    .line 148
    move/from16 v5, p2

    .line 149
    .line 150
    invoke-direct/range {v1 .. v15}, Lhn/b$a;-><init>(JLzm/a0;ILio/bidmachine/media3/exoplayer/source/r$b;JLzm/a0;ILio/bidmachine/media3/exoplayer/source/r$b;JJ)V

    .line 151
    .line 152
    .line 153
    return-object v16
.end method

.method public final z(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhn/r1;->w1()Lhn/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhn/v;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lhn/v;-><init>(Lhn/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x6

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lhn/r1;->T2(Lhn/b$a;ILcn/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
