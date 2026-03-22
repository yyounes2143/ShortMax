.class public final Lio/bidmachine/media3/exoplayer/source/c0;
.super Lio/bidmachine/media3/exoplayer/source/a;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/b0$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/c0$b;
    }
.end annotation


# instance fields
.field private final h:Len/d$a;

.field private final i:Lio/bidmachine/media3/exoplayer/source/w$a;

.field private final j:Lio/bidmachine/media3/exoplayer/drm/i;

.field private final k:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private final l:I

.field private final m:I

.field private final n:Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final o:Lh7/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lxn/a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:J

.field private r:Z

.field private s:Z

.field private t:Len/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Lzm/q;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzm/q;Len/d$a;Lio/bidmachine/media3/exoplayer/source/w$a;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;IILio/bidmachine/media3/common/a;Lh7/n;)V
    .locals 0
    .param p8    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lh7/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzm/q;",
            "Len/d$a;",
            "Lio/bidmachine/media3/exoplayer/source/w$a;",
            "Lio/bidmachine/media3/exoplayer/drm/i;",
            "Lio/bidmachine/media3/exoplayer/upstream/b;",
            "II",
            "Lio/bidmachine/media3/common/a;",
            "Lh7/n<",
            "Lxn/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/a;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c0;->u:Lzm/q;

    .line 4
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/c0;->h:Len/d$a;

    .line 5
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/c0;->i:Lio/bidmachine/media3/exoplayer/source/w$a;

    .line 6
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/c0;->j:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 7
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/source/c0;->k:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 8
    iput p6, p0, Lio/bidmachine/media3/exoplayer/source/c0;->l:I

    .line 9
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/source/c0;->n:Lio/bidmachine/media3/common/a;

    .line 10
    iput p7, p0, Lio/bidmachine/media3/exoplayer/source/c0;->m:I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/c0;->p:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/c0;->q:J

    .line 13
    iput-object p9, p0, Lio/bidmachine/media3/exoplayer/source/c0;->o:Lh7/n;

    return-void
.end method

.method synthetic constructor <init>(Lzm/q;Len/d$a;Lio/bidmachine/media3/exoplayer/source/w$a;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;IILio/bidmachine/media3/common/a;Lh7/n;Lio/bidmachine/media3/exoplayer/source/c0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lio/bidmachine/media3/exoplayer/source/c0;-><init>(Lzm/q;Len/d$a;Lio/bidmachine/media3/exoplayer/source/w$a;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;IILio/bidmachine/media3/common/a;Lh7/n;)V

    return-void
.end method

.method private B()Lzm/q$h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/c0;->a()Lzm/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lzm/q;->b:Lzm/q$h;

    .line 6
    .line 7
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lzm/q$h;

    .line 12
    .line 13
    return-object v0
.end method

.method private C()V
    .locals 9

    .line 1
    new-instance v8, Lsn/u;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/c0;->q:J

    .line 4
    .line 5
    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/c0;->r:Z

    .line 6
    .line 7
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/source/c0;->s:Z

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/c0;->a()Lzm/q;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v0, v8

    .line 16
    invoke-direct/range {v0 .. v7}, Lsn/u;-><init>(JZZZLjava/lang/Object;Lzm/q;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/c0;->p:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/c0$a;

    .line 24
    .line 25
    invoke-direct {v0, p0, v8}, Lio/bidmachine/media3/exoplayer/source/c0$a;-><init>(Lio/bidmachine/media3/exoplayer/source/c0;Lzm/a0;)V

    .line 26
    .line 27
    .line 28
    move-object v8, v0

    .line 29
    :cond_0
    invoke-virtual {p0, v8}, Lio/bidmachine/media3/exoplayer/source/a;->z(Lzm/a0;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/c0;->j:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/i;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized a()Lzm/q;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/c0;->u:Lzm/q;
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
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c0;->u:Lzm/q;
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
    .locals 19

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    iget-object v0, v14, Lio/bidmachine/media3/exoplayer/source/c0;->h:Len/d$a;

    .line 4
    .line 5
    invoke-interface {v0}, Len/d$a;->createDataSource()Len/d;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v0, v14, Lio/bidmachine/media3/exoplayer/source/c0;->t:Len/o;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, v0}, Len/d;->c(Len/o;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/source/c0;->B()Lzm/q$h;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v17, Lio/bidmachine/media3/exoplayer/source/b0;

    .line 21
    .line 22
    iget-object v1, v0, Lzm/q$h;->a:Landroid/net/Uri;

    .line 23
    .line 24
    iget-object v3, v14, Lio/bidmachine/media3/exoplayer/source/c0;->i:Lio/bidmachine/media3/exoplayer/source/w$a;

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/source/a;->w()Lhn/b2;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v3, v4}, Lio/bidmachine/media3/exoplayer/source/w$a;->a(Lhn/b2;)Lio/bidmachine/media3/exoplayer/source/w;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v4, v14, Lio/bidmachine/media3/exoplayer/source/c0;->j:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 35
    .line 36
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/a;->r(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iget-object v6, v14, Lio/bidmachine/media3/exoplayer/source/c0;->k:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 41
    .line 42
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/a;->t(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget-object v10, v0, Lzm/q$h;->e:Ljava/lang/String;

    .line 47
    .line 48
    iget v11, v14, Lio/bidmachine/media3/exoplayer/source/c0;->l:I

    .line 49
    .line 50
    iget v12, v14, Lio/bidmachine/media3/exoplayer/source/c0;->m:I

    .line 51
    .line 52
    iget-object v13, v14, Lio/bidmachine/media3/exoplayer/source/c0;->n:Lio/bidmachine/media3/common/a;

    .line 53
    .line 54
    iget-wide v8, v0, Lzm/q$h;->i:J

    .line 55
    .line 56
    invoke-static {v8, v9}, Lcn/m0;->S0(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v15

    .line 60
    iget-object v0, v14, Lio/bidmachine/media3/exoplayer/source/c0;->o:Lh7/n;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-interface {v0}, Lh7/n;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lxn/a;

    .line 69
    .line 70
    :goto_0
    move-object/from16 v18, v0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    goto :goto_0

    .line 75
    :goto_1
    move-object/from16 v0, v17

    .line 76
    .line 77
    move-object/from16 v8, p0

    .line 78
    .line 79
    move-object/from16 v9, p2

    .line 80
    .line 81
    move-wide v14, v15

    .line 82
    move-object/from16 v16, v18

    .line 83
    .line 84
    invoke-direct/range {v0 .. v16}, Lio/bidmachine/media3/exoplayer/source/b0;-><init>(Landroid/net/Uri;Len/d;Lio/bidmachine/media3/exoplayer/source/w;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/source/s$a;Lio/bidmachine/media3/exoplayer/source/b0$c;Lwn/b;Ljava/lang/String;IILio/bidmachine/media3/common/a;JLxn/a;)V

    .line 85
    .line 86
    .line 87
    return-object v17
.end method

.method public m(Lio/bidmachine/media3/exoplayer/source/q;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/b0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/b0;->W()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    .line 1
    return-void
.end method

.method public o(JLao/j0;Z)V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/c0;->q:J

    .line 11
    .line 12
    :cond_0
    invoke-interface {p3}, Lao/j0;->isSeekable()Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/c0;->p:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/c0;->q:J

    .line 21
    .line 22
    cmp-long v0, v0, p1

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/c0;->r:Z

    .line 27
    .line 28
    if-ne v0, p3, :cond_1

    .line 29
    .line 30
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/c0;->s:Z

    .line 31
    .line 32
    if-ne v0, p4, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/c0;->q:J

    .line 36
    .line 37
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/source/c0;->r:Z

    .line 38
    .line 39
    iput-boolean p4, p0, Lio/bidmachine/media3/exoplayer/source/c0;->s:Z

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/c0;->p:Z

    .line 43
    .line 44
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/c0;->C()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method protected y(Len/o;)V
    .locals 2
    .param p1    # Len/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c0;->t:Len/o;

    .line 2
    .line 3
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c0;->j:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/Looper;

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/a;->w()Lhn/b2;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/i;->c(Landroid/os/Looper;Lhn/b2;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c0;->j:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 23
    .line 24
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/drm/i;->prepare()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/c0;->C()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
