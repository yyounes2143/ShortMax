.class final Lio/bidmachine/media3/exoplayer/source/b0;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/q;
.implements Lao/r;
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$b;
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$f;
.implements Lio/bidmachine/media3/exoplayer/source/f0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/b0$c;,
        Lio/bidmachine/media3/exoplayer/source/b0$e;,
        Lio/bidmachine/media3/exoplayer/source/b0$f;,
        Lio/bidmachine/media3/exoplayer/source/b0$d;,
        Lio/bidmachine/media3/exoplayer/source/b0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/source/q;",
        "Lao/r;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$b<",
        "Lio/bidmachine/media3/exoplayer/source/b0$b;",
        ">;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$f;",
        "Lio/bidmachine/media3/exoplayer/source/f0$d;"
    }
.end annotation


# static fields
.field private static final R:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final S:Lio/bidmachine/media3/common/a;


# instance fields
.field private A:Z

.field private B:Lio/bidmachine/media3/exoplayer/source/b0$f;

.field private C:Lao/j0;

.field private D:J

.field private E:Z

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Z

.field private L:J

.field private M:J

.field private N:Z

.field private O:I

.field private P:Z

.field private Q:Z

.field private final a:Landroid/net/Uri;

.field private final b:Len/d;

.field private final c:Lio/bidmachine/media3/exoplayer/drm/i;

.field private final d:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private final e:Lio/bidmachine/media3/exoplayer/source/s$a;

.field private final f:Lio/bidmachine/media3/exoplayer/drm/h$a;

.field private final g:Lio/bidmachine/media3/exoplayer/source/b0$c;

.field private final h:Lwn/b;

.field private final i:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final j:J

.field private final k:I

.field private final l:Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:J

.field private final n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

.field private final o:Lio/bidmachine/media3/exoplayer/source/w;

.field private final p:Lcn/k;

.field private final q:Ljava/lang/Runnable;

.field private final r:Ljava/lang/Runnable;

.field private final s:Landroid/os/Handler;

.field private t:Lio/bidmachine/media3/exoplayer/source/q$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Loo/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:[Lio/bidmachine/media3/exoplayer/source/f0;

.field private w:[Lio/bidmachine/media3/exoplayer/source/b0$e;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/bidmachine/media3/exoplayer/source/b0;->B()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lio/bidmachine/media3/exoplayer/source/b0;->R:Ljava/util/Map;

    .line 6
    .line 7
    new-instance v0, Lio/bidmachine/media3/common/a$b;

    .line 8
    .line 9
    invoke-direct {v0}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "icy"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "application/x-icy"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lio/bidmachine/media3/exoplayer/source/b0;->S:Lio/bidmachine/media3/common/a;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Len/d;Lio/bidmachine/media3/exoplayer/source/w;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/source/s$a;Lio/bidmachine/media3/exoplayer/source/b0$c;Lwn/b;Ljava/lang/String;IILio/bidmachine/media3/common/a;JLxn/a;)V
    .locals 4
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Lxn/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 2
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->a:Landroid/net/Uri;

    move-object v2, p2

    .line 3
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->b:Len/d;

    move-object v2, p4

    .line 4
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->c:Lio/bidmachine/media3/exoplayer/drm/i;

    move-object v2, p5

    .line 5
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->f:Lio/bidmachine/media3/exoplayer/drm/h$a;

    move-object v2, p6

    .line 6
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->d:Lio/bidmachine/media3/exoplayer/upstream/b;

    move-object v2, p7

    .line 7
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->e:Lio/bidmachine/media3/exoplayer/source/s$a;

    move-object v2, p8

    .line 8
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->g:Lio/bidmachine/media3/exoplayer/source/b0$c;

    move-object v2, p9

    .line 9
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->h:Lwn/b;

    move-object v2, p10

    .line 10
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->i:Ljava/lang/String;

    move v2, p11

    int-to-long v2, v2

    .line 11
    iput-wide v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->j:J

    move/from16 v2, p12

    .line 12
    iput v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->k:I

    move-object/from16 v2, p13

    .line 13
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->l:Lio/bidmachine/media3/common/a;

    if-eqz v1, :cond_0

    .line 14
    new-instance v2, Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-direct {v2, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Lxn/a;)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Lio/bidmachine/media3/exoplayer/upstream/Loader;

    const-string v1, "ProgressiveMediaPeriod"

    invoke-direct {v2, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    move-object v1, p3

    .line 16
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->o:Lio/bidmachine/media3/exoplayer/source/w;

    move-wide/from16 v1, p14

    .line 17
    iput-wide v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->m:J

    .line 18
    new-instance v1, Lcn/k;

    invoke-direct {v1}, Lcn/k;-><init>()V

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->p:Lcn/k;

    .line 19
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/x;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/source/x;-><init>(Lio/bidmachine/media3/exoplayer/source/b0;)V

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->q:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/y;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/source/y;-><init>(Lio/bidmachine/media3/exoplayer/source/b0;)V

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->r:Ljava/lang/Runnable;

    .line 21
    invoke-static {}, Lcn/m0;->A()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 22
    new-array v2, v1, [Lio/bidmachine/media3/exoplayer/source/b0$e;

    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->w:[Lio/bidmachine/media3/exoplayer/source/b0$e;

    .line 23
    new-array v1, v1, [Lio/bidmachine/media3/exoplayer/source/f0;

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    iput-wide v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    const/4 v1, 0x1

    .line 25
    iput v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->F:I

    return-void
.end method

.method private A(Lio/bidmachine/media3/exoplayer/source/b0$b;I)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->K:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lao/j0;->getDurationUs()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->y:Z

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->b0()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->N:Z

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->y:Z

    .line 39
    .line 40
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->H:Z

    .line 41
    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->L:J

    .line 45
    .line 46
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->O:I

    .line 47
    .line 48
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 49
    .line 50
    array-length v4, p2

    .line 51
    :goto_0
    if-ge v0, v4, :cond_2

    .line 52
    .line 53
    aget-object v5, p2, v0

    .line 54
    .line 55
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/source/f0;->Y()V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p1, v2, v3, v2, v3}, Lio/bidmachine/media3/exoplayer/source/b0$b;->f(Lio/bidmachine/media3/exoplayer/source/b0$b;JJ)V

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_3
    :goto_1
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->O:I

    .line 66
    .line 67
    return v1
.end method

.method private static B()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Icy-MetaData"

    .line 7
    .line 8
    const-string v2, "1"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private C()I
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/source/f0;->J()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    add-int/2addr v3, v4

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return v3
.end method

.method private D(Z)J
    .locals 5

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 5
    .line 6
    array-length v3, v3

    .line 7
    if-ge v2, v3, :cond_2

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->B:Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 12
    .line 13
    invoke-static {v3}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 18
    .line 19
    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/b0$f;->c:[Z

    .line 20
    .line 21
    aget-boolean v3, v3, v2

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 26
    .line 27
    aget-object v3, v3, v2

    .line 28
    .line 29
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/f0;->C()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-wide v0
.end method

.method private F()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method private synthetic H()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->t:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 6
    .line 7
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/source/g0$a;->f(Lio/bidmachine/media3/exoplayer/source/g0;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private synthetic I()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->K:Z

    .line 3
    .line 4
    return-void
.end method

.method private synthetic J(Lao/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/b0;->Y(Lao/j0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private K()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->Q:Z

    .line 4
    .line 5
    if-nez v2, :cond_c

    .line 6
    .line 7
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->y:Z

    .line 8
    .line 9
    if-nez v2, :cond_c

    .line 10
    .line 11
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->x:Z

    .line 12
    .line 13
    if-eqz v2, :cond_c

    .line 14
    .line 15
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 22
    .line 23
    array-length v3, v2

    .line 24
    move v4, v0

    .line 25
    :goto_0
    if-ge v4, v3, :cond_2

    .line 26
    .line 27
    aget-object v5, v2, v4

    .line 28
    .line 29
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/source/f0;->I()Lio/bidmachine/media3/common/a;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    add-int/2addr v4, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->p:Lcn/k;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcn/k;->c()Z

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 44
    .line 45
    array-length v2, v2

    .line 46
    new-array v3, v2, [Lzm/b0;

    .line 47
    .line 48
    new-array v4, v2, [Z

    .line 49
    .line 50
    move v5, v0

    .line 51
    :goto_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    if-ge v5, v2, :cond_a

    .line 57
    .line 58
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 59
    .line 60
    aget-object v8, v8, v5

    .line 61
    .line 62
    invoke-virtual {v8}, Lio/bidmachine/media3/exoplayer/source/f0;->I()Lio/bidmachine/media3/common/a;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-static {v8}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Lio/bidmachine/media3/common/a;

    .line 71
    .line 72
    iget-object v9, v8, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v9}, Lzm/u;->o(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-nez v10, :cond_4

    .line 79
    .line 80
    invoke-static {v9}, Lzm/u;->t(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    if-eqz v11, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move v11, v0

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    :goto_2
    move v11, v1

    .line 90
    :goto_3
    aput-boolean v11, v4, v5

    .line 91
    .line 92
    iget-boolean v12, p0, Lio/bidmachine/media3/exoplayer/source/b0;->z:Z

    .line 93
    .line 94
    or-int/2addr v11, v12

    .line 95
    iput-boolean v11, p0, Lio/bidmachine/media3/exoplayer/source/b0;->z:Z

    .line 96
    .line 97
    invoke-static {v9}, Lzm/u;->q(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    iget-wide v11, p0, Lio/bidmachine/media3/exoplayer/source/b0;->m:J

    .line 102
    .line 103
    cmp-long v6, v11, v6

    .line 104
    .line 105
    if-eqz v6, :cond_5

    .line 106
    .line 107
    if-ne v2, v1, :cond_5

    .line 108
    .line 109
    if-eqz v9, :cond_5

    .line 110
    .line 111
    move v6, v1

    .line 112
    goto :goto_4

    .line 113
    :cond_5
    move v6, v0

    .line 114
    :goto_4
    iput-boolean v6, p0, Lio/bidmachine/media3/exoplayer/source/b0;->A:Z

    .line 115
    .line 116
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/b0;->u:Loo/b;

    .line 117
    .line 118
    if-eqz v6, :cond_9

    .line 119
    .line 120
    if-nez v10, :cond_6

    .line 121
    .line 122
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/b0;->w:[Lio/bidmachine/media3/exoplayer/source/b0$e;

    .line 123
    .line 124
    aget-object v7, v7, v5

    .line 125
    .line 126
    iget-boolean v7, v7, Lio/bidmachine/media3/exoplayer/source/b0$e;->b:Z

    .line 127
    .line 128
    if-eqz v7, :cond_8

    .line 129
    .line 130
    :cond_6
    iget-object v7, v8, Lio/bidmachine/media3/common/a;->l:Lzm/t;

    .line 131
    .line 132
    if-nez v7, :cond_7

    .line 133
    .line 134
    new-instance v7, Lzm/t;

    .line 135
    .line 136
    new-array v9, v1, [Lzm/t$a;

    .line 137
    .line 138
    aput-object v6, v9, v0

    .line 139
    .line 140
    invoke-direct {v7, v9}, Lzm/t;-><init>([Lzm/t$a;)V

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_7
    new-array v9, v1, [Lzm/t$a;

    .line 145
    .line 146
    aput-object v6, v9, v0

    .line 147
    .line 148
    invoke-virtual {v7, v9}, Lzm/t;->a([Lzm/t$a;)Lzm/t;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    :goto_5
    invoke-virtual {v8}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v8, v7}, Lio/bidmachine/media3/common/a$b;->n0(Lzm/t;)Lio/bidmachine/media3/common/a$b;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-virtual {v7}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    :cond_8
    if-eqz v10, :cond_9

    .line 165
    .line 166
    iget v7, v8, Lio/bidmachine/media3/common/a;->h:I

    .line 167
    .line 168
    const/4 v9, -0x1

    .line 169
    if-ne v7, v9, :cond_9

    .line 170
    .line 171
    iget v7, v8, Lio/bidmachine/media3/common/a;->i:I

    .line 172
    .line 173
    if-ne v7, v9, :cond_9

    .line 174
    .line 175
    iget v7, v6, Loo/b;->a:I

    .line 176
    .line 177
    if-eq v7, v9, :cond_9

    .line 178
    .line 179
    invoke-virtual {v8}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    iget v6, v6, Loo/b;->a:I

    .line 184
    .line 185
    invoke-virtual {v7, v6}, Lio/bidmachine/media3/common/a$b;->Q(I)Lio/bidmachine/media3/common/a$b;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v6}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    :cond_9
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/b0;->c:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 194
    .line 195
    invoke-interface {v6, v8}, Lio/bidmachine/media3/exoplayer/drm/i;->a(Lio/bidmachine/media3/common/a;)I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    invoke-virtual {v8, v6}, Lio/bidmachine/media3/common/a;->c(I)Lio/bidmachine/media3/common/a;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    new-instance v7, Lzm/b0;

    .line 204
    .line 205
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    filled-new-array {v6}, [Lio/bidmachine/media3/common/a;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    invoke-direct {v7, v8, v9}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 214
    .line 215
    .line 216
    aput-object v7, v3, v5

    .line 217
    .line 218
    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/source/b0;->I:Z

    .line 219
    .line 220
    iget-boolean v6, v6, Lio/bidmachine/media3/common/a;->u:Z

    .line 221
    .line 222
    or-int/2addr v6, v7

    .line 223
    iput-boolean v6, p0, Lio/bidmachine/media3/exoplayer/source/b0;->I:Z

    .line 224
    .line 225
    add-int/2addr v5, v1

    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :cond_a
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 229
    .line 230
    new-instance v2, Lsn/x;

    .line 231
    .line 232
    invoke-direct {v2, v3}, Lsn/x;-><init>([Lzm/b0;)V

    .line 233
    .line 234
    .line 235
    invoke-direct {v0, v2, v4}, Lio/bidmachine/media3/exoplayer/source/b0$f;-><init>(Lsn/x;[Z)V

    .line 236
    .line 237
    .line 238
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->B:Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 239
    .line 240
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->A:Z

    .line 241
    .line 242
    if-eqz v0, :cond_b

    .line 243
    .line 244
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 245
    .line 246
    cmp-long v0, v2, v6

    .line 247
    .line 248
    if-nez v0, :cond_b

    .line 249
    .line 250
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->m:J

    .line 251
    .line 252
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 253
    .line 254
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/b0$a;

    .line 255
    .line 256
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 257
    .line 258
    invoke-direct {v0, p0, v2}, Lio/bidmachine/media3/exoplayer/source/b0$a;-><init>(Lio/bidmachine/media3/exoplayer/source/b0;Lao/j0;)V

    .line 259
    .line 260
    .line 261
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 262
    .line 263
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->g:Lio/bidmachine/media3/exoplayer/source/b0$c;

    .line 264
    .line 265
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 266
    .line 267
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 268
    .line 269
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/source/b0;->E:Z

    .line 270
    .line 271
    invoke-interface {v0, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/source/b0$c;->o(JLao/j0;Z)V

    .line 272
    .line 273
    .line 274
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->y:Z

    .line 275
    .line 276
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->t:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 277
    .line 278
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 283
    .line 284
    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/source/q$a;->d(Lio/bidmachine/media3/exoplayer/source/q;)V

    .line 285
    .line 286
    .line 287
    :cond_c
    :goto_6
    return-void
.end method

.method private L(I)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->B:Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 5
    .line 6
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0$f;->d:[Z

    .line 7
    .line 8
    aget-boolean v2, v1, p1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/b0$f;->a:Lsn/x;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lsn/x;->b(I)Lzm/b0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Lzm/b0;->a(I)Lio/bidmachine/media3/common/a;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->e:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 24
    .line 25
    iget-object v0, v5, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Lzm/u;->k(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v7, 0x0

    .line 32
    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/source/b0;->L:J

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-virtual/range {v3 .. v9}, Lio/bidmachine/media3/exoplayer/source/s$a;->j(ILio/bidmachine/media3/common/a;ILjava/lang/Object;J)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    aput-boolean v0, v1, p1

    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method private M(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->z()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->N:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->z:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->B:Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 13
    .line 14
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/b0$f;->b:[Z

    .line 15
    .line 16
    aget-boolean v0, v0, p1

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 21
    .line 22
    aget-object p1, v0, p1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/f0;->N(Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 35
    .line 36
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->N:Z

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->H:Z

    .line 40
    .line 41
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->L:J

    .line 42
    .line 43
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->O:I

    .line 44
    .line 45
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 46
    .line 47
    array-length v1, p1

    .line 48
    :goto_0
    if-ge v0, v1, :cond_2

    .line 49
    .line 50
    aget-object v2, p1, v0

    .line 51
    .line 52
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/f0;->Y()V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->t:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 59
    .line 60
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 65
    .line 66
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/g0$a;->f(Lio/bidmachine/media3/exoplayer/source/g0;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    return-void
.end method

.method private P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->s:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/a0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/source/a0;-><init>(Lio/bidmachine/media3/exoplayer/source/b0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private U(Lio/bidmachine/media3/exoplayer/source/b0$e;)Lao/o0;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->w:[Lio/bidmachine/media3/exoplayer/source/b0$e;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/source/b0$e;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 18
    .line 19
    aget-object p1, p1, v1

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->x:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "Extractor added new track (id="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget p1, p1, Lio/bidmachine/media3/exoplayer/source/b0$e;->a:I

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ") after finishing tracks."

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "ProgressiveMediaPeriod"

    .line 54
    .line 55
    invoke-static {v0, p1}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lao/m;

    .line 59
    .line 60
    invoke-direct {p1}, Lao/m;-><init>()V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_2
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->h:Lwn/b;

    .line 65
    .line 66
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->c:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 67
    .line 68
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->f:Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 69
    .line 70
    invoke-static {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/source/f0;->l(Lwn/b;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;)Lio/bidmachine/media3/exoplayer/source/f0;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/exoplayer/source/f0;->g0(Lio/bidmachine/media3/exoplayer/source/f0$d;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->w:[Lio/bidmachine/media3/exoplayer/source/b0$e;

    .line 78
    .line 79
    add-int/lit8 v3, v0, 0x1

    .line 80
    .line 81
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, [Lio/bidmachine/media3/exoplayer/source/b0$e;

    .line 86
    .line 87
    aput-object p1, v2, v0

    .line 88
    .line 89
    invoke-static {v2}, Lcn/m0;->j([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, [Lio/bidmachine/media3/exoplayer/source/b0$e;

    .line 94
    .line 95
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->w:[Lio/bidmachine/media3/exoplayer/source/b0$e;

    .line 96
    .line 97
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 98
    .line 99
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, [Lio/bidmachine/media3/exoplayer/source/f0;

    .line 104
    .line 105
    aput-object v1, p1, v0

    .line 106
    .line 107
    invoke-static {p1}, Lcn/m0;->j([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, [Lio/bidmachine/media3/exoplayer/source/f0;

    .line 112
    .line 113
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 114
    .line 115
    return-object v1
.end method

.method private X([ZJZ)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_4

    .line 7
    .line 8
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/f0;->F()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/source/b0;->A:Z

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/f0;->A()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/exoplayer/source/f0;->b0(I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v3, p2, p3, v1}, Lio/bidmachine/media3/exoplayer/source/f0;->c0(JZ)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :goto_1
    if-nez v3, :cond_3

    .line 39
    .line 40
    aget-boolean v3, p1, v2

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->z:Z

    .line 45
    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    :cond_2
    return v1

    .line 49
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const/4 p1, 0x1

    .line 53
    return p1
.end method

.method private Y(Lao/j0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->u:Loo/b;

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lao/j0$b;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lao/j0$b;-><init>(J)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 18
    .line 19
    invoke-interface {p1}, Lao/j0;->getDurationUs()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iput-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 24
    .line 25
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->K:Z

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Lao/j0;->getDurationUs()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    cmp-long v0, v4, v1

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    move v0, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_1
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->E:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const/4 v3, 0x7

    .line 46
    :cond_2
    iput v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->F:I

    .line 47
    .line 48
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->y:Z

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->g:Lio/bidmachine/media3/exoplayer/source/b0$c;

    .line 53
    .line 54
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 55
    .line 56
    invoke-interface {v1, v2, v3, p1, v0}, Lio/bidmachine/media3/exoplayer/source/b0$c;->o(JLao/j0;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->K()V

    .line 61
    .line 62
    .line 63
    :goto_2
    return-void
.end method

.method private a0()V
    .locals 10

    .line 1
    new-instance v7, Lio/bidmachine/media3/exoplayer/source/b0$b;

    .line 2
    .line 3
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->a:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->b:Len/d;

    .line 6
    .line 7
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/b0;->o:Lio/bidmachine/media3/exoplayer/source/w;

    .line 8
    .line 9
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/b0;->p:Lcn/k;

    .line 10
    .line 11
    move-object v0, v7

    .line 12
    move-object v1, p0

    .line 13
    move-object v5, p0

    .line 14
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/b0$b;-><init>(Lio/bidmachine/media3/exoplayer/source/b0;Landroid/net/Uri;Len/d;Lio/bidmachine/media3/exoplayer/source/w;Lao/r;Lcn/k;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->y:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->F()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 26
    .line 27
    .line 28
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 29
    .line 30
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmp-long v4, v0, v2

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 40
    .line 41
    cmp-long v0, v4, v0

    .line 42
    .line 43
    if-lez v0, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 47
    .line 48
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 52
    .line 53
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lao/j0;

    .line 58
    .line 59
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 60
    .line 61
    invoke-interface {v0, v4, v5}, Lao/j0;->getSeekPoints(J)Lao/j0$a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v0, v0, Lao/j0$a;->a:Lao/k0;

    .line 66
    .line 67
    iget-wide v0, v0, Lao/k0;->b:J

    .line 68
    .line 69
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 70
    .line 71
    invoke-static {v7, v0, v1, v4, v5}, Lio/bidmachine/media3/exoplayer/source/b0$b;->f(Lio/bidmachine/media3/exoplayer/source/b0$b;JJ)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 75
    .line 76
    array-length v1, v0

    .line 77
    const/4 v4, 0x0

    .line 78
    :goto_0
    if-ge v4, v1, :cond_1

    .line 79
    .line 80
    aget-object v5, v0, v4

    .line 81
    .line 82
    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 83
    .line 84
    invoke-virtual {v5, v8, v9}, Lio/bidmachine/media3/exoplayer/source/f0;->e0(J)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 91
    .line 92
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->C()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->O:I

    .line 97
    .line 98
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 99
    .line 100
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->d:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 101
    .line 102
    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->F:I

    .line 103
    .line 104
    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/b;->b(I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v7, p0, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->m(Lio/bidmachine/media3/exoplayer/upstream/Loader$e;Lio/bidmachine/media3/exoplayer/upstream/Loader$b;I)J

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private b0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->H:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->F()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public static synthetic k(Lio/bidmachine/media3/exoplayer/source/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lio/bidmachine/media3/exoplayer/source/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lio/bidmachine/media3/exoplayer/source/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->H()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lio/bidmachine/media3/exoplayer/source/b0;Lao/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/b0;->J(Lao/j0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lio/bidmachine/media3/exoplayer/source/b0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic p(Lio/bidmachine/media3/exoplayer/source/b0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->r:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lio/bidmachine/media3/exoplayer/source/b0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->s:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lio/bidmachine/media3/exoplayer/source/b0;Z)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/b0;->D(Z)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static synthetic s()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/source/b0;->R:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic t(Lio/bidmachine/media3/exoplayer/source/b0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lio/bidmachine/media3/exoplayer/source/b0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic v(Lio/bidmachine/media3/exoplayer/source/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w(Lio/bidmachine/media3/exoplayer/source/b0;)Loo/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->u:Loo/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Lio/bidmachine/media3/exoplayer/source/b0;Loo/b;)Loo/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->u:Loo/b;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic y()Lio/bidmachine/media3/common/a;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/source/b0;->S:Lio/bidmachine/media3/common/a;

    .line 2
    .line 3
    return-object v0
.end method

.method private z()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->y:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->B:Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 7
    .line 8
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 12
    .line 13
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method E()Lao/o0;
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/b0$e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/b0$e;-><init>(IZ)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/source/b0;->U(Lio/bidmachine/media3/exoplayer/source/b0$e;)Lao/o0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method G(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->b0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/f0;->N(Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method N()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->d:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 4
    .line 5
    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->F:I

    .line 6
    .line 7
    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/b;->b(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->j(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method O(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/f0;->Q()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->N()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Q(Lio/bidmachine/media3/exoplayer/source/b0$b;JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->b(Lio/bidmachine/media3/exoplayer/source/b0$b;)Len/n;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v14, Lsn/i;

    .line 7
    .line 8
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->c(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->d(Lio/bidmachine/media3/exoplayer/source/b0$b;)Len/g;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v1}, Len/n;->e()Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v1}, Len/n;->f()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-virtual {v1}, Len/n;->d()J

    .line 25
    .line 26
    .line 27
    move-result-wide v12

    .line 28
    move-object v2, v14

    .line 29
    move-wide/from16 v8, p2

    .line 30
    .line 31
    move-wide/from16 v10, p4

    .line 32
    .line 33
    invoke-direct/range {v2 .. v13}, Lsn/i;-><init>(JLen/g;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->d:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->c(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/b;->a(J)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->e:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 46
    .line 47
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->e(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v9

    .line 51
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    const/4 v5, -0x1

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    move-object v3, v14

    .line 59
    invoke-virtual/range {v2 .. v12}, Lio/bidmachine/media3/exoplayer/source/s$a;->t(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 60
    .line 61
    .line 62
    if-nez p6, :cond_1

    .line 63
    .line 64
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 65
    .line 66
    array-length v2, v1

    .line 67
    const/4 v3, 0x0

    .line 68
    :goto_0
    if-ge v3, v2, :cond_0

    .line 69
    .line 70
    aget-object v4, v1, v3

    .line 71
    .line 72
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/source/f0;->Y()V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->J:I

    .line 79
    .line 80
    if-lez v1, :cond_1

    .line 81
    .line 82
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->t:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 83
    .line 84
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 89
    .line 90
    invoke-interface {v1, p0}, Lio/bidmachine/media3/exoplayer/source/g0$a;->f(Lio/bidmachine/media3/exoplayer/source/g0;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    return-void
.end method

.method public R(Lio/bidmachine/media3/exoplayer/source/b0$b;JJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-direct {v0, v2}, Lio/bidmachine/media3/exoplayer/source/b0;->D(Z)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    const-wide/high16 v5, -0x8000000000000000L

    .line 24
    .line 25
    cmp-long v1, v3, v5

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-wide/16 v5, 0x2710

    .line 33
    .line 34
    add-long/2addr v3, v5

    .line 35
    :goto_0
    iput-wide v3, v0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 36
    .line 37
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->g:Lio/bidmachine/media3/exoplayer/source/b0$c;

    .line 38
    .line 39
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 40
    .line 41
    iget-boolean v6, v0, Lio/bidmachine/media3/exoplayer/source/b0;->E:Z

    .line 42
    .line 43
    invoke-interface {v1, v3, v4, v5, v6}, Lio/bidmachine/media3/exoplayer/source/b0$c;->o(JLao/j0;Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->b(Lio/bidmachine/media3/exoplayer/source/b0$b;)Len/n;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v15, Lsn/i;

    .line 51
    .line 52
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->c(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->d(Lio/bidmachine/media3/exoplayer/source/b0$b;)Len/g;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v1}, Len/n;->e()Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v1}, Len/n;->f()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v1}, Len/n;->d()J

    .line 69
    .line 70
    .line 71
    move-result-wide v13

    .line 72
    move-object v3, v15

    .line 73
    move-wide/from16 v9, p2

    .line 74
    .line 75
    move-wide/from16 v11, p4

    .line 76
    .line 77
    invoke-direct/range {v3 .. v14}, Lsn/i;-><init>(JLen/g;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->d:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 81
    .line 82
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->c(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    invoke-interface {v1, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/b;->a(J)V

    .line 87
    .line 88
    .line 89
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/source/b0;->e:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 90
    .line 91
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->e(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v10

    .line 95
    iget-wide v12, v0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 96
    .line 97
    const/4 v5, 0x1

    .line 98
    const/4 v6, -0x1

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v9, 0x0

    .line 102
    move-object v4, v15

    .line 103
    invoke-virtual/range {v3 .. v13}, Lio/bidmachine/media3/exoplayer/source/s$a;->w(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 104
    .line 105
    .line 106
    iput-boolean v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 107
    .line 108
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->t:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 109
    .line 110
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 115
    .line 116
    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/source/g0$a;->f(Lio/bidmachine/media3/exoplayer/source/g0;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public S(Lio/bidmachine/media3/exoplayer/source/b0$b;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->b(Lio/bidmachine/media3/exoplayer/source/b0$b;)Len/n;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v14, Lsn/i;

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->c(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->d(Lio/bidmachine/media3/exoplayer/source/b0$b;)Len/g;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v1}, Len/n;->e()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v1}, Len/n;->f()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v1}, Len/n;->d()J

    .line 26
    .line 27
    .line 28
    move-result-wide v12

    .line 29
    move-object v2, v14

    .line 30
    move-wide/from16 v8, p2

    .line 31
    .line 32
    move-wide/from16 v10, p4

    .line 33
    .line 34
    invoke-direct/range {v2 .. v13}, Lsn/i;-><init>(JLen/g;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lsn/j;

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->e(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-static {v2, v3}, Lcn/m0;->u1(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v21

    .line 47
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 48
    .line 49
    invoke-static {v2, v3}, Lcn/m0;->u1(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v23

    .line 53
    const/16 v16, 0x1

    .line 54
    .line 55
    const/16 v17, -0x1

    .line 56
    .line 57
    const/16 v18, 0x0

    .line 58
    .line 59
    const/16 v19, 0x0

    .line 60
    .line 61
    const/16 v20, 0x0

    .line 62
    .line 63
    move-object v15, v1

    .line 64
    invoke-direct/range {v15 .. v24}, Lsn/j;-><init>(IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->d:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 68
    .line 69
    new-instance v3, Lio/bidmachine/media3/exoplayer/upstream/b$c;

    .line 70
    .line 71
    move-object/from16 v13, p6

    .line 72
    .line 73
    move/from16 v4, p7

    .line 74
    .line 75
    invoke-direct {v3, v14, v1, v13, v4}, Lio/bidmachine/media3/exoplayer/upstream/b$c;-><init>(Lsn/i;Lsn/j;Ljava/io/IOException;I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/b;->d(Lio/bidmachine/media3/exoplayer/upstream/b$c;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    cmp-long v3, v1, v3

    .line 88
    .line 89
    if-nez v3, :cond_0

    .line 90
    .line 91
    sget-object v1, Lio/bidmachine/media3/exoplayer/upstream/Loader;->g:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 92
    .line 93
    move-object/from16 v15, p1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_0
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/source/b0;->C()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    iget v4, v0, Lio/bidmachine/media3/exoplayer/source/b0;->O:I

    .line 101
    .line 102
    if-le v3, v4, :cond_1

    .line 103
    .line 104
    const/4 v4, 0x1

    .line 105
    :goto_0
    move-object/from16 v15, p1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const/4 v4, 0x0

    .line 109
    goto :goto_0

    .line 110
    :goto_1
    invoke-direct {v0, v15, v3}, Lio/bidmachine/media3/exoplayer/source/b0;->A(Lio/bidmachine/media3/exoplayer/source/b0$b;I)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_2

    .line 115
    .line 116
    invoke-static {v4, v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->g(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    sget-object v1, Lio/bidmachine/media3/exoplayer/upstream/Loader;->f:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 122
    .line 123
    :goto_2
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$c;->c()Z

    .line 124
    .line 125
    .line 126
    move-result v16

    .line 127
    xor-int/lit8 v17, v16, 0x1

    .line 128
    .line 129
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->e:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 130
    .line 131
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->e(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 132
    .line 133
    .line 134
    move-result-wide v9

    .line 135
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 136
    .line 137
    const/4 v4, 0x1

    .line 138
    const/4 v5, -0x1

    .line 139
    const/4 v6, 0x0

    .line 140
    const/4 v7, 0x0

    .line 141
    const/4 v8, 0x0

    .line 142
    move-object v3, v14

    .line 143
    move-object/from16 v13, p6

    .line 144
    .line 145
    move/from16 v14, v17

    .line 146
    .line 147
    invoke-virtual/range {v2 .. v14}, Lio/bidmachine/media3/exoplayer/source/s$a;->y(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 148
    .line 149
    .line 150
    if-nez v16, :cond_3

    .line 151
    .line 152
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->d:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 153
    .line 154
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->c(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    invoke-interface {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/b;->a(J)V

    .line 159
    .line 160
    .line 161
    :cond_3
    return-object v1
.end method

.method public T(Lio/bidmachine/media3/exoplayer/source/b0$b;JJI)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->b(Lio/bidmachine/media3/exoplayer/source/b0$b;)Len/n;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez p6, :cond_0

    .line 8
    .line 9
    new-instance v1, Lsn/i;

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->c(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->d(Lio/bidmachine/media3/exoplayer/source/b0$b;)Len/g;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    move-object v2, v1

    .line 20
    move-wide/from16 v6, p2

    .line 21
    .line 22
    invoke-direct/range {v2 .. v7}, Lsn/i;-><init>(JLen/g;J)V

    .line 23
    .line 24
    .line 25
    move-object/from16 v19, v1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Lsn/i;

    .line 29
    .line 30
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->c(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v7

    .line 34
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->d(Lio/bidmachine/media3/exoplayer/source/b0$b;)Len/g;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    invoke-virtual {v1}, Len/n;->e()Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    invoke-virtual {v1}, Len/n;->f()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    invoke-virtual {v1}, Len/n;->d()J

    .line 47
    .line 48
    .line 49
    move-result-wide v16

    .line 50
    move-object v6, v2

    .line 51
    move-wide/from16 v12, p2

    .line 52
    .line 53
    move-wide/from16 v14, p4

    .line 54
    .line 55
    invoke-direct/range {v6 .. v17}, Lsn/i;-><init>(JLen/g;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 56
    .line 57
    .line 58
    move-object/from16 v19, v2

    .line 59
    .line 60
    :goto_0
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0;->e:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 61
    .line 62
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/b0$b;->e(Lio/bidmachine/media3/exoplayer/source/b0$b;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v25

    .line 66
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/source/b0;->D:J

    .line 67
    .line 68
    const/16 v20, 0x1

    .line 69
    .line 70
    const/16 v21, -0x1

    .line 71
    .line 72
    const/16 v22, 0x0

    .line 73
    .line 74
    const/16 v23, 0x0

    .line 75
    .line 76
    const/16 v24, 0x0

    .line 77
    .line 78
    move-object/from16 v18, v1

    .line 79
    .line 80
    move-wide/from16 v27, v2

    .line 81
    .line 82
    move/from16 v29, p6

    .line 83
    .line 84
    invoke-virtual/range {v18 .. v29}, Lio/bidmachine/media3/exoplayer/source/s$a;->C(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJI)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method V(ILgn/c0;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->b0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x3

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/b0;->L(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 13
    .line 14
    aget-object v0, v0, p1

    .line 15
    .line 16
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 17
    .line 18
    invoke-virtual {v0, p2, p3, p4, v2}, Lio/bidmachine/media3/exoplayer/source/f0;->V(Lgn/c0;Lio/bidmachine/media3/decoder/DecoderInputBuffer;IZ)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-ne p2, v1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/b0;->M(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return p2
.end method

.method public W()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/f0;->U()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->l(Lio/bidmachine/media3/exoplayer/upstream/Loader$f;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->s:Landroid/os/Handler;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->t:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->Q:Z

    .line 34
    .line 35
    return-void
.end method

.method Z(IJ)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->b0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/b0;->L(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 13
    .line 14
    aget-object v0, v0, p1

    .line 15
    .line 16
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 17
    .line 18
    invoke-virtual {v0, p2, p3, v1}, Lio/bidmachine/media3/exoplayer/source/f0;->H(JZ)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/source/f0;->h0(I)V

    .line 23
    .line 24
    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/b0;->M(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return p2
.end method

.method public a(JLgn/i0;)J
    .locals 9

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 5
    .line 6
    invoke-interface {v0}, Lao/j0;->isSeekable()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    return-wide p1

    .line 15
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Lao/j0;->getSeekPoints(J)Lao/j0$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, v0, Lao/j0$a;->a:Lao/k0;

    .line 22
    .line 23
    iget-wide v5, v1, Lao/k0;->a:J

    .line 24
    .line 25
    iget-object v0, v0, Lao/j0$a;->b:Lao/k0;

    .line 26
    .line 27
    iget-wide v7, v0, Lao/k0;->a:J

    .line 28
    .line 29
    move-object v2, p3

    .line 30
    move-wide v3, p1

    .line 31
    invoke-virtual/range {v2 .. v8}, Lgn/i0;->a(JJJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    return-wide p1
.end method

.method public b(Lio/bidmachine/media3/exoplayer/k1;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 2
    .line 3
    if-nez p1, :cond_3

    .line 4
    .line 5
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->h()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_3

    .line 12
    .line 13
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->N:Z

    .line 14
    .line 15
    if-nez p1, :cond_3

    .line 16
    .line 17
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->y:Z

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->l:Lio/bidmachine/media3/common/a;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :cond_0
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->J:I

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->p:Lcn/k;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcn/k;->e()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 37
    .line 38
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->i()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->a0()V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    :cond_2
    return p1

    .line 49
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public c(Lio/bidmachine/media3/common/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->s:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->q:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Lao/j0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->s:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/z;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/source/z;-><init>(Lio/bidmachine/media3/exoplayer/source/b0;Lao/j0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->z()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->F()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->B:Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 17
    .line 18
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/b0$f;->c:[Z

    .line 19
    .line 20
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_2

    .line 25
    .line 26
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 27
    .line 28
    aget-object v3, v3, v2

    .line 29
    .line 30
    aget-boolean v4, v0, v2

    .line 31
    .line 32
    invoke-virtual {v3, p1, p2, p3, v4}, Lio/bidmachine/media3/exoplayer/source/f0;->r(JZZ)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-void
.end method

.method public e(Lio/bidmachine/media3/exoplayer/source/q$a;J)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->t:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 4
    .line 5
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->l:Lio/bidmachine/media3/common/a;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->k:I

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-virtual {p0, p1, v2}, Lio/bidmachine/media3/exoplayer/source/b0;->track(II)Lao/o0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->l:Lio/bidmachine/media3/common/a;

    .line 17
    .line 18
    invoke-interface {p1, v2}, Lao/o0;->g(Lio/bidmachine/media3/common/a;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lao/e0;

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    new-array v4, v1, [J

    .line 26
    .line 27
    aput-wide v2, v4, v0

    .line 28
    .line 29
    new-array v1, v1, [J

    .line 30
    .line 31
    aput-wide v2, v1, v0

    .line 32
    .line 33
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v4, v1, v2, v3}, Lao/e0;-><init>([J[JJ)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/b0;->Y(Lao/j0;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->endTracks()V

    .line 45
    .line 46
    .line 47
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->p:Lcn/k;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcn/k;->e()Z

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->a0()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public endTracks()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->x:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->s:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->q:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic f(Lio/bidmachine/media3/exoplayer/upstream/Loader$e;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/b0$b;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/source/b0;->R(Lio/bidmachine/media3/exoplayer/source/b0$b;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(Lio/bidmachine/media3/exoplayer/upstream/Loader$e;JJI)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/b0$b;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/source/b0;->T(Lio/bidmachine/media3/exoplayer/source/b0$b;JJI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 11

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->z()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 5
    .line 6
    const-wide/high16 v1, -0x8000000000000000L

    .line 7
    .line 8
    if-nez v0, :cond_7

    .line 9
    .line 10
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->J:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->F()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->z:Z

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const-wide v4, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 35
    .line 36
    array-length v0, v0

    .line 37
    move v6, v3

    .line 38
    move-wide v7, v4

    .line 39
    :goto_0
    if-ge v6, v0, :cond_4

    .line 40
    .line 41
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/b0;->B:Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 42
    .line 43
    iget-object v10, v9, Lio/bidmachine/media3/exoplayer/source/b0$f;->b:[Z

    .line 44
    .line 45
    aget-boolean v10, v10, v6

    .line 46
    .line 47
    if-eqz v10, :cond_2

    .line 48
    .line 49
    iget-object v9, v9, Lio/bidmachine/media3/exoplayer/source/b0$f;->c:[Z

    .line 50
    .line 51
    aget-boolean v9, v9, v6

    .line 52
    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 56
    .line 57
    aget-object v9, v9, v6

    .line 58
    .line 59
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/source/f0;->M()Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_2

    .line 64
    .line 65
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 66
    .line 67
    aget-object v9, v9, v6

    .line 68
    .line 69
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/source/f0;->C()J

    .line 70
    .line 71
    .line 72
    move-result-wide v9

    .line 73
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move-wide v7, v4

    .line 81
    :cond_4
    cmp-long v0, v7, v4

    .line 82
    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    invoke-direct {p0, v3}, Lio/bidmachine/media3/exoplayer/source/b0;->D(Z)J

    .line 86
    .line 87
    .line 88
    move-result-wide v7

    .line 89
    :cond_5
    cmp-long v0, v7, v1

    .line 90
    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    iget-wide v7, p0, Lio/bidmachine/media3/exoplayer/source/b0;->L:J

    .line 94
    .line 95
    :cond_6
    return-wide v7

    .line 96
    :cond_7
    :goto_1
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->getBufferedPositionUs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getTrackGroups()Lsn/x;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->B:Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 5
    .line 6
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/b0$f;->a:Lsn/x;

    .line 7
    .line 8
    return-object v0
.end method

.method public bridge synthetic h(Lio/bidmachine/media3/exoplayer/upstream/Loader$e;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/b0$b;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/source/b0;->Q(Lio/bidmachine/media3/exoplayer/source/b0$b;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i([Lvn/q;[Z[Lsn/s;[ZJ)J
    .locals 8

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->B:Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 5
    .line 6
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/b0$f;->a:Lsn/x;

    .line 7
    .line 8
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/b0$f;->c:[Z

    .line 9
    .line 10
    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->J:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    array-length v5, p1

    .line 15
    const/4 v6, 0x1

    .line 16
    if-ge v4, v5, :cond_2

    .line 17
    .line 18
    aget-object v5, p3, v4

    .line 19
    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    aget-object v7, p1, v4

    .line 23
    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    aget-boolean v7, p2, v4

    .line 27
    .line 28
    if-nez v7, :cond_1

    .line 29
    .line 30
    :cond_0
    check-cast v5, Lio/bidmachine/media3/exoplayer/source/b0$d;

    .line 31
    .line 32
    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/source/b0$d;->a(Lio/bidmachine/media3/exoplayer/source/b0$d;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    aget-boolean v7, v0, v5

    .line 37
    .line 38
    invoke-static {v7}, Lcn/a;->g(Z)V

    .line 39
    .line 40
    .line 41
    iget v7, p0, Lio/bidmachine/media3/exoplayer/source/b0;->J:I

    .line 42
    .line 43
    sub-int/2addr v7, v6

    .line 44
    iput v7, p0, Lio/bidmachine/media3/exoplayer/source/b0;->J:I

    .line 45
    .line 46
    aput-boolean v3, v0, v5

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    aput-object v5, p3, v4

    .line 50
    .line 51
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->G:Z

    .line 55
    .line 56
    if-eqz p2, :cond_4

    .line 57
    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    :goto_1
    move p2, v6

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move p2, v3

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    const-wide/16 v4, 0x0

    .line 65
    .line 66
    cmp-long p2, p5, v4

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->A:Z

    .line 71
    .line 72
    if-nez p2, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :goto_2
    move v2, v3

    .line 76
    :goto_3
    array-length v4, p1

    .line 77
    if-ge v2, v4, :cond_9

    .line 78
    .line 79
    aget-object v4, p3, v2

    .line 80
    .line 81
    if-nez v4, :cond_8

    .line 82
    .line 83
    aget-object v4, p1, v2

    .line 84
    .line 85
    if-eqz v4, :cond_8

    .line 86
    .line 87
    invoke-interface {v4}, Lvn/t;->length()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-ne v5, v6, :cond_5

    .line 92
    .line 93
    move v5, v6

    .line 94
    goto :goto_4

    .line 95
    :cond_5
    move v5, v3

    .line 96
    :goto_4
    invoke-static {v5}, Lcn/a;->g(Z)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v4, v3}, Lvn/t;->getIndexInTrackGroup(I)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_6

    .line 104
    .line 105
    move v5, v6

    .line 106
    goto :goto_5

    .line 107
    :cond_6
    move v5, v3

    .line 108
    :goto_5
    invoke-static {v5}, Lcn/a;->g(Z)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v4}, Lvn/t;->getTrackGroup()Lzm/b0;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v1, v5}, Lsn/x;->d(Lzm/b0;)I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    aget-boolean v7, v0, v5

    .line 120
    .line 121
    xor-int/2addr v7, v6

    .line 122
    invoke-static {v7}, Lcn/a;->g(Z)V

    .line 123
    .line 124
    .line 125
    iget v7, p0, Lio/bidmachine/media3/exoplayer/source/b0;->J:I

    .line 126
    .line 127
    add-int/2addr v7, v6

    .line 128
    iput v7, p0, Lio/bidmachine/media3/exoplayer/source/b0;->J:I

    .line 129
    .line 130
    aput-boolean v6, v0, v5

    .line 131
    .line 132
    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/source/b0;->I:Z

    .line 133
    .line 134
    invoke-interface {v4}, Lvn/q;->getSelectedFormat()Lio/bidmachine/media3/common/a;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    iget-boolean v4, v4, Lio/bidmachine/media3/common/a;->u:Z

    .line 139
    .line 140
    or-int/2addr v4, v7

    .line 141
    iput-boolean v4, p0, Lio/bidmachine/media3/exoplayer/source/b0;->I:Z

    .line 142
    .line 143
    new-instance v4, Lio/bidmachine/media3/exoplayer/source/b0$d;

    .line 144
    .line 145
    invoke-direct {v4, p0, v5}, Lio/bidmachine/media3/exoplayer/source/b0$d;-><init>(Lio/bidmachine/media3/exoplayer/source/b0;I)V

    .line 146
    .line 147
    .line 148
    aput-object v4, p3, v2

    .line 149
    .line 150
    aput-boolean v6, p4, v2

    .line 151
    .line 152
    if-nez p2, :cond_8

    .line 153
    .line 154
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 155
    .line 156
    aget-object p2, p2, v5

    .line 157
    .line 158
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/f0;->F()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_7

    .line 163
    .line 164
    invoke-virtual {p2, p5, p6, v6}, Lio/bidmachine/media3/exoplayer/source/f0;->c0(JZ)Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-nez p2, :cond_7

    .line 169
    .line 170
    move p2, v6

    .line 171
    goto :goto_6

    .line 172
    :cond_7
    move p2, v3

    .line 173
    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_9
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->J:I

    .line 177
    .line 178
    if-nez p1, :cond_c

    .line 179
    .line 180
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->N:Z

    .line 181
    .line 182
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->H:Z

    .line 183
    .line 184
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->I:Z

    .line 185
    .line 186
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 187
    .line 188
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->i()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_b

    .line 193
    .line 194
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 195
    .line 196
    array-length p2, p1

    .line 197
    :goto_7
    if-ge v3, p2, :cond_a

    .line 198
    .line 199
    aget-object p3, p1, v3

    .line 200
    .line 201
    invoke-virtual {p3}, Lio/bidmachine/media3/exoplayer/source/f0;->s()V

    .line 202
    .line 203
    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_a
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 208
    .line 209
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->e()V

    .line 210
    .line 211
    .line 212
    goto :goto_a

    .line 213
    :cond_b
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 214
    .line 215
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 216
    .line 217
    array-length p2, p1

    .line 218
    :goto_8
    if-ge v3, p2, :cond_e

    .line 219
    .line 220
    aget-object p3, p1, v3

    .line 221
    .line 222
    invoke-virtual {p3}, Lio/bidmachine/media3/exoplayer/source/f0;->Y()V

    .line 223
    .line 224
    .line 225
    add-int/lit8 v3, v3, 0x1

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_c
    if-eqz p2, :cond_e

    .line 229
    .line 230
    invoke-virtual {p0, p5, p6}, Lio/bidmachine/media3/exoplayer/source/b0;->seekToUs(J)J

    .line 231
    .line 232
    .line 233
    move-result-wide p5

    .line 234
    :goto_9
    array-length p1, p3

    .line 235
    if-ge v3, p1, :cond_e

    .line 236
    .line 237
    aget-object p1, p3, v3

    .line 238
    .line 239
    if-eqz p1, :cond_d

    .line 240
    .line 241
    aput-boolean v6, p4, v3

    .line 242
    .line 243
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 244
    .line 245
    goto :goto_9

    .line 246
    :cond_e
    :goto_a
    iput-boolean v6, p0, Lio/bidmachine/media3/exoplayer/source/b0;->G:Z

    .line 247
    .line 248
    return-wide p5
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->p:Lcn/k;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcn/k;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public bridge synthetic j(Lio/bidmachine/media3/exoplayer/upstream/Loader$e;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/b0$b;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lio/bidmachine/media3/exoplayer/source/b0;->S(Lio/bidmachine/media3/exoplayer/source/b0$b;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public maybeThrowPrepareError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->N()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->y:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public onLoaderReleased()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/f0;->W()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->o:Lio/bidmachine/media3/exoplayer/source/w;

    .line 16
    .line 17
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/w;->release()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public readDiscontinuity()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->I:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->I:Z

    .line 7
    .line 8
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->L:J

    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->H:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->C()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->O:I

    .line 24
    .line 25
    if-le v0, v2, :cond_2

    .line 26
    .line 27
    :cond_1
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->H:Z

    .line 28
    .line 29
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->L:J

    .line 30
    .line 31
    return-wide v0

    .line 32
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->B:Lio/bidmachine/media3/exoplayer/source/b0$f;

    .line 5
    .line 6
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/b0$f;->b:[Z

    .line 7
    .line 8
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->C:Lao/j0;

    .line 9
    .line 10
    invoke-interface {v1}, Lao/j0;->isSeekable()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 p1, 0x0

    .line 18
    .line 19
    :goto_0
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->H:Z

    .line 21
    .line 22
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/b0;->L:J

    .line 23
    .line 24
    cmp-long v2, v2, p1

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v2, v1

    .line 31
    :goto_1
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->L:J

    .line 32
    .line 33
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/b0;->F()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 40
    .line 41
    return-wide p1

    .line 42
    :cond_2
    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->F:I

    .line 43
    .line 44
    const/4 v4, 0x7

    .line 45
    if-eq v3, v4, :cond_4

    .line 46
    .line 47
    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 48
    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 52
    .line 53
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->i()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    :cond_3
    invoke-direct {p0, v0, p1, p2, v2}, Lio/bidmachine/media3/exoplayer/source/b0;->X([ZJZ)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    return-wide p1

    .line 66
    :cond_4
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->N:Z

    .line 67
    .line 68
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->M:J

    .line 69
    .line 70
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->P:Z

    .line 71
    .line 72
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/b0;->I:Z

    .line 73
    .line 74
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 75
    .line 76
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->i()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 83
    .line 84
    array-length v2, v0

    .line 85
    :goto_2
    if-ge v1, v2, :cond_5

    .line 86
    .line 87
    aget-object v3, v0, v1

    .line 88
    .line 89
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/f0;->s()V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 96
    .line 97
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->e()V

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->n:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 102
    .line 103
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->f()V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/b0;->v:[Lio/bidmachine/media3/exoplayer/source/f0;

    .line 107
    .line 108
    array-length v2, v0

    .line 109
    :goto_3
    if-ge v1, v2, :cond_7

    .line 110
    .line 111
    aget-object v3, v0, v1

    .line 112
    .line 113
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/f0;->Y()V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_7
    :goto_4
    return-wide p1
.end method

.method public track(II)Lao/o0;
    .locals 1

    .line 1
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/b0$e;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, p1, v0}, Lio/bidmachine/media3/exoplayer/source/b0$e;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lio/bidmachine/media3/exoplayer/source/b0;->U(Lio/bidmachine/media3/exoplayer/source/b0$e;)Lao/o0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
