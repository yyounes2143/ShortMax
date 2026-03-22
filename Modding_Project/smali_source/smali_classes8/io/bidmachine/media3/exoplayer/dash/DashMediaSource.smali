.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/a;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$c;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$e;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$f;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$d;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$h;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$b;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
    }
.end annotation


# instance fields
.field private A:Lio/bidmachine/media3/exoplayer/upstream/Loader;

.field private B:Len/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C:Ljava/io/IOException;

.field private D:Landroid/os/Handler;

.field private E:Lzm/q$g;

.field private F:Landroid/net/Uri;

.field private G:Landroid/net/Uri;

.field private H:Lkn/c;

.field private I:Z

.field private J:J

.field private K:J

.field private L:J

.field private M:I

.field private N:J

.field private O:I

.field private P:Lzm/q;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final h:Z

.field private final i:Len/d$a;

.field private final j:Lio/bidmachine/media3/exoplayer/dash/a$a;

.field private final k:Lsn/e;

.field private final l:Lio/bidmachine/media3/exoplayer/drm/i;

.field private final m:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private final n:Ljn/b;

.field private final o:J

.field private final p:J

.field private final q:Lio/bidmachine/media3/exoplayer/source/s$a;

.field private final r:Lio/bidmachine/media3/exoplayer/upstream/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/upstream/c$a<",
            "+",
            "Lkn/c;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$e;

.field private final t:Ljava/lang/Object;

.field private final u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/exoplayer/dash/c;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/Runnable;

.field private final w:Ljava/lang/Runnable;

.field private final x:Lio/bidmachine/media3/exoplayer/dash/f$b;

.field private final y:Lwn/k;

.field private z:Len/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer.dash"

    .line 2
    .line 3
    invoke-static {v0}, Lzm/r;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>(Lzm/q;Lkn/c;Len/d$a;Lio/bidmachine/media3/exoplayer/upstream/c$a;Lio/bidmachine/media3/exoplayer/dash/a$a;Lsn/e;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;JJ)V
    .locals 0
    .param p2    # Lkn/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Len/d$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/media3/exoplayer/upstream/c$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lwn/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzm/q;",
            "Lkn/c;",
            "Len/d$a;",
            "Lio/bidmachine/media3/exoplayer/upstream/c$a<",
            "+",
            "Lkn/c;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/a$a;",
            "Lsn/e;",
            "Lwn/e;",
            "Lio/bidmachine/media3/exoplayer/drm/i;",
            "Lio/bidmachine/media3/exoplayer/upstream/b;",
            "JJ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/a;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->P:Lzm/q;

    .line 4
    iget-object p7, p1, Lzm/q;->d:Lzm/q$g;

    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->E:Lzm/q$g;

    .line 5
    iget-object p7, p1, Lzm/q;->b:Lzm/q$h;

    invoke-static {p7}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lzm/q$h;

    iget-object p7, p7, Lzm/q$h;->a:Landroid/net/Uri;

    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->F:Landroid/net/Uri;

    .line 6
    iget-object p1, p1, Lzm/q;->b:Lzm/q$h;

    iget-object p1, p1, Lzm/q$h;->a:Landroid/net/Uri;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->G:Landroid/net/Uri;

    .line 7
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 8
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->i:Len/d$a;

    .line 9
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->r:Lio/bidmachine/media3/exoplayer/upstream/c$a;

    .line 10
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->j:Lio/bidmachine/media3/exoplayer/dash/a$a;

    .line 11
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->l:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 12
    iput-object p9, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 13
    iput-wide p10, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->o:J

    .line 14
    iput-wide p12, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->p:J

    .line 15
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->k:Lsn/e;

    .line 16
    new-instance p1, Ljn/b;

    invoke-direct {p1}, Ljn/b;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->n:Ljn/b;

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 17
    :goto_0
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->h:Z

    const/4 p4, 0x0

    .line 18
    invoke-virtual {p0, p4}, Lio/bidmachine/media3/exoplayer/source/a;->t(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/source/s$a;

    move-result-object p5

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->q:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 19
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->t:Ljava/lang/Object;

    .line 20
    new-instance p5, Landroid/util/SparseArray;

    invoke-direct {p5}, Landroid/util/SparseArray;-><init>()V

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 21
    new-instance p5, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$c;

    invoke-direct {p5, p0, p4}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$c;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;)V

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->x:Lio/bidmachine/media3/exoplayer/dash/f$b;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->N:J

    .line 23
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->L:J

    if-eqz p3, :cond_1

    .line 24
    iget-boolean p2, p2, Lkn/c;->d:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Lcn/a;->g(Z)V

    .line 25
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->s:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$e;

    .line 26
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->v:Ljava/lang/Runnable;

    .line 27
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->w:Ljava/lang/Runnable;

    .line 28
    new-instance p1, Lwn/k$a;

    invoke-direct {p1}, Lwn/k$a;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->y:Lwn/k;

    goto :goto_1

    .line 29
    :cond_1
    new-instance p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$e;

    invoke-direct {p1, p0, p4}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$e;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->s:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$e;

    .line 30
    new-instance p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$f;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$f;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->y:Lwn/k;

    .line 31
    new-instance p1, Ljn/c;

    invoke-direct {p1, p0}, Ljn/c;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->v:Ljava/lang/Runnable;

    .line 32
    new-instance p1, Ljn/d;

    invoke-direct {p1, p0}, Ljn/d;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->w:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lzm/q;Lkn/c;Len/d$a;Lio/bidmachine/media3/exoplayer/upstream/c$a;Lio/bidmachine/media3/exoplayer/dash/a$a;Lsn/e;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;JJLio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;-><init>(Lzm/q;Lkn/c;Len/d$a;Lio/bidmachine/media3/exoplayer/upstream/c$a;Lio/bidmachine/media3/exoplayer/dash/a$a;Lsn/e;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;JJ)V

    return-void
.end method

.method public static synthetic B(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->Y(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->X(Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic F(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)Lio/bidmachine/media3/exoplayer/upstream/Loader;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->A:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic G(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)Ljava/io/IOException;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->C:Ljava/io/IOException;

    .line 2
    .line 3
    return-object p0
.end method

.method private static H(Lkn/g;JJ)J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    iget-wide v5, v0, Lkn/g;->b:J

    .line 8
    .line 9
    invoke-static {v5, v6}, Lcn/m0;->S0(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    invoke-static/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->L(Lkn/g;)Z

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    const-wide v8, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const/4 v10, 0x0

    .line 23
    move v11, v10

    .line 24
    :goto_0
    iget-object v12, v0, Lkn/g;->c:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v12

    .line 30
    if-ge v11, v12, :cond_6

    .line 31
    .line 32
    iget-object v12, v0, Lkn/g;->c:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    check-cast v12, Lkn/a;

    .line 39
    .line 40
    iget-object v13, v12, Lkn/a;->c:Ljava/util/List;

    .line 41
    .line 42
    iget v12, v12, Lkn/a;->b:I

    .line 43
    .line 44
    const/4 v14, 0x1

    .line 45
    if-eq v12, v14, :cond_0

    .line 46
    .line 47
    const/4 v15, 0x2

    .line 48
    if-eq v12, v15, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    move v14, v10

    .line 52
    :goto_1
    if-eqz v7, :cond_1

    .line 53
    .line 54
    if-nez v14, :cond_5

    .line 55
    .line 56
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    if-eqz v12, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    check-cast v12, Lkn/j;

    .line 68
    .line 69
    invoke-virtual {v12}, Lkn/j;->k()Ljn/e;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    if-nez v12, :cond_3

    .line 74
    .line 75
    add-long/2addr v5, v1

    .line 76
    return-wide v5

    .line 77
    :cond_3
    invoke-interface {v12, v1, v2, v3, v4}, Ljn/e;->i(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v13

    .line 81
    const-wide/16 v15, 0x0

    .line 82
    .line 83
    cmp-long v15, v13, v15

    .line 84
    .line 85
    if-nez v15, :cond_4

    .line 86
    .line 87
    return-wide v5

    .line 88
    :cond_4
    invoke-interface {v12, v1, v2, v3, v4}, Ljn/e;->b(JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v15

    .line 92
    add-long/2addr v15, v13

    .line 93
    const-wide/16 v13, 0x1

    .line 94
    .line 95
    sub-long v13, v15, v13

    .line 96
    .line 97
    invoke-interface {v12, v13, v14}, Ljn/e;->getTimeUs(J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v15

    .line 101
    add-long/2addr v15, v5

    .line 102
    invoke-interface {v12, v13, v14, v1, v2}, Ljn/e;->a(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v12

    .line 106
    add-long/2addr v12, v15

    .line 107
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide v8

    .line 111
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    return-wide v8
.end method

.method private static I(Lkn/g;JJ)J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    iget-wide v5, v0, Lkn/g;->b:J

    .line 8
    .line 9
    invoke-static {v5, v6}, Lcn/m0;->S0(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    invoke-static/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->L(Lkn/g;)Z

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    const/4 v8, 0x0

    .line 18
    move-wide v10, v5

    .line 19
    move v9, v8

    .line 20
    :goto_0
    iget-object v12, v0, Lkn/g;->c:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v12

    .line 26
    if-ge v9, v12, :cond_6

    .line 27
    .line 28
    iget-object v12, v0, Lkn/g;->c:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v12

    .line 34
    check-cast v12, Lkn/a;

    .line 35
    .line 36
    iget-object v13, v12, Lkn/a;->c:Ljava/util/List;

    .line 37
    .line 38
    iget v12, v12, Lkn/a;->b:I

    .line 39
    .line 40
    const/4 v14, 0x1

    .line 41
    if-eq v12, v14, :cond_0

    .line 42
    .line 43
    const/4 v15, 0x2

    .line 44
    if-eq v12, v15, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v14, v8

    .line 48
    :goto_1
    if-eqz v7, :cond_1

    .line 49
    .line 50
    if-nez v14, :cond_5

    .line 51
    .line 52
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    if-eqz v12, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    check-cast v12, Lkn/j;

    .line 64
    .line 65
    invoke-virtual {v12}, Lkn/j;->k()Ljn/e;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    if-nez v12, :cond_3

    .line 70
    .line 71
    return-wide v5

    .line 72
    :cond_3
    invoke-interface {v12, v1, v2, v3, v4}, Ljn/e;->i(JJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v13

    .line 76
    const-wide/16 v15, 0x0

    .line 77
    .line 78
    cmp-long v13, v13, v15

    .line 79
    .line 80
    if-nez v13, :cond_4

    .line 81
    .line 82
    return-wide v5

    .line 83
    :cond_4
    invoke-interface {v12, v1, v2, v3, v4}, Ljn/e;->b(JJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v13

    .line 87
    invoke-interface {v12, v13, v14}, Ljn/e;->getTimeUs(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v12

    .line 91
    add-long/2addr v12, v5

    .line 92
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v10

    .line 96
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    return-wide v10
.end method

.method private static J(Lkn/c;J)J
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lkn/c;->d()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkn/c;->c(I)Lkn/g;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-wide v3, v2, Lkn/g;->b:J

    .line 14
    .line 15
    invoke-static {v3, v4}, Lcn/m0;->S0(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-virtual {v0, v1}, Lkn/c;->f(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    invoke-static/range {p1 .. p2}, Lcn/m0;->S0(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    iget-wide v9, v0, Lkn/c;->a:J

    .line 28
    .line 29
    invoke-static {v9, v10}, Lcn/m0;->S0(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v9

    .line 33
    iget-wide v0, v0, Lkn/c;->e:J

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcn/m0;->S0(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    cmp-long v11, v0, v11

    .line 45
    .line 46
    const-wide/32 v12, 0x4c4b40

    .line 47
    .line 48
    .line 49
    if-eqz v11, :cond_0

    .line 50
    .line 51
    cmp-long v11, v0, v12

    .line 52
    .line 53
    if-gez v11, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-wide v0, v12

    .line 57
    :goto_0
    const/4 v11, 0x0

    .line 58
    move v12, v11

    .line 59
    :goto_1
    iget-object v13, v2, Lkn/g;->c:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-ge v12, v13, :cond_5

    .line 66
    .line 67
    iget-object v13, v2, Lkn/g;->c:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    check-cast v13, Lkn/a;

    .line 74
    .line 75
    iget-object v13, v13, Lkn/a;->c:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    if-eqz v14, :cond_1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_1
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    check-cast v13, Lkn/j;

    .line 89
    .line 90
    invoke-virtual {v13}, Lkn/j;->k()Ljn/e;

    .line 91
    .line 92
    .line 93
    move-result-object v13

    .line 94
    if-eqz v13, :cond_4

    .line 95
    .line 96
    add-long v14, v9, v3

    .line 97
    .line 98
    invoke-interface {v13, v5, v6, v7, v8}, Ljn/e;->c(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v16

    .line 102
    add-long v14, v14, v16

    .line 103
    .line 104
    sub-long/2addr v14, v7

    .line 105
    const-wide/16 v16, 0x0

    .line 106
    .line 107
    cmp-long v13, v14, v16

    .line 108
    .line 109
    if-gtz v13, :cond_2

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    const-wide/32 v16, 0x186a0

    .line 113
    .line 114
    .line 115
    sub-long v18, v0, v16

    .line 116
    .line 117
    cmp-long v13, v14, v18

    .line 118
    .line 119
    if-ltz v13, :cond_3

    .line 120
    .line 121
    cmp-long v13, v14, v0

    .line 122
    .line 123
    if-lez v13, :cond_4

    .line 124
    .line 125
    add-long v16, v0, v16

    .line 126
    .line 127
    cmp-long v13, v14, v16

    .line 128
    .line 129
    if-gez v13, :cond_4

    .line 130
    .line 131
    :cond_3
    move-wide v0, v14

    .line 132
    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    const-wide/16 v2, 0x3e8

    .line 136
    .line 137
    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 138
    .line 139
    invoke-static {v0, v1, v2, v3, v4}, Lj7/e;->b(JJLjava/math/RoundingMode;)J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    return-wide v0
.end method

.method private K()J
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->M:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    mul-int/lit16 v0, v0, 0x3e8

    .line 6
    .line 7
    const/16 v1, 0x1388

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-long v0, v0

    .line 14
    return-wide v0
.end method

.method private static L(Lkn/g;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lkn/g;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lkn/g;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lkn/a;

    .line 18
    .line 19
    iget v2, v2, Lkn/a;->b:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq v2, v3, :cond_1

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    if-ne v2, v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return v3

    .line 32
    :cond_2
    return v0
.end method

.method private static M(Lkn/g;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lkn/g;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lkn/g;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lkn/a;

    .line 18
    .line 19
    iget-object v2, v2, Lkn/a;->c:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lkn/j;

    .line 26
    .line 27
    invoke-virtual {v2}, Lkn/j;->k()Ljn/e;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v2}, Ljn/e;->h()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_2
    return v0
.end method

.method private synthetic N()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->Z(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->A:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lxn/b;->l(Lio/bidmachine/media3/exoplayer/upstream/Loader;Lxn/b$b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private X(Ljava/io/IOException;)V
    .locals 4

    .line 1
    const-string v0, "DashMediaSource"

    .line 2
    .line 3
    const-string v1, "Failed to resolve time offset."

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcn/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    sub-long/2addr v0, v2

    .line 17
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->L:J

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->Z(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private Y(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->L:J

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->Z(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private Z(Z)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->O:I

    .line 20
    .line 21
    if-lt v3, v4, :cond_0

    .line 22
    .line 23
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lio/bidmachine/media3/exoplayer/dash/c;

    .line 30
    .line 31
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 32
    .line 33
    iget v6, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->O:I

    .line 34
    .line 35
    sub-int/2addr v3, v6

    .line 36
    invoke-virtual {v4, v5, v3}, Lio/bidmachine/media3/exoplayer/dash/c;->G(Lkn/c;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lkn/c;->c(I)Lkn/g;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 49
    .line 50
    invoke-virtual {v3}, Lkn/c;->d()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x1

    .line 55
    sub-int/2addr v3, v4

    .line 56
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Lkn/c;->c(I)Lkn/g;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 63
    .line 64
    invoke-virtual {v6, v3}, Lkn/c;->f(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    iget-wide v8, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->L:J

    .line 69
    .line 70
    invoke-static {v8, v9}, Lcn/m0;->h0(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    invoke-static {v8, v9}, Lcn/m0;->S0(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v8

    .line 78
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Lkn/c;->f(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v10

    .line 84
    invoke-static {v2, v10, v11, v8, v9}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->I(Lkn/g;JJ)J

    .line 85
    .line 86
    .line 87
    move-result-wide v10

    .line 88
    invoke-static {v5, v6, v7, v8, v9}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H(Lkn/g;JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 93
    .line 94
    iget-boolean v3, v3, Lkn/c;->d:Z

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->M(Lkn/g;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_2

    .line 103
    .line 104
    move v3, v4

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    move v3, v1

    .line 107
    :goto_1
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 115
    .line 116
    iget-wide v14, v5, Lkn/c;->f:J

    .line 117
    .line 118
    cmp-long v5, v14, v12

    .line 119
    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    invoke-static {v14, v15}, Lcn/m0;->S0(J)J

    .line 123
    .line 124
    .line 125
    move-result-wide v14

    .line 126
    sub-long v14, v6, v14

    .line 127
    .line 128
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    :cond_3
    sub-long v5, v6, v10

    .line 133
    .line 134
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 135
    .line 136
    iget-boolean v14, v7, Lkn/c;->d:Z

    .line 137
    .line 138
    move-object/from16 v16, v2

    .line 139
    .line 140
    if-eqz v14, :cond_6

    .line 141
    .line 142
    iget-wide v1, v7, Lkn/c;->a:J

    .line 143
    .line 144
    cmp-long v1, v1, v12

    .line 145
    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    move v1, v4

    .line 149
    goto :goto_2

    .line 150
    :cond_4
    const/4 v1, 0x0

    .line 151
    :goto_2
    invoke-static {v1}, Lcn/a;->g(Z)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 155
    .line 156
    iget-wide v1, v1, Lkn/c;->a:J

    .line 157
    .line 158
    invoke-static {v1, v2}, Lcn/m0;->S0(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v1

    .line 162
    sub-long/2addr v8, v1

    .line 163
    sub-long/2addr v8, v10

    .line 164
    invoke-direct {v0, v8, v9, v5, v6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->g0(JJ)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 168
    .line 169
    iget-wide v1, v1, Lkn/c;->a:J

    .line 170
    .line 171
    invoke-static {v10, v11}, Lcn/m0;->u1(J)J

    .line 172
    .line 173
    .line 174
    move-result-wide v14

    .line 175
    add-long/2addr v1, v14

    .line 176
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->E:Lzm/q$g;

    .line 177
    .line 178
    iget-wide v14, v4, Lzm/q$g;->a:J

    .line 179
    .line 180
    invoke-static {v14, v15}, Lcn/m0;->S0(J)J

    .line 181
    .line 182
    .line 183
    move-result-wide v14

    .line 184
    sub-long/2addr v8, v14

    .line 185
    iget-wide v14, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->p:J

    .line 186
    .line 187
    const-wide/16 v17, 0x2

    .line 188
    .line 189
    div-long v12, v5, v17

    .line 190
    .line 191
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 192
    .line 193
    .line 194
    move-result-wide v12

    .line 195
    cmp-long v4, v8, v12

    .line 196
    .line 197
    move-wide/from16 v17, v1

    .line 198
    .line 199
    if-gez v4, :cond_5

    .line 200
    .line 201
    move-wide/from16 v26, v12

    .line 202
    .line 203
    :goto_3
    move-object/from16 v1, v16

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_5
    move-wide/from16 v26, v8

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_6
    move-object/from16 v1, v16

    .line 210
    .line 211
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    const-wide/16 v26, 0x0

    .line 217
    .line 218
    :goto_4
    iget-wide v1, v1, Lkn/g;->b:J

    .line 219
    .line 220
    invoke-static {v1, v2}, Lcn/m0;->S0(J)J

    .line 221
    .line 222
    .line 223
    move-result-wide v1

    .line 224
    sub-long v22, v10, v1

    .line 225
    .line 226
    new-instance v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$b;

    .line 227
    .line 228
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 229
    .line 230
    iget-wide v7, v2, Lkn/c;->a:J

    .line 231
    .line 232
    iget-wide v9, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->L:J

    .line 233
    .line 234
    iget v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->O:I

    .line 235
    .line 236
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->a()Lzm/q;

    .line 237
    .line 238
    .line 239
    move-result-object v29

    .line 240
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 241
    .line 242
    iget-boolean v11, v11, Lkn/c;->d:Z

    .line 243
    .line 244
    if-eqz v11, :cond_7

    .line 245
    .line 246
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->E:Lzm/q$g;

    .line 247
    .line 248
    :goto_5
    move-object/from16 v30, v11

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_7
    const/4 v11, 0x0

    .line 252
    goto :goto_5

    .line 253
    :goto_6
    move-object v14, v1

    .line 254
    move-wide v15, v7

    .line 255
    move-wide/from16 v19, v9

    .line 256
    .line 257
    move/from16 v21, v4

    .line 258
    .line 259
    move-wide/from16 v24, v5

    .line 260
    .line 261
    move-object/from16 v28, v2

    .line 262
    .line 263
    invoke-direct/range {v14 .. v30}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$b;-><init>(JJJIJJJLkn/c;Lzm/q;Lzm/q$g;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/a;->z(Lzm/a0;)V

    .line 267
    .line 268
    .line 269
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->h:Z

    .line 270
    .line 271
    if-nez v1, :cond_b

    .line 272
    .line 273
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 274
    .line 275
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->w:Ljava/lang/Runnable;

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    .line 279
    .line 280
    if-eqz v3, :cond_8

    .line 281
    .line 282
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 283
    .line 284
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->w:Ljava/lang/Runnable;

    .line 285
    .line 286
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 287
    .line 288
    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->L:J

    .line 289
    .line 290
    invoke-static {v4, v5}, Lcn/m0;->h0(J)J

    .line 291
    .line 292
    .line 293
    move-result-wide v4

    .line 294
    invoke-static {v3, v4, v5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->J(Lkn/c;J)J

    .line 295
    .line 296
    .line 297
    move-result-wide v3

    .line 298
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    .line 300
    .line 301
    :cond_8
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->I:Z

    .line 302
    .line 303
    if-eqz v1, :cond_9

    .line 304
    .line 305
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->f0()V

    .line 306
    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_9
    if-eqz p1, :cond_b

    .line 310
    .line 311
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 312
    .line 313
    iget-boolean v2, v1, Lkn/c;->d:Z

    .line 314
    .line 315
    if-eqz v2, :cond_b

    .line 316
    .line 317
    iget-wide v1, v1, Lkn/c;->e:J

    .line 318
    .line 319
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    cmp-long v3, v1, v3

    .line 325
    .line 326
    if-eqz v3, :cond_b

    .line 327
    .line 328
    const-wide/16 v3, 0x0

    .line 329
    .line 330
    cmp-long v5, v1, v3

    .line 331
    .line 332
    if-nez v5, :cond_a

    .line 333
    .line 334
    const-wide/16 v1, 0x1388

    .line 335
    .line 336
    :cond_a
    iget-wide v5, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->J:J

    .line 337
    .line 338
    add-long/2addr v5, v1

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 340
    .line 341
    .line 342
    move-result-wide v1

    .line 343
    sub-long/2addr v5, v1

    .line 344
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 345
    .line 346
    .line 347
    move-result-wide v1

    .line 348
    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->d0(J)V

    .line 349
    .line 350
    .line 351
    :cond_b
    :goto_7
    return-void
.end method

.method private a0(Lkn/o;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lkn/o;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "urn:mpeg:dash:utc:direct:2014"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_7

    .line 10
    .line 11
    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_6

    .line 27
    .line 28
    const-string v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_5

    .line 44
    .line 45
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string p1, "urn:mpeg:dash:utc:ntp:2014"

    .line 55
    .line 56
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_4

    .line 61
    .line 62
    const-string p1, "urn:mpeg:dash:utc:ntp:2012"

    .line 63
    .line 64
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 72
    .line 73
    const-string v0, "Unsupported UTC timing scheme"

    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->X(Ljava/io/IOException;)V

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    :goto_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->O()V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    :goto_1
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$h;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$h;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->c0(Lkn/o;Lio/bidmachine/media3/exoplayer/upstream/c$a;)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    :goto_2
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$d;

    .line 97
    .line 98
    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$d;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->c0(Lkn/o;Lio/bidmachine/media3/exoplayer/upstream/c$a;)V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->b0(Lkn/o;)V

    .line 106
    .line 107
    .line 108
    :goto_4
    return-void
.end method

.method private b0(Lkn/o;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p1, Lkn/o;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcn/m0;->a1(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->K:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    invoke-direct {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->Y(J)V
    :try_end_0
    .catch Lio/bidmachine/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->X(Ljava/io/IOException;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private c0(Lkn/o;Lio/bidmachine/media3/exoplayer/upstream/c$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkn/o;",
            "Lio/bidmachine/media3/exoplayer/upstream/c$a<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/c;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->z:Len/d;

    .line 4
    .line 5
    iget-object p1, p1, Lkn/o;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-direct {v0, v1, p1, v2, p2}, Lio/bidmachine/media3/exoplayer/upstream/c;-><init>(Len/d;Landroid/net/Uri;ILio/bidmachine/media3/exoplayer/upstream/c$a;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p0, p2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-direct {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->e0(Lio/bidmachine/media3/exoplayer/upstream/c;Lio/bidmachine/media3/exoplayer/upstream/Loader$b;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private d0(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->v:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private e0(Lio/bidmachine/media3/exoplayer/upstream/c;Lio/bidmachine/media3/exoplayer/upstream/Loader$b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/bidmachine/media3/exoplayer/upstream/c<",
            "TT;>;",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$b<",
            "Lio/bidmachine/media3/exoplayer/upstream/c<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->A:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->m(Lio/bidmachine/media3/exoplayer/upstream/Loader$e;Lio/bidmachine/media3/exoplayer/upstream/Loader$b;I)J

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private f0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->v:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->A:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->h()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->A:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->i()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->I:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->t:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->F:Landroid/net/Uri;

    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->I:Z

    .line 37
    .line 38
    new-instance v0, Len/g$b;

    .line 39
    .line 40
    invoke-direct {v0}, Len/g$b;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Len/g$b;->i(Landroid/net/Uri;)Len/g$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Len/g$b;->b(I)Len/g$b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Len/g$b;->a()Len/g;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lio/bidmachine/media3/exoplayer/upstream/c;

    .line 56
    .line 57
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->z:Len/d;

    .line 58
    .line 59
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->r:Lio/bidmachine/media3/exoplayer/upstream/c$a;

    .line 60
    .line 61
    const/4 v4, 0x4

    .line 62
    invoke-direct {v1, v2, v0, v4, v3}, Lio/bidmachine/media3/exoplayer/upstream/c;-><init>(Len/d;Len/g;ILio/bidmachine/media3/exoplayer/upstream/c$a;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->s:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$e;

    .line 66
    .line 67
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 68
    .line 69
    invoke-interface {v2, v4}, Lio/bidmachine/media3/exoplayer/upstream/b;->b(I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-direct {p0, v1, v0, v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->e0(Lio/bidmachine/media3/exoplayer/upstream/c;Lio/bidmachine/media3/exoplayer/upstream/Loader$b;I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception v1

    .line 78
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw v1
.end method

.method private g0(JJ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->a()Lzm/q;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lzm/q;->d:Lzm/q$g;

    .line 8
    .line 9
    invoke-static/range {p1 .. p2}, Lcn/m0;->u1(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v6

    .line 13
    iget-wide v2, v1, Lzm/q$g;->c:J

    .line 14
    .line 15
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    cmp-long v4, v2, v8

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    :goto_0
    move-wide v10, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 31
    .line 32
    iget-object v2, v2, Lkn/c;->j:Lkn/l;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-wide v2, v2, Lkn/l;->c:J

    .line 37
    .line 38
    cmp-long v4, v2, v8

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-wide v10, v6

    .line 48
    :goto_1
    sub-long v2, p1, p3

    .line 49
    .line 50
    invoke-static {v2, v3}, Lcn/m0;->u1(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    cmp-long v12, v2, v4

    .line 57
    .line 58
    if-gez v12, :cond_2

    .line 59
    .line 60
    cmp-long v12, v10, v4

    .line 61
    .line 62
    if-lez v12, :cond_2

    .line 63
    .line 64
    move-wide v2, v4

    .line 65
    :cond_2
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 66
    .line 67
    iget-wide v4, v4, Lkn/c;->c:J

    .line 68
    .line 69
    cmp-long v12, v4, v8

    .line 70
    .line 71
    if-eqz v12, :cond_3

    .line 72
    .line 73
    add-long/2addr v2, v4

    .line 74
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    :cond_3
    move-wide v4, v2

    .line 79
    iget-wide v2, v1, Lzm/q$g;->b:J

    .line 80
    .line 81
    cmp-long v12, v2, v8

    .line 82
    .line 83
    if-eqz v12, :cond_4

    .line 84
    .line 85
    invoke-static/range {v2 .. v7}, Lcn/m0;->q(JJJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 91
    .line 92
    iget-object v2, v2, Lkn/c;->j:Lkn/l;

    .line 93
    .line 94
    if-eqz v2, :cond_5

    .line 95
    .line 96
    iget-wide v2, v2, Lkn/l;->b:J

    .line 97
    .line 98
    cmp-long v12, v2, v8

    .line 99
    .line 100
    if-eqz v12, :cond_5

    .line 101
    .line 102
    invoke-static/range {v2 .. v7}, Lcn/m0;->q(JJJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    :cond_5
    :goto_2
    cmp-long v2, v4, v10

    .line 107
    .line 108
    if-lez v2, :cond_6

    .line 109
    .line 110
    move-wide v10, v4

    .line 111
    :cond_6
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->E:Lzm/q$g;

    .line 112
    .line 113
    iget-wide v2, v2, Lzm/q$g;->a:J

    .line 114
    .line 115
    cmp-long v6, v2, v8

    .line 116
    .line 117
    if-eqz v6, :cond_7

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_7
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 121
    .line 122
    iget-object v3, v2, Lkn/c;->j:Lkn/l;

    .line 123
    .line 124
    if-eqz v3, :cond_8

    .line 125
    .line 126
    iget-wide v6, v3, Lkn/l;->a:J

    .line 127
    .line 128
    cmp-long v3, v6, v8

    .line 129
    .line 130
    if-eqz v3, :cond_8

    .line 131
    .line 132
    move-wide v2, v6

    .line 133
    goto :goto_3

    .line 134
    :cond_8
    iget-wide v2, v2, Lkn/c;->g:J

    .line 135
    .line 136
    cmp-long v6, v2, v8

    .line 137
    .line 138
    if-eqz v6, :cond_9

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_9
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->o:J

    .line 142
    .line 143
    :goto_3
    cmp-long v6, v2, v4

    .line 144
    .line 145
    if-gez v6, :cond_a

    .line 146
    .line 147
    move-wide v2, v4

    .line 148
    :cond_a
    cmp-long v6, v2, v10

    .line 149
    .line 150
    if-lez v6, :cond_b

    .line 151
    .line 152
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->p:J

    .line 153
    .line 154
    const-wide/16 v6, 0x2

    .line 155
    .line 156
    div-long v6, p3, v6

    .line 157
    .line 158
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 159
    .line 160
    .line 161
    move-result-wide v2

    .line 162
    sub-long v2, p1, v2

    .line 163
    .line 164
    invoke-static {v2, v3}, Lcn/m0;->u1(J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v12

    .line 168
    move-wide v14, v4

    .line 169
    move-wide/from16 v16, v10

    .line 170
    .line 171
    invoke-static/range {v12 .. v17}, Lcn/m0;->q(JJJ)J

    .line 172
    .line 173
    .line 174
    move-result-wide v2

    .line 175
    :cond_b
    iget v6, v1, Lzm/q$g;->d:F

    .line 176
    .line 177
    const v7, -0x800001

    .line 178
    .line 179
    .line 180
    cmpl-float v12, v6, v7

    .line 181
    .line 182
    if-eqz v12, :cond_c

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_c
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 186
    .line 187
    iget-object v6, v6, Lkn/c;->j:Lkn/l;

    .line 188
    .line 189
    if-eqz v6, :cond_d

    .line 190
    .line 191
    iget v6, v6, Lkn/l;->d:F

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_d
    move v6, v7

    .line 195
    :goto_4
    iget v1, v1, Lzm/q$g;->e:F

    .line 196
    .line 197
    cmpl-float v12, v1, v7

    .line 198
    .line 199
    if-eqz v12, :cond_e

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_e
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 203
    .line 204
    iget-object v1, v1, Lkn/c;->j:Lkn/l;

    .line 205
    .line 206
    if-eqz v1, :cond_f

    .line 207
    .line 208
    iget v1, v1, Lkn/l;->e:F

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_f
    move v1, v7

    .line 212
    :goto_5
    cmpl-float v12, v6, v7

    .line 213
    .line 214
    if-nez v12, :cond_11

    .line 215
    .line 216
    cmpl-float v7, v1, v7

    .line 217
    .line 218
    if-nez v7, :cond_11

    .line 219
    .line 220
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 221
    .line 222
    iget-object v7, v7, Lkn/c;->j:Lkn/l;

    .line 223
    .line 224
    if-eqz v7, :cond_10

    .line 225
    .line 226
    iget-wide v12, v7, Lkn/l;->a:J

    .line 227
    .line 228
    cmp-long v7, v12, v8

    .line 229
    .line 230
    if-nez v7, :cond_11

    .line 231
    .line 232
    :cond_10
    const/high16 v6, 0x3f800000    # 1.0f

    .line 233
    .line 234
    move v1, v6

    .line 235
    :cond_11
    new-instance v7, Lzm/q$g$a;

    .line 236
    .line 237
    invoke-direct {v7}, Lzm/q$g$a;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7, v2, v3}, Lzm/q$g$a;->k(J)Lzm/q$g$a;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2, v4, v5}, Lzm/q$g$a;->i(J)Lzm/q$g$a;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v2, v10, v11}, Lzm/q$g$a;->g(J)Lzm/q$g$a;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v2, v6}, Lzm/q$g$a;->j(F)Lzm/q$g$a;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v2, v1}, Lzm/q$g$a;->h(F)Lzm/q$g$a;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lzm/q$g$a;->f()Lzm/q$g;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->E:Lzm/q$g;

    .line 265
    .line 266
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->I:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->z:Len/d;

    .line 6
    .line 7
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->A:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->k()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->A:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 15
    .line 16
    :cond_0
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->J:J

    .line 19
    .line 20
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->K:J

    .line 21
    .line 22
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->G:Landroid/net/Uri;

    .line 23
    .line 24
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->F:Landroid/net/Uri;

    .line 25
    .line 26
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->C:Ljava/io/IOException;

    .line 27
    .line 28
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 36
    .line 37
    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->L:J

    .line 43
    .line 44
    iput v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->M:I

    .line 45
    .line 46
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->N:J

    .line 47
    .line 48
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->n:Ljn/b;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljn/b;->i()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->l:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 59
    .line 60
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/i;->release()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method P(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->N:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    cmp-long v0, v0, p1

    .line 13
    .line 14
    if-gez v0, :cond_1

    .line 15
    .line 16
    :cond_0
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->N:J

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->w:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->f0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method R(Lio/bidmachine/media3/exoplayer/upstream/c;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/c<",
            "*>;JJ)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v14, Lsn/i;

    .line 5
    .line 6
    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 7
    .line 8
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->b:Len/g;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->d()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->b()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide v12

    .line 22
    move-object v2, v14

    .line 23
    move-wide/from16 v8, p2

    .line 24
    .line 25
    move-wide/from16 v10, p4

    .line 26
    .line 27
    invoke-direct/range {v2 .. v13}, Lsn/i;-><init>(JLen/g;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 31
    .line 32
    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 33
    .line 34
    invoke-interface {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/b;->a(J)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->q:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 38
    .line 39
    iget v1, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->c:I

    .line 40
    .line 41
    invoke-virtual {v2, v14, v1}, Lio/bidmachine/media3/exoplayer/source/s$a;->s(Lsn/i;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method S(Lio/bidmachine/media3/exoplayer/upstream/c;JJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/c<",
            "Lkn/c;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v14, p2

    .line 6
    .line 7
    new-instance v12, Lsn/i;

    .line 8
    .line 9
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 10
    .line 11
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/upstream/c;->b:Len/g;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->d()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->b()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->a()J

    .line 22
    .line 23
    .line 24
    move-result-wide v16

    .line 25
    move-object v2, v12

    .line 26
    move-wide/from16 v8, p2

    .line 27
    .line 28
    move-wide/from16 v10, p4

    .line 29
    .line 30
    move-object v14, v12

    .line 31
    move-wide/from16 v12, v16

    .line 32
    .line 33
    invoke-direct/range {v2 .. v13}, Lsn/i;-><init>(JLen/g;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 37
    .line 38
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 39
    .line 40
    invoke-interface {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/b;->a(J)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->q:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 44
    .line 45
    iget v3, v0, Lio/bidmachine/media3/exoplayer/upstream/c;->c:I

    .line 46
    .line 47
    invoke-virtual {v2, v14, v3}, Lio/bidmachine/media3/exoplayer/source/s$a;->v(Lsn/i;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->c()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lkn/c;

    .line 55
    .line 56
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    move v3, v4

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v3}, Lkn/c;->d()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    :goto_0
    invoke-virtual {v2, v4}, Lkn/c;->c(I)Lkn/g;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-wide v5, v5, Lkn/g;->b:J

    .line 72
    .line 73
    move v7, v4

    .line 74
    :goto_1
    if-ge v7, v3, :cond_1

    .line 75
    .line 76
    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 77
    .line 78
    invoke-virtual {v8, v7}, Lkn/c;->c(I)Lkn/g;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    iget-wide v8, v8, Lkn/g;->b:J

    .line 83
    .line 84
    cmp-long v8, v8, v5

    .line 85
    .line 86
    if-gez v8, :cond_1

    .line 87
    .line 88
    add-int/lit8 v7, v7, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    iget-boolean v5, v2, Lkn/c;->d:Z

    .line 92
    .line 93
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    if-eqz v5, :cond_5

    .line 99
    .line 100
    sub-int/2addr v3, v7

    .line 101
    invoke-virtual {v2}, Lkn/c;->d()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-le v3, v5, :cond_2

    .line 106
    .line 107
    const-string v2, "DashMediaSource"

    .line 108
    .line 109
    const-string v3, "Loaded out of sync manifest"

    .line 110
    .line 111
    invoke-static {v2, v3}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->N:J

    .line 116
    .line 117
    cmp-long v3, v5, v8

    .line 118
    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    iget-wide v10, v2, Lkn/c;->h:J

    .line 122
    .line 123
    const-wide/16 v12, 0x3e8

    .line 124
    .line 125
    mul-long/2addr v10, v12

    .line 126
    cmp-long v3, v10, v5

    .line 127
    .line 128
    if-gtz v3, :cond_4

    .line 129
    .line 130
    const-string v3, "DashMediaSource"

    .line 131
    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v5, "Loaded stale dynamic manifest: "

    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-wide v5, v2, Lkn/c;->h:J

    .line 143
    .line 144
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v2, ", "

    .line 148
    .line 149
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->N:J

    .line 153
    .line 154
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v3, v2}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :goto_2
    iget v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->M:I

    .line 165
    .line 166
    add-int/lit8 v3, v2, 0x1

    .line 167
    .line 168
    iput v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->M:I

    .line 169
    .line 170
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 171
    .line 172
    iget v0, v0, Lio/bidmachine/media3/exoplayer/upstream/c;->c:I

    .line 173
    .line 174
    invoke-interface {v3, v0}, Lio/bidmachine/media3/exoplayer/upstream/b;->b(I)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-ge v2, v0, :cond_3

    .line 179
    .line 180
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->K()J

    .line 181
    .line 182
    .line 183
    move-result-wide v2

    .line 184
    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->d0(J)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_3
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DashManifestStaleException;

    .line 189
    .line 190
    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/dash/DashManifestStaleException;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object v0, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->C:Ljava/io/IOException;

    .line 194
    .line 195
    :goto_3
    return-void

    .line 196
    :cond_4
    iput v4, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->M:I

    .line 197
    .line 198
    :cond_5
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 199
    .line 200
    iget-boolean v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->I:Z

    .line 201
    .line 202
    iget-boolean v2, v2, Lkn/c;->d:Z

    .line 203
    .line 204
    and-int/2addr v2, v3

    .line 205
    iput-boolean v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->I:Z

    .line 206
    .line 207
    move-wide/from16 v2, p2

    .line 208
    .line 209
    sub-long v4, v2, p4

    .line 210
    .line 211
    iput-wide v4, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->J:J

    .line 212
    .line 213
    iput-wide v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->K:J

    .line 214
    .line 215
    iget v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->O:I

    .line 216
    .line 217
    add-int/2addr v2, v7

    .line 218
    iput v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->O:I

    .line 219
    .line 220
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->t:Ljava/lang/Object;

    .line 221
    .line 222
    monitor-enter v2

    .line 223
    :try_start_0
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/upstream/c;->b:Len/g;

    .line 224
    .line 225
    iget-object v3, v3, Len/g;->a:Landroid/net/Uri;

    .line 226
    .line 227
    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->F:Landroid/net/Uri;

    .line 228
    .line 229
    if-ne v3, v4, :cond_7

    .line 230
    .line 231
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 232
    .line 233
    iget-object v3, v3, Lkn/c;->k:Landroid/net/Uri;

    .line 234
    .line 235
    if-eqz v3, :cond_6

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->d()Landroid/net/Uri;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    :goto_4
    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->F:Landroid/net/Uri;

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    goto :goto_7

    .line 247
    :cond_7
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 249
    .line 250
    iget-boolean v2, v0, Lkn/c;->d:Z

    .line 251
    .line 252
    if-eqz v2, :cond_9

    .line 253
    .line 254
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->L:J

    .line 255
    .line 256
    cmp-long v2, v2, v8

    .line 257
    .line 258
    if-nez v2, :cond_9

    .line 259
    .line 260
    iget-object v0, v0, Lkn/c;->i:Lkn/o;

    .line 261
    .line 262
    if-eqz v0, :cond_8

    .line 263
    .line 264
    invoke-direct {v1, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->a0(Lkn/o;)V

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_8
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->O()V

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_9
    const/4 v0, 0x1

    .line 273
    invoke-direct {v1, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->Z(Z)V

    .line 274
    .line 275
    .line 276
    :goto_6
    return-void

    .line 277
    :goto_7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    throw v0
.end method

.method T(Lio/bidmachine/media3/exoplayer/upstream/c;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/c<",
            "Lkn/c;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$c;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    new-instance v15, Lsn/i;

    .line 8
    .line 9
    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 10
    .line 11
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->b:Len/g;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->d()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->b()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->a()J

    .line 22
    .line 23
    .line 24
    move-result-wide v13

    .line 25
    move-object v3, v15

    .line 26
    move-wide/from16 v9, p2

    .line 27
    .line 28
    move-wide/from16 v11, p4

    .line 29
    .line 30
    invoke-direct/range {v3 .. v14}, Lsn/i;-><init>(JLen/g;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lsn/j;

    .line 34
    .line 35
    iget v4, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->c:I

    .line 36
    .line 37
    invoke-direct {v3, v4}, Lsn/j;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v4, Lio/bidmachine/media3/exoplayer/upstream/b$c;

    .line 41
    .line 42
    move/from16 v5, p7

    .line 43
    .line 44
    invoke-direct {v4, v15, v3, v2, v5}, Lio/bidmachine/media3/exoplayer/upstream/b$c;-><init>(Lsn/i;Lsn/j;Ljava/io/IOException;I)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 48
    .line 49
    invoke-interface {v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/b;->d(Lio/bidmachine/media3/exoplayer/upstream/b$c;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    cmp-long v5, v3, v5

    .line 59
    .line 60
    if-nez v5, :cond_0

    .line 61
    .line 62
    sget-object v3, Lio/bidmachine/media3/exoplayer/upstream/Loader;->g:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v5, 0x0

    .line 66
    invoke-static {v5, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->g(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_0
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/upstream/Loader$c;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    xor-int/lit8 v5, v4, 0x1

    .line 75
    .line 76
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->q:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 77
    .line 78
    iget v7, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->c:I

    .line 79
    .line 80
    invoke-virtual {v6, v15, v7, v2, v5}, Lio/bidmachine/media3/exoplayer/source/s$a;->z(Lsn/i;ILjava/io/IOException;Z)V

    .line 81
    .line 82
    .line 83
    if-nez v4, :cond_1

    .line 84
    .line 85
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 86
    .line 87
    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 88
    .line 89
    invoke-interface {v2, v4, v5}, Lio/bidmachine/media3/exoplayer/upstream/b;->a(J)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-object v3
.end method

.method U(Lio/bidmachine/media3/exoplayer/upstream/c;JJI)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/c<",
            "Lkn/c;",
            ">;JJI)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p6

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v8, Lsn/i;

    .line 8
    .line 9
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 10
    .line 11
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/upstream/c;->b:Len/g;

    .line 12
    .line 13
    move-object v2, v8

    .line 14
    move-wide/from16 v6, p2

    .line 15
    .line 16
    invoke-direct/range {v2 .. v7}, Lsn/i;-><init>(JLen/g;J)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object/from16 v2, p0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v8, Lsn/i;

    .line 23
    .line 24
    iget-wide v10, v0, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 25
    .line 26
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/upstream/c;->b:Len/g;

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->d()Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v13

    .line 32
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->b()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->a()J

    .line 37
    .line 38
    .line 39
    move-result-wide v19

    .line 40
    move-object v9, v8

    .line 41
    move-wide/from16 v15, p2

    .line 42
    .line 43
    move-wide/from16 v17, p4

    .line 44
    .line 45
    invoke-direct/range {v9 .. v20}, Lsn/i;-><init>(JLen/g;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->q:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 50
    .line 51
    iget v0, v0, Lio/bidmachine/media3/exoplayer/upstream/c;->c:I

    .line 52
    .line 53
    invoke-virtual {v3, v8, v0, v1}, Lio/bidmachine/media3/exoplayer/source/s$a;->B(Lsn/i;II)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method V(Lio/bidmachine/media3/exoplayer/upstream/c;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/c<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v14, Lsn/i;

    .line 5
    .line 6
    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 7
    .line 8
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->b:Len/g;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->d()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->b()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide v12

    .line 22
    move-object v2, v14

    .line 23
    move-wide/from16 v8, p2

    .line 24
    .line 25
    move-wide/from16 v10, p4

    .line 26
    .line 27
    invoke-direct/range {v2 .. v13}, Lsn/i;-><init>(JLen/g;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 31
    .line 32
    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 33
    .line 34
    invoke-interface {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/b;->a(J)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->q:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 38
    .line 39
    iget v3, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->c:I

    .line 40
    .line 41
    invoke-virtual {v2, v14, v3}, Lio/bidmachine/media3/exoplayer/source/s$a;->v(Lsn/i;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->c()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    sub-long v1, v1, p2

    .line 55
    .line 56
    invoke-direct {p0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->Y(J)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method W(Lio/bidmachine/media3/exoplayer/upstream/c;JJLjava/io/IOException;)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/c<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$c;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->q:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 8
    .line 9
    new-instance v14, Lsn/i;

    .line 10
    .line 11
    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 12
    .line 13
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->b:Len/g;

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->d()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->b()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/upstream/c;->a()J

    .line 24
    .line 25
    .line 26
    move-result-wide v15

    .line 27
    move-object v4, v14

    .line 28
    move-wide/from16 v10, p2

    .line 29
    .line 30
    move-wide/from16 v12, p4

    .line 31
    .line 32
    move-object v0, v14

    .line 33
    move-wide v14, v15

    .line 34
    invoke-direct/range {v4 .. v15}, Lsn/i;-><init>(JLen/g;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 35
    .line 36
    .line 37
    iget v4, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->c:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    invoke-virtual {v3, v0, v4, v2, v5}, Lio/bidmachine/media3/exoplayer/source/s$a;->z(Lsn/i;ILjava/io/IOException;Z)V

    .line 41
    .line 42
    .line 43
    move-object/from16 v0, p0

    .line 44
    .line 45
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 46
    .line 47
    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    .line 48
    .line 49
    invoke-interface {v3, v4, v5}, Lio/bidmachine/media3/exoplayer/upstream/b;->a(J)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->X(Ljava/io/IOException;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lio/bidmachine/media3/exoplayer/upstream/Loader;->f:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 56
    .line 57
    return-object v1
.end method

.method public declared-synchronized a()Lzm/q;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->P:Lzm/q;
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

.method public declared-synchronized d(Lzm/q;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->P:Lzm/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public f(Lio/bidmachine/media3/exoplayer/source/r$b;Lwn/b;J)Lio/bidmachine/media3/exoplayer/source/q;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v16, p2

    .line 4
    .line 5
    move-object/from16 v1, p1

    .line 6
    .line 7
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->O:I

    .line 16
    .line 17
    sub-int/2addr v2, v3

    .line 18
    move v5, v2

    .line 19
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/a;->t(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/a;->r(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 24
    .line 25
    .line 26
    move-result-object v10

    .line 27
    new-instance v8, Lio/bidmachine/media3/exoplayer/dash/c;

    .line 28
    .line 29
    move-object v1, v8

    .line 30
    iget v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->O:I

    .line 31
    .line 32
    add-int/2addr v2, v3

    .line 33
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->H:Lkn/c;

    .line 34
    .line 35
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->n:Ljn/b;

    .line 36
    .line 37
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->j:Lio/bidmachine/media3/exoplayer/dash/a$a;

    .line 38
    .line 39
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->B:Len/o;

    .line 40
    .line 41
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->l:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 42
    .line 43
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 44
    .line 45
    iget-wide v13, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->L:J

    .line 46
    .line 47
    iget-object v15, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->y:Lwn/k;

    .line 48
    .line 49
    move-object/from16 p1, v8

    .line 50
    .line 51
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->k:Lsn/e;

    .line 52
    .line 53
    move-object/from16 v17, v8

    .line 54
    .line 55
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->x:Lio/bidmachine/media3/exoplayer/dash/f$b;

    .line 56
    .line 57
    move-object/from16 v18, v8

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/source/a;->w()Lhn/b2;

    .line 60
    .line 61
    .line 62
    move-result-object v19

    .line 63
    const/4 v8, 0x0

    .line 64
    move-object/from16 v20, p1

    .line 65
    .line 66
    invoke-direct/range {v1 .. v19}, Lio/bidmachine/media3/exoplayer/dash/c;-><init>(ILkn/c;Ljn/b;ILio/bidmachine/media3/exoplayer/dash/a$a;Len/o;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/source/s$a;JLwn/k;Lwn/b;Lsn/e;Lio/bidmachine/media3/exoplayer/dash/f$b;Lhn/b2;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 70
    .line 71
    move-object/from16 v2, v20

    .line 72
    .line 73
    iget v3, v2, Lio/bidmachine/media3/exoplayer/dash/c;->a:I

    .line 74
    .line 75
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object v2
.end method

.method public m(Lio/bidmachine/media3/exoplayer/source/q;)V
    .locals 1

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/dash/c;->C()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 7
    .line 8
    iget p1, p1, Lio/bidmachine/media3/exoplayer/dash/c;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->y:Lwn/k;

    .line 2
    .line 3
    invoke-interface {v0}, Lwn/k;->maybeThrowError()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected y(Len/o;)V
    .locals 2
    .param p1    # Len/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->B:Len/o;

    .line 2
    .line 3
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->l:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/a;->w()Lhn/b2;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/i;->c(Landroid/os/Looper;Lhn/b2;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->l:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 17
    .line 18
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/drm/i;->prepare()V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->h:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->Z(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->i:Len/d$a;

    .line 31
    .line 32
    invoke-interface {p1}, Len/d$a;->createDataSource()Len/d;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->z:Len/d;

    .line 37
    .line 38
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 39
    .line 40
    const-string v0, "DashMediaSource"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->A:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 46
    .line 47
    invoke-static {}, Lcn/m0;->A()Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->f0()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
